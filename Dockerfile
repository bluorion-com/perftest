FROM mellanox/cuda-perftest:latest

ENV LD_LIBRARY_PATH="/usr/local/cuda-11.6/compat"

RUN apt-get update && apt-get install -y \
    infiniband-diags \
    tmux \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY start_server.sh /root/start_server.sh
COPY start_client.sh /root/start_client.sh
