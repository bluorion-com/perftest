ip a show net1 | grep -oP "inet [^/]+" | grep -oP "\d.*"

while :
do
  ib_write_bw -d mlx5_0 -a -F --report_gbits -q 1
done
