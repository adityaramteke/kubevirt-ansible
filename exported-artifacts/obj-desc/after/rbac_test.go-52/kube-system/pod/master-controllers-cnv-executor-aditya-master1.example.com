Name:               master-controllers-cnv-executor-aditya-master1.example.com
Namespace:          kube-system
Priority:           2000001000
PriorityClassName:  system-node-critical
Node:               cnv-executor-aditya-master1.example.com/172.16.0.18
Start Time:         Sun, 11 Nov 2018 04:09:21 +0530
Labels:             openshift.io/component=controllers
                    openshift.io/control-plane=true
Annotations:        kubernetes.io/config.hash=7d930ce22d435aa52998cc3756a05339
                    kubernetes.io/config.mirror=7d930ce22d435aa52998cc3756a05339
                    kubernetes.io/config.seen=2018-11-09T02:17:16.13474068-05:00
                    kubernetes.io/config.source=file
                    scheduler.alpha.kubernetes.io/critical-pod=
Status:             Running
IP:                 172.16.0.18
Containers:
  controllers:
    Container ID:  cri-o://095a5431ed49e2910735d1e681121254f2ef93d16b41ff31dc5ea7e49cd59e82
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
exec openshift start master controllers --config=/etc/origin/master/master-config.yaml --listen=https://0.0.0.0:8444 --loglevel=${DEBUG_LOGLEVEL:-2}

    State:          Running
      Started:      Wed, 14 Nov 2018 14:31:35 +0530
    Last State:     Terminated
      Reason:       Error
      Exit Code:    2
      Started:      Sun, 11 Nov 2018 04:09:22 +0530
      Finished:     Wed, 14 Nov 2018 14:31:13 +0530
    Ready:          True
    Restart Count:  3
    Liveness:       http-get https://:8444/healthz delay=0s timeout=1s period=10s #success=1 #failure=3
    Environment:    <none>
    Mounts:
      /etc/containers/registries.d/ from signature-import (rw)
      /etc/origin/cloudprovider/ from master-cloud-provider (rw)
      /etc/origin/master/ from master-config (rw)
      /usr/libexec/kubernetes/kubelet-plugins from kubelet-plugins (rw)
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
  signature-import:
    Type:          HostPath (bare host directory volume)
    Path:          /etc/containers/registries.d
    HostPathType:  
  kubelet-plugins:
    Type:          HostPath (bare host directory volume)
    Path:          /usr/libexec/kubernetes/kubelet-plugins
    HostPathType:  
QoS Class:         BestEffort
Node-Selectors:    <none>
Tolerations:       :NoExecute
Events:            <none>
