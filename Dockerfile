FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    git cmake g++ libboost-all-dev libcurl4-openssl-dev \
    libtinyxml2-dev libjsoncpp-dev libpugixml-dev libssl-dev \
    qtbase5-dev qttools5-dev qttools5-dev-tools zlib1g-dev \
    ca-certificates wget pkg-config librhash-dev \
    libtidy-dev && \
    rm -rf /var/lib/apt/lists/*



RUN git clone https://github.com/Sude-/lgogdownloader.git /opt/lgogdownloader && \
    cd /opt/lgogdownloader && mkdir build && cd build && \
    cmake .. && make && make install

RUN mkdir -p /config /downloads

VOLUME ["/config", "/downloads"]

WORKDIR /downloads

ENTRYPOINT ["lgogdownloader"]
