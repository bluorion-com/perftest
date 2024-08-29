hostname -i

while :
do
  ib_write_bw -d mlx5_0 -a -F --report_gbits -q 1
done
