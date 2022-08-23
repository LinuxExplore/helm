#!/bin/bash

# helm install <app name> <helm chart location>
helm install le-app le-app/

###############
# helm install le-app le-app/

<<'HELM_INSTALL'
NAME: le-app
LAST DEPLOYED: Tue Aug 23 14:59:17 2022
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
1. Get the application URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=le-app,app.kubernetes.io/instance=le-app" -o jsonpath="{.items[0].metadata.name}")
  export CONTAINER_PORT=$(kubectl get pod --namespace default $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl --namespace default port-forward $POD_NAME 8080:$CONTAINER_PORT
HELM_INSTALL

###############
# kubectl get  all

<<'K_GET_ALL'
NAME                          READY   STATUS    RESTARTS   AGE
pod/le-app-6dcbf5b6b5-5bxld   1/1     Running   0          19s
pod/le-app-6dcbf5b6b5-ts2zf   1/1     Running   0          19s

NAME                 TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.96.0.1      <none>        443/TCP   10d
service/le-app       ClusterIP   10.103.108.2   <none>        80/TCP    19s

NAME                     READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/le-app   2/2     2            2           19s

NAME                                DESIRED   CURRENT   READY   AGE
replicaset.apps/le-app-6dcbf5b6b5   2         2         2       19s
K_GET_ALL
