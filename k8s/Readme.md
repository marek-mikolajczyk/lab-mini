# problems with dns in pods

kubectl -n kube-system rollout restart deployment coredns

# bash into pod
kubectl exec -n awx  -it  awx-demo-586bd67d59-64zkx -c awx-demo-task -- /bin/bash
