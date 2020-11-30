#pragma once

#include <string>
#include <chrono>
#include <thread>

class Network;
struct Packet;
enum ConnectionState : unsigned char;

class NetworkClient {
    std::unique_ptr<Network> network;
	ConnectionState state;
    int compressionThreshold = -1;
    std::chrono::steady_clock::time_point timeOfLastKeepAlivePacket;
	std::thread thread;
	bool isRunning=true;
	void ExecNs();
public:
	NetworkClient(std::string address, unsigned short port, std::string username);
	~NetworkClient();
};
