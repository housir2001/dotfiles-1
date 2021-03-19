#!/bin/bash

pod=$(echo $(kubectl get pods | fzf) | cut -f1 -d' ')

kubectl port-forward $pod 9090:8080 &
kubectl logs $pod -f


