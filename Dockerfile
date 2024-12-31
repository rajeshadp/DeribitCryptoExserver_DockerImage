#  Use an official image as the base
FROM ubuntu:22.04

# Install essential tools and libraries
RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    make \
    wget \
    curl \
    git \
    pkg-config \
    libssl-dev \
    libcurl4-openssl-dev \
    libboost-all-dev \
    libcpprest-dev \
    libwebsocketpp-dev \
    rapidjson-dev \
    openssl

# Create a working directory
WORKDIR /usr/src/app

# Copy your project files to the container
COPY . .

# Compile the project
RUN g++ -std=c++17 -o wss_rest DeribitWebSocketMain.cpp OAuth2Client.cpp WebSocketServer.cpp \
    -lcurl -lboost_system -lboost_thread -lpthread -lcpprest -lssl -lcrypto -lboost_log -lboost_log_setup

# Expose any ports the application might use
EXPOSE 9002

# Run the application
CMD ["./wss_rest"]
