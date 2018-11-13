Name:               master-api-cnv-executor-aditya-master1.example.com
Namespace:          kube-system
Priority:           2000001000
PriorityClassName:  system-node-critical
Node:               cnv-executor-aditya-master1.example.com/172.16.0.18
Start Time:         Sun, 11 Nov 2018 04:09:21 +0530
Labels:             openshift.io/component=api
                    openshift.io/control-plane=true
Annotations:        kubernetes.io/config.hash=fcb83471ffe8d280d05d063c9783beff
                    kubernetes.io/config.mirror=fcb83471ffe8d280d05d063c9783beff
                    kubernetes.io/config.seen=2018-11-09T02:17:16.134732702-05:00
                    kubernetes.io/config.source=file
                    scheduler.alpha.kubernetes.io/critical-pod=
Status:             Running
IP:                 172.16.0.18
Containers:
  api:
    Container ID:  cri-o://4a4639c3cc5acb1f90c664ef9880420777c146ad631fe699acda423b1e2b363a
    Image:         brew-pulp-docker01.web.prod.ext.phx2.redhat.com:8888/openshift3/ose-control-plane:v3.11.16
    Image ID:      brew-pulp-docker01.web.prod.ext.phx2.redhat.com:8888/openshift3/ose-control-plane@sha256:331ff49db77c071c3b220ec8bb5e046984bd0bc4a5116c0eea05e7580acafa55
    Port:          <none>
    Host Port:     <none>
    Command:
      /bin/bash
      -c
    Args:
      #!/bin/bash
set -euo pipefail
if [[ -f /etc/origin/master/master.env ]]; then
  set -o allexport
  source /etc/origin/master/master.env
fi
exec openshift start master api --config=/etc/origin/master/master-config.yaml --loglevel=${DEBUG_LOGLEVEL:-2}

    State:          Running
      Started:      Wed, 14 Nov 2018 14:31:35 +0530
    Last State:     Terminated
      Reason:       Error
      Exit Code:    2
      Started:      Sun, 11 Nov 2018 04:09:22 +0530
      Finished:     Wed, 14 Nov 2018 14:31:34 +0530
    Ready:          True
    Restart Count:  3
    Liveness:       http-get https://:8443/healthz delay=45s timeout=10s period=10s #success=1 #failure=3
    Readiness:      http-get https://:8443/healthz/ready delay=10s timeout=10s period=10s #success=1 #failure=3
    Environment:    <none>
    Mounts:
      /etc/origin/cloudprovider/ from master-cloud-provider (rw)
      /etc/origin/master/ from master-config (rw)
      /var/lib/origin/ from master-data (rw)
Conditions:
  Type              Status
  Initialized       True 
  Ready             True 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  master-config:
    Type:          HostPath (bare host directory volume)
    Path:          /etc/origin/master/
    HostPathType:  
  master-cloud-provider:
    Type:          HostPath (bare host directory volume)
    Path:          /etc/origin/cloudprovider
    HostPathType:  
  master-data:
    Type:          HostPath (bare host directory volume)
    Path:          /var/lib/origin
    HostPathType:  
QoS Class:         BestEffort
Node-Selectors:    <none>
Tolerations:       :NoExecute
Events:            <none>
