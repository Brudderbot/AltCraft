cmake_minimum_required(VERSION 3.14)
project(AltCraft)
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
include(get_cpm)

if (NOT CMAKE_BUILD_TYPE)
    SET(CMAKE_BUILD_TYPE Release)
endif()


############
# LIBRARIES
############

find_package(Threads)


find_package(OpenGL REQUIRED)


CPMAddPackage("gh:g-truc/glm@0.9.9.8#0.9.9.8")


CPMAddPackage("gh:bombomby/optick@1.3.1.0#1.3.1.0")


CPMAddPackage(
    GITHUB_REPOSITORY Perlmint/glew-cmake
    VERSION 2.2.0
    GIT_TAG glew-cmake-2.2.0
    OPTIONS
    "glew-cmake_BUILD_SHARED OFF"
)


CPMAddPackage(
    NAME json
    GITHUB_REPOSITORY nlohmann/json
    VERSION 3.9.1
    OPTIONS
    "JSON_BuildTests OFF"
)


CPMAddPackage(
    NAME SDL2
    GITHUB_REPOSITORY libsdl-org/SDL
    VERSION 2.0.20
    GIT_TAG release-2.0.20
    OPTIONS
    "SDL_SHARED OFF"
    "SDL_STATIC ON"
    "SDL_LIBC ON"
)


CPMAddPackage(
    NAME easyloggingpp
    GITHUB_REPOSITORY amrayn/easyloggingpp
    VERSION 9.97.0
    OPTIONS "build_static_lib ON"
)
target_include_directories(easyloggingpp PUBLIC ${easyloggingpp_SOURCE_DIR}/src)
target_compile_definitions(easyloggingpp PUBLIC ELPP_THREAD_SAFE ELPP_FEATURE_PERFORMANCE_TRACKING)
if (LINUX)
    target_compile_definitions(easyloggingpp PUBLIC ELPP_FEATURE_CRASH_LOG ELPP_STL_LOGGING)
endif ()


CPMAddPackage(
    NAME stb
    GITHUB_REPOSITORY nothings/stb
    GIT_TAG ea2f937a01ce39795ab02b6c6e30173b4f1ed46c
    DOWNLOAD_ONLY TRUE
)
if(stb_ADDED)
    add_library(stb INTERFACE)
    target_include_directories(stb INTERFACE ${stb_SOURCE_DIR})
endif()


CPMAddPackage(
    NAME SDL2_net
    GITHUB_REPOSITORY libsdl-org/SDL_net
    VERSION 2.0.1
    GIT_TAG release-2.0.1
    DOWNLOAD_ONLY YES
)
if(SDL2_net_ADDED)
    file(GLOB SDL2_net_sources ${SDL2_net_SOURCE_DIR}/*.c)
    list(REMOVE_ITEM SDL2_net_sources "${SDL2_net_SOURCE_DIR}/chatd.c")
    add_library(SDL2_net STATIC ${SDL2_net_sources})
    target_link_libraries(SDL2_net SDL2-static)
    IF (WIN32)
        target_link_libraries(SDL2_net ws2_32 iphlpapi)
    ENDIF()
    target_include_directories(SDL2_net SYSTEM PUBLIC $<BUILD_INTERFACE:${SDL2_net_SOURCE_DIR}>)
endif()


CPMAddPackage(
    NAME zlib
    GITHUB_REPOSITORY madler/zlib
    VERSION 1.2.11
)
target_include_directories(zlibstatic PUBLIC ${zlib_SOURCE_DIR})
target_include_directories(zlibstatic PUBLIC ${zlib_BINARY_DIR})


CPMAddPackage(
    NAME Lua
    GITHUB_REPOSITORY lua/lua
    VERSION 5.4.3
    DOWNLOAD_ONLY YES
)
if(Lua_ADDED)
    file(GLOB Lua_sources ${Lua_SOURCE_DIR}/*.c)
    list(REMOVE_ITEM Lua_sources "${Lua_SOURCE_DIR}/lua.c" "${Lua_SOURCE_DIR}/luac.c" "${Lua_SOURCE_DIR}/onelua.c")
    add_library(lua STATIC ${Lua_sources})
    target_include_directories(lua SYSTEM PUBLIC $<BUILD_INTERFACE:${Lua_SOURCE_DIR}>)
    install(TARGETS lua
		EXPORT lua-targets
		LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
		ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
		RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
	)
    install(EXPORT lua-targets DESTINATION ${LIB_INSTALL_DIR}/lua_ac/cmake)
    export(EXPORT lua-targets)
endif()


CPMAddPackage(
    NAME sol2
    GITHUB_REPOSITORY ThePhD/sol2
    VERSION 3.2.2
    DOWNLOAD_ONLY YES
)
if(sol2_ADDED)
    add_library(sol2 INTERFACE IMPORTED)
    target_include_directories(sol2 SYSTEM INTERFACE ${sol2_SOURCE_DIR}/include)
    target_link_libraries(sol2 INTERFACE lua)
endif()


CPMAddPackage(
    NAME Freetype
    GITHUB_REPOSITORY freetype/freetype
    VERSION 2.10.4
    GIT_TAG VER-2-10-4
    OPTIONS
    "CMAKE_DISABLE_FIND_PACKAGE_ZLIB TRUE"
    "CMAKE_DISABLE_FIND_PACKAGE_BZip2 TRUE"
    "CMAKE_DISABLE_FIND_PACKAGE_PNG TRUE"
    "CMAKE_DISABLE_FIND_PACKAGE_HarfBuzz TRUE"
    "CMAKE_DISABLE_FIND_PACKAGE_BrotliDec TRUE"
)
export(EXPORT freetype-targets)

CPMAddPackage(
    NAME RmlUi
    GITHUB_REPOSITORY mikke89/RmlUi
    VERSION 4.1
    GIT_TAG 4.1
    OPTIONS
    "BUILD_SHARED_LIBS OFF"
    "BUILD_TESTING OFF"
    "BUILD_SAMPLES OFF"
    "BUILD_LUA_BINDINGS ON"
)
target_link_libraries(RmlCore freetype lua)

###########
# AltCraft
###########

file(GLOB ac_manifest "./src/*.manifest")
file(GLOB ac_sources "./src/*.cpp")

add_executable(AltCraft ${ac_sources} ${ac_manifest})

target_compile_features(AltCraft PRIVATE cxx_std_17)

target_link_libraries(AltCraft
    Threads::Threads
    OpenGL::GL
    glm
    stb
    easyloggingpp
    libglew_static
    nlohmann_json::nlohmann_json
    SDL2-static
    SDL2main
    SDL2_net
    OptickCore
    zlibstatic
    sol2
    RmlLua
    RmlDebugger
)

set_target_properties(AltCraft OptickCore PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
)

set_target_properties(AltCraft PROPERTIES
    VS_DEBUGGER_WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/cwd/
    CXX_EXTENSIONS OFF
    CXX_STANDARD_REQUIRED ON
)

set_property(DIRECTORY ${CMAKE_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT AltCraft)

if (MSVC)
    target_compile_options(AltCraft PRIVATE /bigobj)
endif()
if(MSVC AND CMAKE_BUILD_TYPE MATCHES Release)
    set_target_properties(AltCraft PROPERTIES WIN32_EXECUTABLE ON)
endif()

file(DOWNLOAD https://github.com/googlefonts/opensans/raw/main/fonts/ttf/OpenSans-Regular.ttf ${CMAKE_SOURCE_DIR}/cwd/assets/altcraft/fonts/OpenSans-Regular.ttf)

