# vagrant-kubernetes2

http://kubernetes.io/docs/getting-started-guides/docker-multinode/



```
# アプリケーションのデプロイ
kubectl run my-nginx --image=nginx --replicas=2 --port=80

# 公開
kubectl expose deployment my-nginx --target-port=80 --type=LoadBalancer

# podの確認
kubectl get po

# serviceの確認
kubectl get service my-nginx

# アプリケーションの終了
kubectl delete deployment,service my-nginx


```

```
wget https://raw.githubusercontent.com/kubernetes/kubernetes.github.io/master/docs/user-guide/run-my-nginx.yaml


```


