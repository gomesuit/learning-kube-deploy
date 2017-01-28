# vagrant-kubernetes2

### 参考
http://kubernetes.io/docs/getting-started-guides/docker-multinode/

### dashboard
http://192.168.33.10:8080/ui

```
# nodeの確認
kubectl get nodes

# アプリケーションのデプロイ
kubectl run my-nginx --image=nginx --replicas=2 --port=80

# podの確認
kubectl get po

# deployの確認
kubectl get deploy

# 公開(service)
kubectl expose deployment my-nginx --target-port=80 --type=LoadBalancer

# serviceの確認
kubectl get service my-nginx

# 動作確認(portは確認して読み替え)
curl 192.168.33.10:31134
curl 192.168.33.11:31134
curl 192.168.33.12:31134

# アプリケーションの終了
kubectl delete deployment,service my-nginx
```

```
curl https://raw.githubusercontent.com/kubernetes/kubernetes.github.io/master/docs/user-guide/run-my-nginx.yaml

# ファイルからのデプロイ
kubectl create -f https://raw.githubusercontent.com/kubernetes/kubernetes.github.io/master/docs/user-guide/run-my-nginx.yaml

kubectl get deployment
kubectl get pods

# label
kubectl get pods -L run
kubectl get deployment/my-nginx -L run

kubectl delete deployment/my-nginx
```

```
kubectl create -f https://raw.githubusercontent.com/kubernetes/kubernetes.github.io/master/docs/user-guide/nginx-app.yaml

# 3 pods
kubectl get pods -l app=nginx

# scalling
kubectl scale deployment/my-nginx --replicas=1

# 1 pod
kubectl get pods -l app=nginx

# 現状をymlファイル化
kubectl get deployment my-nginx -o yaml > nginx-app.yaml

# ファイルを修正したあと、反映
kubectl apply -f nginx-app.yaml

# 直接変更
kubectl edit deployment/my-nginx

# 強制的な更新
kubectl replace -f nginx-app.yaml --force

```

```
# replication controller
# TODO

```

```
# Rolling Updates
# TODO

```

```
# Autoscaling
# TODO

```


