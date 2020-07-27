local function GetBlockInfo(blockPos)
    print("Request data for "..blockPos)
    local bi = BlockInfo.new()
    bi.collides = true
    bi.blockstate = ""
    bi.variant = ""
    return bi
end

local function RegisterBlocks()
    AC.RegisterBlock(BlockId.new(1,0), true, "stone", "normal")
    AC.RegisterBlock(BlockId.new(1,1), true, "granite", "normal")
    AC.RegisterBlock(BlockId.new(1,2), true, "smooth_granite", "normal")
    AC.RegisterBlock(BlockId.new(1,3), true, "diorite", "normal")
    AC.RegisterBlock(BlockId.new(1,4), true, "smooth_diorite", "normal")
    AC.RegisterBlock(BlockId.new(1,5), true, "andesite", "normal")
    AC.RegisterBlock(BlockId.new(1,6), true, "smooth_andesite", "normal")

    AC.RegisterBlock(BlockId.new(2,0), true, "grass", "snowy=false")

    AC.RegisterBlock(BlockId.new(3,0), true, "dirt", "normal")
    AC.RegisterBlock(BlockId.new(3,1), true, "coarse_dirt", "normal")
    AC.RegisterBlock(BlockId.new(3,2), true, "podzol", "snowy=false")

    AC.RegisterBlock(BlockId.new(4,0), true, "cobblestone", "normal")

    AC.RegisterBlock(BlockId.new(5,0), true, "oak_planks", "normal")
    AC.RegisterBlock(BlockId.new(5,1), true, "spruce_planks", "normal")
    AC.RegisterBlock(BlockId.new(5,2), true, "birch_planks", "normal")
    AC.RegisterBlock(BlockId.new(5,3), true, "jungle_planks", "normal")
    AC.RegisterBlock(BlockId.new(5,4), true, "acacia_planks", "normal")
    AC.RegisterBlock(BlockId.new(5,5), true, "dark_oak_planks", "normal")

    AC.RegisterBlock(BlockId.new(7,0), true, "bedrock", "normal")

    AC.RegisterBlock(BlockId.new(8,0), true, "water", "normal")

    AC.RegisterBlock(BlockId.new(9,0), true, "water", "normal")

    AC.RegisterBlock(BlockId.new(10,0), true, "lava", "normal")

    AC.RegisterBlock(BlockId.new(11,0), true, "lava", "normal")

    AC.RegisterBlock(BlockId.new(12,0), true, "sand", "normal")
    AC.RegisterBlock(BlockId.new(12,1), true, "red_sand", "normal")

    AC.RegisterBlock(BlockId.new(13,0), true, "gravel", "normal")

    AC.RegisterBlock(BlockId.new(14,0), true, "gold_ore", "normal")

    AC.RegisterBlock(BlockId.new(15,0), true, "iron_ore", "normal")

    AC.RegisterBlock(BlockId.new(16,0), true, "coal_ore", "normal")

    AC.RegisterBlock(BlockId.new(17,0), true, "oak_log", "axis=y")
    AC.RegisterBlock(BlockId.new(17,1), true, "spruce_log", "axis=y")
    AC.RegisterBlock(BlockId.new(17,2), true, "birch_log", "axis=y")
    AC.RegisterBlock(BlockId.new(17,3), true, "jungle_log", "axis=y")
    AC.RegisterBlock(BlockId.new(17,4), true, "oak_log", "axis=x")
    AC.RegisterBlock(BlockId.new(17,5), true, "spruce_log", "axis=x")
    AC.RegisterBlock(BlockId.new(17,6), true, "birch_log", "axis=x")
    AC.RegisterBlock(BlockId.new(17,7), true, "jungle_log", "axis=x")
    AC.RegisterBlock(BlockId.new(17,8), true, "oak_log", "axis=z")
    AC.RegisterBlock(BlockId.new(17,9), true, "spruce_log", "axis=z")
    AC.RegisterBlock(BlockId.new(17,10), true, "birch_log", "axis=z")
    AC.RegisterBlock(BlockId.new(17,11), true, "jungle_log", "axis=z")
    AC.RegisterBlock(BlockId.new(17,12), true, "oak_log", "axis=none")
    AC.RegisterBlock(BlockId.new(17,13), true, "spruce_log", "axis=none")
    AC.RegisterBlock(BlockId.new(17,14), true, "birch_log", "axis=none")
    AC.RegisterBlock(BlockId.new(17,15), true, "jungle_log", "axis=none")

    AC.RegisterBlock(BlockId.new(18,0), true, "oak_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,1), true, "spruce_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,2), true, "birch_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,3), true, "jungle_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,4), true, "oak_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,5), true, "spruce_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,6), true, "birch_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,7), true, "jungle_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,8), true, "oak_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,9), true, "spruce_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,10), true, "birch_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,11), true, "jungle_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,12), true, "oak_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,13), true, "spruce_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,14), true, "birch_leaves", "normal")
    AC.RegisterBlock(BlockId.new(18,15), true, "jungle_leaves", "normal")

    AC.RegisterBlock(BlockId.new(20,0), true, "glass", "normal")

    AC.RegisterBlock(BlockId.new(21,0), true, "lapis_ore", "normal")

    AC.RegisterBlock(BlockId.new(22,0), true, "lapis_block", "normal")

    AC.RegisterBlock(BlockId.new(24,0), true, "sandstone", "normal")
    AC.RegisterBlock(BlockId.new(24,1), true, "chiseled_sandstone", "normal")
    AC.RegisterBlock(BlockId.new(24,2), true, "smooth_sandstone", "normal")

    AC.RegisterBlock(BlockId.new(30,0), true, "web", "normal")

    AC.RegisterBlock(BlockId.new(31,0), false, "dead_bush", "normal")
    AC.RegisterBlock(BlockId.new(31,1), false, "tall_grass", "normal")
    AC.RegisterBlock(BlockId.new(31,2), false, "fern", "normal")

    AC.RegisterBlock(BlockId.new(32,0), false, "dead_bush", "normal")

    AC.RegisterBlock(BlockId.new(35,0), true, "white_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,1), true, "orange_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,2), true, "magenta_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,3), true, "light_blue_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,4), true, "yellow_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,5), true, "lime_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,6), true, "pink_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,7), true, "gray_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,8), true, "silver_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,9), true, "cyan_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,10), true, "purple_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,11), true, "blue_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,12), true, "brown_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,13), true, "green_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,14), true, "red_wool", "normal")
    AC.RegisterBlock(BlockId.new(35,15), true, "black_wool", "normal")

    AC.RegisterBlock(BlockId.new(37,0), false, "dandelion", "normal")

    AC.RegisterBlock(BlockId.new(38,0), false, "poppy", "normal")
    AC.RegisterBlock(BlockId.new(38,1), false, "blue_orchid", "normal")
    AC.RegisterBlock(BlockId.new(38,2), false, "allium", "normal")
    AC.RegisterBlock(BlockId.new(38,3), false, "houstonia", "normal")
    AC.RegisterBlock(BlockId.new(38,4), false, "red_tulip", "normal")
    AC.RegisterBlock(BlockId.new(38,5), false, "orange_tulip", "normal")
    AC.RegisterBlock(BlockId.new(38,6), false, "white_tulip", "normal")
    AC.RegisterBlock(BlockId.new(38,7), false, "pink_tulip", "normal")
    AC.RegisterBlock(BlockId.new(38,8), false, "oxeye_daisy", "normal")

    AC.RegisterBlock(BlockId.new(39,0), false, "brown_mushroom", "normal")

    AC.RegisterBlock(BlockId.new(40,0), false, "red_mushroom", "normal")

    AC.RegisterBlock(BlockId.new(41,0), true, "gold_block", "normal")

    AC.RegisterBlock(BlockId.new(44,0), true, "stone_slab", "half=bottom")
    AC.RegisterBlock(BlockId.new(44,8), true, "stone_slab", "half=top")

    AC.RegisterBlock(BlockId.new(45,0), true, "brick_block", "normal")

    AC.RegisterBlock(BlockId.new(46,0), true, "tnt", "normal")

    AC.RegisterBlock(BlockId.new(47,0), true, "bookshelf", "normal")

    AC.RegisterBlock(BlockId.new(48,0), true, "mossy_cobblestone", "normal")

    AC.RegisterBlock(BlockId.new(49,0), true, "obsidian", "normal")

    AC.RegisterBlock(BlockId.new(50,1), true, "torch", "facing=east")
    AC.RegisterBlock(BlockId.new(50,2), true, "torch", "facing=west")
    AC.RegisterBlock(BlockId.new(50,3), true, "torch", "facing=south")
    AC.RegisterBlock(BlockId.new(50,4), true, "torch", "facing=north")
    AC.RegisterBlock(BlockId.new(50,5), true, "torch", "facing=up")

    AC.RegisterBlock(BlockId.new(53,0), true, "oak_stairs", "facing=east,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(53,1), true, "oak_stairs", "facing=west,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(53,2), true, "oak_stairs", "facing=south,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(53,3), true, "oak_stairs", "facing=north,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(53,4), true, "oak_stairs", "facing=east,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,5), true, "oak_stairs", "facing=west,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,6), true, "oak_stairs", "facing=south,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,7), true, "oak_stairs", "facing=north,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,8), true, "oak_stairs", "facing=east,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,9), true, "oak_stairs", "facing=west,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,10), true, "oak_stairs", "facing=south,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,11), true, "oak_stairs", "facing=north,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,12), true, "oak_stairs", "facing=east,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,13), true, "oak_stairs", "facing=west,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,14), true, "oak_stairs", "facing=south,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(53,15), true, "oak_stairs", "facing=north,half=top,shape=straight")

    AC.RegisterBlock(BlockId.new(56,0), true, "diamond_ore", "normal")

    AC.RegisterBlock(BlockId.new(57,0), true, "diamond_block", "normal")

    AC.RegisterBlock(BlockId.new(59,0), true, "wheat", "age=0")
    AC.RegisterBlock(BlockId.new(59,1), true, "wheat", "age=1")
    AC.RegisterBlock(BlockId.new(59,2), true, "wheat", "age=2")
    AC.RegisterBlock(BlockId.new(59,3), true, "wheat", "age=3")
    AC.RegisterBlock(BlockId.new(59,4), true, "wheat", "age=4")
    AC.RegisterBlock(BlockId.new(59,5), true, "wheat", "age=5")
    AC.RegisterBlock(BlockId.new(59,6), true, "wheat", "age=6")
    AC.RegisterBlock(BlockId.new(59,7), true, "wheat", "age=7")
    AC.RegisterBlock(BlockId.new(59,8), true, "wheat", "age=8")
    AC.RegisterBlock(BlockId.new(59,9), true, "wheat", "age=9")
    AC.RegisterBlock(BlockId.new(59,10), true, "wheat", "age=10")
    AC.RegisterBlock(BlockId.new(59,11), true, "wheat", "age=11")
    AC.RegisterBlock(BlockId.new(59,12), true, "wheat", "age=12")
    AC.RegisterBlock(BlockId.new(59,13), true, "wheat", "age=13")
    AC.RegisterBlock(BlockId.new(59,14), true, "wheat", "age=14")
    AC.RegisterBlock(BlockId.new(59,15), true, "wheat", "age=15")

    AC.RegisterBlock(BlockId.new(60,0), true, "farmland", "moisture=7")
    AC.RegisterBlock(BlockId.new(60,1), true, "farmland", "moisture=6")
    AC.RegisterBlock(BlockId.new(60,2), true, "farmland", "moisture=5")
    AC.RegisterBlock(BlockId.new(60,3), true, "farmland", "moisture=4")
    AC.RegisterBlock(BlockId.new(60,4), true, "farmland", "moisture=3")
    AC.RegisterBlock(BlockId.new(60,5), true, "farmland", "moisture=2")
    AC.RegisterBlock(BlockId.new(60,6), true, "farmland", "moisture=1")
    AC.RegisterBlock(BlockId.new(60,7), true, "farmland", "moisture=0")
    AC.RegisterBlock(BlockId.new(60,8), true, "farmland", "moisture=-1")
    AC.RegisterBlock(BlockId.new(60,9), true, "farmland", "moisture=-2")
    AC.RegisterBlock(BlockId.new(60,10), true, "farmland", "moisture=-3")
    AC.RegisterBlock(BlockId.new(60,11), true, "farmland", "moisture=-4")
    AC.RegisterBlock(BlockId.new(60,12), true, "farmland", "moisture=-5")
    AC.RegisterBlock(BlockId.new(60,13), true, "farmland", "moisture=-6")
    AC.RegisterBlock(BlockId.new(60,14), true, "farmland", "moisture=-7")
    AC.RegisterBlock(BlockId.new(60,15), true, "farmland", "moisture=-8")

    AC.RegisterBlock(BlockId.new(61,0), true, "furnace", "")
    AC.RegisterBlock(BlockId.new(61,2), true, "furnace", "facing=north")
    AC.RegisterBlock(BlockId.new(61,3), true, "furnace", "facing=south")
    AC.RegisterBlock(BlockId.new(61,4), true, "furnace", "facing=west")
    AC.RegisterBlock(BlockId.new(61,5), true, "furnace", "facing=east")
    AC.RegisterBlock(BlockId.new(61,6), true, "furnace", "")

    AC.RegisterBlock(BlockId.new(64,0), true, "wooden_door", "facing=east,half=upper,hinge=right,open=false")
    AC.RegisterBlock(BlockId.new(64,1), true, "wooden_door", "facing=east,half=upper,hinge=left,open=false")
    AC.RegisterBlock(BlockId.new(64,2), true, "wooden_door", "facing=east,half=upper,hinge=right,open=false")
    AC.RegisterBlock(BlockId.new(64,3), true, "wooden_door", "facing=east,half=upper,hinge=left,open=false")
    AC.RegisterBlock(BlockId.new(64,4), true, "wooden_door", "facing=east,half=upper,hinge=right,open=false")
    AC.RegisterBlock(BlockId.new(64,5), true, "wooden_door", "facing=east,half=upper,hinge=left,open=false")
    AC.RegisterBlock(BlockId.new(64,6), true, "wooden_door", "facing=east,half=upper,hinge=right,open=false")
    AC.RegisterBlock(BlockId.new(64,7), true, "wooden_door", "facing=east,half=upper,hinge=left,open=false")
    AC.RegisterBlock(BlockId.new(64,8), true, "wooden_door", "facing=west,half=lower,hinge=left,open=false")
    AC.RegisterBlock(BlockId.new(64,10), true, "wooden_door", "facing=west,half=lower,hinge=left,open=true")
    AC.RegisterBlock(BlockId.new(64,12), true, "wooden_door", "facing=north,half=lower,hinge=left,open=false")
    AC.RegisterBlock(BlockId.new(64,14), true, "wooden_door", "facing=north,half=lower,hinge=left,open=true")

    AC.RegisterBlock(BlockId.new(67,0), true, "stone_stairs", "facing=east,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(67,1), true, "stone_stairs", "facing=west,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(67,2), true, "stone_stairs", "facing=south,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(67,3), true, "stone_stairs", "facing=north,half=bottom,shape=straight")
    AC.RegisterBlock(BlockId.new(67,4), true, "stone_stairs", "facing=east,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,5), true, "stone_stairs", "facing=west,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,6), true, "stone_stairs", "facing=south,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,7), true, "stone_stairs", "facing=north,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,8), true, "stone_stairs", "facing=east,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,9), true, "stone_stairs", "facing=west,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,10), true, "stone_stairs", "facing=south,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,11), true, "stone_stairs", "facing=north,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,12), true, "stone_stairs", "facing=east,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,13), true, "stone_stairs", "facing=west,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,14), true, "stone_stairs", "facing=south,half=top,shape=straight")
    AC.RegisterBlock(BlockId.new(67,15), true, "stone_stairs", "facing=north,half=top,shape=straight")

    AC.RegisterBlock(BlockId.new(69,0), true, "lever", "facing=down_x,powered=false")
    AC.RegisterBlock(BlockId.new(69,1), true, "lever", "facing=east,powered=false")
    AC.RegisterBlock(BlockId.new(69,2), true, "lever", "facing=west,powered=false")
    AC.RegisterBlock(BlockId.new(69,3), true, "lever", "facing=south,powered=false")
    AC.RegisterBlock(BlockId.new(69,4), true, "lever", "facing=north,powered=false")
    AC.RegisterBlock(BlockId.new(69,5), true, "lever", "facing=up_z,powered=false")
    AC.RegisterBlock(BlockId.new(69,6), true, "lever", "facing=up_x,powered=false")
    AC.RegisterBlock(BlockId.new(69,7), true, "lever", "facing=down_z,powered=false")
    AC.RegisterBlock(BlockId.new(69,8), true, "lever", "facing=down_x,powered=true")
    AC.RegisterBlock(BlockId.new(69,9), true, "lever", "facing=east,powered=true")
    AC.RegisterBlock(BlockId.new(69,10), true, "lever", "facing=west,powered=true")
    AC.RegisterBlock(BlockId.new(69,11), true, "lever", "facing=south,powered=true")
    AC.RegisterBlock(BlockId.new(69,12), true, "lever", "facing=north,powered=true")
    AC.RegisterBlock(BlockId.new(69,13), true, "lever", "facing=up_z,powered=true")
    AC.RegisterBlock(BlockId.new(69,14), true, "lever", "facing=up_x,powered=true")
    AC.RegisterBlock(BlockId.new(69,15), true, "lever", "facing=down_z,powered=true")

    AC.RegisterBlock(BlockId.new(73,0), true, "redstone_ore", "normal")

    AC.RegisterBlock(BlockId.new(74,0), true, "redstone_ore", "normal")

    AC.RegisterBlock(BlockId.new(78,0), true, "snow_layer", "layers=1")
    AC.RegisterBlock(BlockId.new(78,1), true, "snow_layer", "layers=2")
    AC.RegisterBlock(BlockId.new(78,2), true, "snow_layer", "layers=3")
    AC.RegisterBlock(BlockId.new(78,3), true, "snow_layer", "layers=4")
    AC.RegisterBlock(BlockId.new(78,4), true, "snow_layer", "layers=5")
    AC.RegisterBlock(BlockId.new(78,5), true, "snow_layer", "layers=6")
    AC.RegisterBlock(BlockId.new(78,6), true, "snow_layer", "layers=7")
    AC.RegisterBlock(BlockId.new(78,7), true, "snow_layer", "layers=8")

    AC.RegisterBlock(BlockId.new(79,0), true, "ice", "normal")

    AC.RegisterBlock(BlockId.new(80,0), true, "snow", "normal")

    AC.RegisterBlock(BlockId.new(81,0), true, "cactus", "normal")

    AC.RegisterBlock(BlockId.new(82,0), true, "clay", "normal")

    AC.RegisterBlock(BlockId.new(83,0), true, "reeds", "normal")

    AC.RegisterBlock(BlockId.new(86,0), true, "pumpkin", "facing=south")
    AC.RegisterBlock(BlockId.new(86,1), true, "pumpkin", "facing=west")
    AC.RegisterBlock(BlockId.new(86,2), true, "pumpkin", "facing=north")
    AC.RegisterBlock(BlockId.new(86,3), true, "pumpkin", "facing=east")

    AC.RegisterBlock(BlockId.new(87,0), true, "netherrack", "normal")

    AC.RegisterBlock(BlockId.new(88,0), true, "soul_sand", "normal")

    AC.RegisterBlock(BlockId.new(89,0), true, "glowstone", "normal")

    AC.RegisterBlock(BlockId.new(90,0), false, "portal", "axis=z")
    AC.RegisterBlock(BlockId.new(90,1), false, "portal", "axis=x")
    AC.RegisterBlock(BlockId.new(90,2), false, "portal", "axis=z")

    AC.RegisterBlock(BlockId.new(93,0), true, "unpowered_repeater", "delay=1,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(93,1), true, "unpowered_repeater", "delay=1,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(93,2), true, "unpowered_repeater", "delay=1,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(93,3), true, "unpowered_repeater", "delay=1,facing=north,locked=false")
    AC.RegisterBlock(BlockId.new(93,4), true, "unpowered_repeater", "delay=2,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(93,5), true, "unpowered_repeater", "delay=2,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(93,6), true, "unpowered_repeater", "delay=2,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(93,7), true, "unpowered_repeater", "delay=2,facing=north,locked=false")
    AC.RegisterBlock(BlockId.new(93,8), true, "unpowered_repeater", "delay=3,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(93,9), true, "unpowered_repeater", "delay=3,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(93,10), true, "unpowered_repeater", "delay=3,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(93,11), true, "unpowered_repeater", "delay=3,facing=north,locked=false")
    AC.RegisterBlock(BlockId.new(93,12), true, "unpowered_repeater", "delay=4,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(93,13), true, "unpowered_repeater", "delay=4,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(93,14), true, "unpowered_repeater", "delay=4,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(93,15), true, "unpowered_repeater", "delay=4,facing=north,locked=false")

    AC.RegisterBlock(BlockId.new(94,0), true, "powered_repeater", "delay=1,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(94,1), true, "powered_repeater", "delay=1,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(94,2), true, "powered_repeater", "delay=1,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(94,3), true, "powered_repeater", "delay=1,facing=north,locked=false")
    AC.RegisterBlock(BlockId.new(94,4), true, "powered_repeater", "delay=2,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(94,5), true, "powered_repeater", "delay=2,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(94,6), true, "powered_repeater", "delay=2,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(94,7), true, "powered_repeater", "delay=2,facing=north,locked=false")
    AC.RegisterBlock(BlockId.new(94,8), true, "powered_repeater", "delay=3,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(94,9), true, "powered_repeater", "delay=3,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(94,10), true, "powered_repeater", "delay=3,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(94,11), true, "powered_repeater", "delay=3,facing=north,locked=false")
    AC.RegisterBlock(BlockId.new(94,12), true, "powered_repeater", "delay=4,facing=east,locked=false")
    AC.RegisterBlock(BlockId.new(94,13), true, "powered_repeater", "delay=4,facing=south,locked=false")
    AC.RegisterBlock(BlockId.new(94,14), true, "powered_repeater", "delay=4,facing=west,locked=false")
    AC.RegisterBlock(BlockId.new(94,15), true, "powered_repeater", "delay=4,facing=north,locked=false")

    AC.RegisterBlock(BlockId.new(99,0), true, "brown_mushroom_block", "variant=all_inside")
    AC.RegisterBlock(BlockId.new(99,1), true, "brown_mushroom_block", "variant=north_west")
    AC.RegisterBlock(BlockId.new(99,2), true, "brown_mushroom_block", "variant=north")
    AC.RegisterBlock(BlockId.new(99,3), true, "brown_mushroom_block", "variant=north_east")
    AC.RegisterBlock(BlockId.new(99,4), true, "brown_mushroom_block", "variant=west")
    AC.RegisterBlock(BlockId.new(99,5), true, "brown_mushroom_block", "variant=center")
    AC.RegisterBlock(BlockId.new(99,6), true, "brown_mushroom_block", "variant=east")
    AC.RegisterBlock(BlockId.new(99,7), true, "brown_mushroom_block", "variant=south_west")
    AC.RegisterBlock(BlockId.new(99,8), true, "brown_mushroom_block", "variant=south")
    AC.RegisterBlock(BlockId.new(99,9), true, "brown_mushroom_block", "variant=south_east")
    AC.RegisterBlock(BlockId.new(99,10), true, "brown_mushroom_block", "variant=stem")
    AC.RegisterBlock(BlockId.new(99,11), true, "brown_mushroom_block", "variant=all_outside")
    AC.RegisterBlock(BlockId.new(99,12), true, "brown_mushroom_block", "variant=all_stem")
    AC.RegisterBlock(BlockId.new(99,13), true, "brown_mushroom_block", "")

    AC.RegisterBlock(BlockId.new(100,0), true, "red_mushroom_block", "variant=all_inside")
    AC.RegisterBlock(BlockId.new(100,1), true, "red_mushroom_block", "variant=north_west")
    AC.RegisterBlock(BlockId.new(100,2), true, "red_mushroom_block", "variant=north")
    AC.RegisterBlock(BlockId.new(100,3), true, "red_mushroom_block", "variant=north_east")
    AC.RegisterBlock(BlockId.new(100,4), true, "red_mushroom_block", "variant=west")
    AC.RegisterBlock(BlockId.new(100,5), true, "red_mushroom_block", "variant=center")
    AC.RegisterBlock(BlockId.new(100,6), true, "red_mushroom_block", "variant=east")
    AC.RegisterBlock(BlockId.new(100,7), true, "red_mushroom_block", "variant=south_west")
    AC.RegisterBlock(BlockId.new(100,8), true, "red_mushroom_block", "variant=south")
    AC.RegisterBlock(BlockId.new(100,9), true, "red_mushroom_block", "variant=south_east")
    AC.RegisterBlock(BlockId.new(100,10), true, "red_mushroom_block", "variant=stem")
    AC.RegisterBlock(BlockId.new(100,11), true, "red_mushroom_block", "variant=all_outside")
    AC.RegisterBlock(BlockId.new(100,12), true, "red_mushroom_block", "variant=all_stem")
    AC.RegisterBlock(BlockId.new(100,13), true, "red_mushroom_block", "")

    AC.RegisterBlock(BlockId.new(103,0), true, "melon_block", "normal")

    AC.RegisterBlock(BlockId.new(106,0), true, "vine", "east=false,north=false,south=false,up=true,west=false")
    AC.RegisterBlock(BlockId.new(106,1), true, "vine", "east=false,north=false,south=true,up=false,west=false")
    AC.RegisterBlock(BlockId.new(106,2), true, "vine", "east=false,north=false,south=false,up=false,west=true")
    AC.RegisterBlock(BlockId.new(106,3), true, "vine", "east=false,north=false,south=true,up=false,west=true")
    AC.RegisterBlock(BlockId.new(106,4), true, "vine", "east=false,north=true,south=false,up=false,west=false")
    AC.RegisterBlock(BlockId.new(106,5), true, "vine", "east=false,north=true,south=true,up=false,west=false")
    AC.RegisterBlock(BlockId.new(106,6), true, "vine", "east=false,north=true,south=false,up=false,west=true")
    AC.RegisterBlock(BlockId.new(106,7), true, "vine", "east=false,north=true,south=true,up=false,west=true")
    AC.RegisterBlock(BlockId.new(106,8), true, "vine", "east=true,north=false,south=false,up=false,west=false")
    AC.RegisterBlock(BlockId.new(106,9), true, "vine", "east=true,north=false,south=true,up=false,west=false")
    AC.RegisterBlock(BlockId.new(106,10), true, "vine", "east=true,north=false,south=false,up=false,west=true")
    AC.RegisterBlock(BlockId.new(106,11), true, "vine", "east=true,north=false,south=true,up=false,west=true")
    AC.RegisterBlock(BlockId.new(106,12), true, "vine", "east=true,north=true,south=false,up=false,west=false")
    AC.RegisterBlock(BlockId.new(106,13), true, "vine", "east=true,north=true,south=true,up=false,west=false")
    AC.RegisterBlock(BlockId.new(106,14), true, "vine", "east=true,north=true,south=false,up=false,west=true")
    AC.RegisterBlock(BlockId.new(106,15), true, "vine", "east=true,north=true,south=true,up=false,west=true")

    AC.RegisterBlock(BlockId.new(111,0), true, "waterlily", "normal")

    AC.RegisterBlock(BlockId.new(112,0), true, "nether_brick", "normal")

    AC.RegisterBlock(BlockId.new(121,0), true, "end_stone", "normal")

    AC.RegisterBlock(BlockId.new(129,0), true, "emerald_ore", "normal")

    AC.RegisterBlock(BlockId.new(133,0), true, "emerald_block", "normal")

    AC.RegisterBlock(BlockId.new(141,0), true, "carrots", "age=0")
    AC.RegisterBlock(BlockId.new(141,1), true, "carrots", "age=1")
    AC.RegisterBlock(BlockId.new(141,2), true, "carrots", "age=2")
    AC.RegisterBlock(BlockId.new(141,3), true, "carrots", "age=3")
    AC.RegisterBlock(BlockId.new(141,4), true, "carrots", "age=4")
    AC.RegisterBlock(BlockId.new(141,5), true, "carrots", "age=5")
    AC.RegisterBlock(BlockId.new(141,6), true, "carrots", "age=6")
    AC.RegisterBlock(BlockId.new(141,7), true, "carrots", "age=7")
    AC.RegisterBlock(BlockId.new(141,8), true, "carrots", "age=8")
    AC.RegisterBlock(BlockId.new(141,9), true, "carrots", "age=9")
    AC.RegisterBlock(BlockId.new(141,10), true, "carrots", "age=10")
    AC.RegisterBlock(BlockId.new(141,11), true, "carrots", "age=11")
    AC.RegisterBlock(BlockId.new(141,12), true, "carrots", "age=12")
    AC.RegisterBlock(BlockId.new(141,13), true, "carrots", "age=13")
    AC.RegisterBlock(BlockId.new(141,14), true, "carrots", "age=14")
    AC.RegisterBlock(BlockId.new(141,15), true, "carrots", "age=15")

    AC.RegisterBlock(BlockId.new(142,0), true, "potatoes", "age=0")
    AC.RegisterBlock(BlockId.new(142,1), true, "potatoes", "age=1")
    AC.RegisterBlock(BlockId.new(142,2), true, "potatoes", "age=2")
    AC.RegisterBlock(BlockId.new(142,3), true, "potatoes", "age=3")
    AC.RegisterBlock(BlockId.new(142,4), true, "potatoes", "age=4")
    AC.RegisterBlock(BlockId.new(142,5), true, "potatoes", "age=5")
    AC.RegisterBlock(BlockId.new(142,6), true, "potatoes", "age=6")
    AC.RegisterBlock(BlockId.new(142,7), true, "potatoes", "age=7")
    AC.RegisterBlock(BlockId.new(142,8), true, "potatoes", "age=8")
    AC.RegisterBlock(BlockId.new(142,9), true, "potatoes", "age=9")
    AC.RegisterBlock(BlockId.new(142,10), true, "potatoes", "age=10")
    AC.RegisterBlock(BlockId.new(142,11), true, "potatoes", "age=11")
    AC.RegisterBlock(BlockId.new(142,12), true, "potatoes", "age=12")
    AC.RegisterBlock(BlockId.new(142,13), true, "potatoes", "age=13")
    AC.RegisterBlock(BlockId.new(142,14), true, "potatoes", "age=14")
    AC.RegisterBlock(BlockId.new(142,15), true, "potatoes", "age=15")

    AC.RegisterBlock(BlockId.new(149,0), true, "unpowered_comparator", "facing=east,mode=compare,powered=false")
    AC.RegisterBlock(BlockId.new(149,1), true, "unpowered_comparator", "facing=south,mode=compare,powered=false")
    AC.RegisterBlock(BlockId.new(149,2), true, "unpowered_comparator", "facing=west,mode=compare,powered=false")
    AC.RegisterBlock(BlockId.new(149,3), true, "unpowered_comparator", "facing=north,mode=compare,powered=false")
    AC.RegisterBlock(BlockId.new(149,4), true, "unpowered_comparator", "facing=east,mode=subtract,powered=false")
    AC.RegisterBlock(BlockId.new(149,5), true, "unpowered_comparator", "facing=south,mode=subtract,powered=false")
    AC.RegisterBlock(BlockId.new(149,6), true, "unpowered_comparator", "facing=west,mode=subtract,powered=false")
    AC.RegisterBlock(BlockId.new(149,7), true, "unpowered_comparator", "facing=north,mode=subtract,powered=false")
    AC.RegisterBlock(BlockId.new(149,8), true, "unpowered_comparator", "facing=east,mode=compare,powered=true")
    AC.RegisterBlock(BlockId.new(149,9), true, "unpowered_comparator", "facing=south,mode=compare,powered=true")
    AC.RegisterBlock(BlockId.new(149,10), true, "unpowered_comparator", "facing=west,mode=compare,powered=true")
    AC.RegisterBlock(BlockId.new(149,11), true, "unpowered_comparator", "facing=north,mode=compare,powered=true")
    AC.RegisterBlock(BlockId.new(149,12), true, "unpowered_comparator", "facing=east,mode=subtract,powered=true")
    AC.RegisterBlock(BlockId.new(149,13), true, "unpowered_comparator", "facing=south,mode=subtract,powered=true")
    AC.RegisterBlock(BlockId.new(149,14), true, "unpowered_comparator", "facing=west,mode=subtract,powered=true")
    AC.RegisterBlock(BlockId.new(149,15), true, "unpowered_comparator", "facing=north,mode=subtract,powered=true")

    AC.RegisterBlock(BlockId.new(153,0), true, "quartz_ore", "normal")


    AC.RegisterBlock(BlockId.new(155,0), true, "quartz_block", "normal")

    AC.RegisterBlock(BlockId.new(161,0), true, "acacia_leaves", "normal")
    AC.RegisterBlock(BlockId.new(161,1), true, "dark_oak_leaves", "normal")
    AC.RegisterBlock(BlockId.new(161,4), true, "acacia_leaves", "normal")
    AC.RegisterBlock(BlockId.new(161,5), true, "dark_oak_leaves", "normal")
    AC.RegisterBlock(BlockId.new(161,8), true, "acacia_leaves", "normal")
    AC.RegisterBlock(BlockId.new(161,9), true, "dark_oak_leaves", "normal")
    AC.RegisterBlock(BlockId.new(161,12), true, "acacia_leaves", "normal")
    AC.RegisterBlock(BlockId.new(161,13), true, "dark_oak_leaves", "normal")

    AC.RegisterBlock(BlockId.new(162,0), true, "acacia_log", "axis=y")
    AC.RegisterBlock(BlockId.new(162,1), true, "dark_oak_log", "axis=y")
    AC.RegisterBlock(BlockId.new(162,4), true, "acacia_log", "axis=x")
    AC.RegisterBlock(BlockId.new(162,5), true, "dark_oak_log", "axis=x")
    AC.RegisterBlock(BlockId.new(162,8), true, "acacia_log", "axis=z")
    AC.RegisterBlock(BlockId.new(162,9), true, "dark_oak_log", "axis=z")
    AC.RegisterBlock(BlockId.new(162,12), true, "acacia_log", "axis=none")
    AC.RegisterBlock(BlockId.new(162,13), true, "dark_oak_log", "axis=none")

    AC.RegisterBlock(BlockId.new(175,0), false, "sunflower", "half=lower")
    AC.RegisterBlock(BlockId.new(175,1), false, "syringa", "half=lower")
    AC.RegisterBlock(BlockId.new(175,2), false, "double_grass", "half=lower")
    AC.RegisterBlock(BlockId.new(175,3), false, "double_fern", "half=lower")
    AC.RegisterBlock(BlockId.new(175,4), false, "double_rose", "half=lower")
    AC.RegisterBlock(BlockId.new(175,5), false, "paeonia", "half=lower")
    AC.RegisterBlock(BlockId.new(175,8), false, "sunflower", "half=upper")
    AC.RegisterBlock(BlockId.new(175,9), false, "syringa", "half=upper")
    AC.RegisterBlock(BlockId.new(175,10), false, "double_grass", "half=upper")
    AC.RegisterBlock(BlockId.new(175,11), false, "double_fern", "half=upper")
    AC.RegisterBlock(BlockId.new(175,12), false, "double_rose", "half=upper")
    AC.RegisterBlock(BlockId.new(175,13), false, "paeonia", "half=upper")

    AC.RegisterBlock(BlockId.new(207,0), true, "beetroots", "age=0")
    AC.RegisterBlock(BlockId.new(207,1), true, "beetroots", "age=1")
    AC.RegisterBlock(BlockId.new(207,2), true, "beetroots", "age=2")
    AC.RegisterBlock(BlockId.new(207,3), true, "beetroots", "age=3")
    AC.RegisterBlock(BlockId.new(207,4), true, "beetroots", "age=4")
    AC.RegisterBlock(BlockId.new(207,5), true, "beetroots", "age=5")
    AC.RegisterBlock(BlockId.new(207,6), true, "beetroots", "age=6")
    AC.RegisterBlock(BlockId.new(207,7), true, "beetroots", "age=7")
    AC.RegisterBlock(BlockId.new(207,8), true, "beetroots", "age=8")
    AC.RegisterBlock(BlockId.new(207,9), true, "beetroots", "age=9")
    AC.RegisterBlock(BlockId.new(207,10), true, "beetroots", "age=10")
    AC.RegisterBlock(BlockId.new(207,11), true, "beetroots", "age=11")
    AC.RegisterBlock(BlockId.new(207,12), true, "beetroots", "age=12")
    AC.RegisterBlock(BlockId.new(207,13), true, "beetroots", "age=13")
    AC.RegisterBlock(BlockId.new(207,14), true, "beetroots", "age=14")
    AC.RegisterBlock(BlockId.new(207,15), true, "beetroots", "age=15")

    AC.RegisterBlock(BlockId.new(208,0), true, "grass_path", "normal")
end

return {
    GetBlockInfo = GetBlockInfo,
    RegisterBlocks = RegisterBlocks,
}