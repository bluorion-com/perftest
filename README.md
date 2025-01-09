# perftest

```
POD=pytorch-job-master-0
kubectl exec --stdin --tty $POD --container rdma-test -- /bin/bash
./start_server.sh
```

```
POD=pytorch-job-worker-0
kubectl exec --stdin --tty $POD --container rdma-test -- /bin/bash
./start_client.sh pytorch-job-master-0.pytorch-job
```
