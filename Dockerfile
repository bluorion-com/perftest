FROM mellanox/cuda-perftest:latest

ENV LD_LIBRARY_PATH="/usr/local/cuda-11.6/compat"

COPY start_server.sh /root/start_server.sh
COPY start_client.sh /root/start_client.sh
