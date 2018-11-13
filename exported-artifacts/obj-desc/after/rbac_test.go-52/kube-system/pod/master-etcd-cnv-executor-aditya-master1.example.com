Name:               master-etcd-cnv-executor-aditya-master1.example.com
Namespace:          kube-system
Priority:           2000001000
PriorityClassName:  system-node-critical
Node:               cnv-executor-aditya-master1.example.com/172.16.0.18
Start Time:         Sun, 11 Nov 2018 04:09:21 +0530
Labels:             openshift.io/component=etcd
                    openshift.io/control-plane=true
Annotations:        kubernetes.io/config.hash=a81911759d4fc747b85195860826b058
                    kubernetes.io/config.mirror=a81911759d4fc747b85195860826b058
                    kubernetes.io/config.seen=2018-11-09T02:17:16.134742534-05:00
                    kubernetes.io/config.source=file
                    scheduler.alpha.kubernetes.io/critical-pod=
Status:             Running
IP:                 172.16.0.18
Containers:
  etcd:
    Container ID:  cri-o://6eeac195ebd803460f830b88266c9b6c8631c131f6bc9cabe3ad5782165abd45
    Image:         brew-pulp-docker01.web.prod.ext.phx2.redhat.com:8888/rhel7/etcd:3.2.22
    Image ID:      brew-pulp-docker01.web.prod.ext.phx2.redhat.com:8888/rhel7/etcd@sha256:be2ac6ae562bafe9c3d5827493bc99fa17ab0134fdc836e84caba143aa9f3ba4
    Port:          <none>
    Host Port:     <none>
    Command:
      /bin/sh
      -c
    Args:
      #!/bin/sh
set -o allexport
source /etc/etcd/etcd.conf
exec etcd

    State:          Running
      Started:      Sun, 11 Nov 2018 04:09:22 +0530
    Last State:     Terminated
      Reason:       Error
      Exit Code:    255
      Started:      Sat, 10 Nov 2018 22:23:19 +0530
      Finished:     Sun, 11 Nov 2018 04:09:22 +0530
    Ready:          True
    Restart Count:  2
    Liveness:       exec [etcdctl --cert-file /etc/etcd/peer.crt --key-file /etc/etcd/peer.key --ca-file /etc/etcd/ca.crt -C https://172.16.0.18:2379 cluster-health] delay=45s timeout=1s period=10s #success=1 #failure=3
    Environment:    <none>
    Mounts:
      /etc/etcd/ from master-config (ro)
      /var/lib/etcd/ from master-data (rw)
Conditions:
  Type              Status
  Initialized       True 
  Ready             True 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  master-config:
    Type:          HostPath (bare host directory volume)
    Path:          /etc/etcd/
    HostPathType:  
  master-data:
    Type:          HostPath (bare host directory volume)
    Path:          /var/lib/etcd
    HostPathType:  
QoS Class:         BestEffort
Node-Selectors:    <none>
Tolerations:       :NoExecute
Events:            <none>
