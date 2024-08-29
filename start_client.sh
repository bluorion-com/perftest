echo "Usage: ./start_client.sh <server_ip>"

ib_write_bw -d mlx5_0 -a -F --report_gbits -q 1 $1
