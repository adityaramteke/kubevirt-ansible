Name:               cnv-executor-aditya-master1.example.com
Roles:              infra,master
Labels:             beta.kubernetes.io/arch=amd64
                    beta.kubernetes.io/os=linux
                    glusterfs=storage-host
                    kubernetes.io/hostname=cnv-executor-aditya-master1.example.com
                    node-role.kubernetes.io/infra=true
                    node-role.kubernetes.io/master=true
Annotations:        node.openshift.io/md5sum=6c49f2d92b17bdd174e77567744382b4
                    volumes.kubernetes.io/controller-managed-attach-detach=true
CreationTimestamp:  Fri, 09 Nov 2018 12:48:36 +0530
Taints:             <none>
Unschedulable:      false
Conditions:
  Type             Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message
  ----             ------  -----------------                 ------------------                ------                       -------
  OutOfDisk        False   Wed, 14 Nov 2018 18:27:34 +0530   Fri, 09 Nov 2018 12:48:36 +0530   KubeletHasSufficientDisk     kubelet has sufficient disk space available
  MemoryPressure   False   Wed, 14 Nov 2018 18:27:34 +0530   Fri, 09 Nov 2018 12:48:36 +0530   KubeletHasSufficientMemory   kubelet has sufficient memory available
  DiskPressure     False   Wed, 14 Nov 2018 18:27:34 +0530   Fri, 09 Nov 2018 12:48:36 +0530   KubeletHasNoDiskPressure     kubelet has no disk pressure
  PIDPressure      False   Wed, 14 Nov 2018 18:27:34 +0530   Fri, 09 Nov 2018 12:48:36 +0530   KubeletHasSufficientPID      kubelet has sufficient PID available
  Ready            True    Wed, 14 Nov 2018 18:27:34 +0530   Fri, 09 Nov 2018 12:52:45 +0530   KubeletReady                 kubelet is posting ready status
Addresses:
  InternalIP:  172.16.0.18
  Hostname:    cnv-executor-aditya-master1.example.com
Capacity:
 cpu:            4
 hugepages-1Gi:  0
 hugepages-2Mi:  0
 memory:         8008848Ki
 pods:           250
Allocatable:
 cpu:            4
 hugepages-1Gi:  0
 hugepages-2Mi:  0
 memory:         7906448Ki
 pods:           250
System Info:
 Machine ID:                         815903de667e4ca69c8616c5d4e35c6b
 System UUID:                        815903DE-667E-4CA6-9C86-16C5D4E35C6B
 Boot ID:                            f4be6b80-40bc-41dc-a809-d30e11c4112e
 Kernel Version:                     3.10.0-957.el7.x86_64
 OS Image:                           Red Hat Enterprise Linux Server 7.6 (Maipo)
 Operating System:                   linux
 Architecture:                       amd64
 Container Runtime Version:          cri-o://1.11.5
 Kubelet Version:                    v1.11.0+d4cacc0
 Kube-Proxy Version:                 v1.11.0+d4cacc0
Non-terminated Pods:                 (40 in total)
  Namespace                          Name                                                          CPU Requests  CPU Limits  Memory Requests  Memory Limits
  ---------                          ----                                                          ------------  ----------  ---------------  -------------
  default                            docker-registry-1-qrptv                                       100m (2%)     0 (0%)      256Mi (3%)       0 (0%)
  default                            local-volume-provisioner-qbzdb                                0 (0%)        0 (0%)      0 (0%)           0 (0%)
  default                            registry-console-1-6zv9d                                      0 (0%)        0 (0%)      0 (0%)           0 (0%)
  default                            router-1-m9fhq                                                100m (2%)     0 (0%)      256Mi (3%)       0 (0%)
  glusterfs                          glusterblock-storage-provisioner-dc-1-vwtlf                   0 (0%)        0 (0%)      0 (0%)           0 (0%)
  glusterfs                          glusterfs-storage-fhq7l                                       100m (2%)     0 (0%)      100Mi (1%)       0 (0%)
  glusterfs                          heketi-storage-1-2x62p                                        0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-service-catalog               apiserver-kfwbq                                               0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-service-catalog               controller-manager-n6g82                                      0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        cdi-api-556469bfbc-d6vqd                                      0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        cdi-deployment-6c49474554-z6ngf                               0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        cdi-uploadproxy-784878c6cc-lrt6g                              0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        master-api-cnv-executor-aditya-master1.example.com            0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        master-controllers-cnv-executor-aditya-master1.example.com    0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        master-etcd-cnv-executor-aditya-master1.example.com           0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        virt-api-bc78946cb-kvqbm                                      0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        virt-api-bc78946cb-qtbd4                                      0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        virt-controller-794776c85f-t2d2b                              0 (0%)        0 (0%)      0 (0%)           0 (0%)
  kube-system                        virt-controller-794776c85f-tgjwg                              0 (0%)        0 (0%)      0 (0%)           0 (0%)
  openshift-ansible-service-broker   asb-2-vxdn4                                                   0 (0%)        0 (0%)      0 (0%)           0 (0%)
  openshift-console                  console-7bcf67cc9d-5qck2                                      100m (2%)     100m (2%)   100Mi (1%)       100Mi (1%)
  openshift-infra                    hawkular-cassandra-1-24stz                                    0 (0%)        0 (0%)      1G (12%)         2G (24%)
  openshift-infra                    hawkular-metrics-5jcdm                                        0 (0%)        0 (0%)      1500M (18%)      2500M (30%)
  openshift-infra                    heapster-k5sn7                                                0 (0%)        0 (0%)      937500k (11%)    3750M (46%)
  openshift-metrics-server           metrics-server-f45d99cf8-qkq9h                                0 (0%)        0 (0%)      0 (0%)           0 (0%)
  openshift-monitoring               alertmanager-main-0                                           5m (0%)       5m (0%)     210Mi (2%)       10Mi (0%)
  openshift-monitoring               alertmanager-main-1                                           5m (0%)       5m (0%)     210Mi (2%)       10Mi (0%)
  openshift-monitoring               alertmanager-main-2                                           5m (0%)       5m (0%)     210Mi (2%)       10Mi (0%)
  openshift-monitoring               cluster-monitoring-operator-55c6f8f5cc-ffpz2                  20m (0%)      20m (0%)    50Mi (0%)        50Mi (0%)
  openshift-monitoring               grafana-7967df4f-zst6j                                        100m (2%)     200m (5%)   100Mi (1%)       200Mi (2%)
  openshift-monitoring               kube-state-metrics-745957d4d-vx8nc                            20m (0%)      40m (1%)    40Mi (0%)        80Mi (1%)
  openshift-monitoring               node-exporter-5lc2m                                           10m (0%)      20m (0%)    20Mi (0%)        40Mi (0%)
  openshift-monitoring               prometheus-k8s-0                                              15m (0%)      15m (0%)    60Mi (0%)        60Mi (0%)
  openshift-monitoring               prometheus-k8s-1                                              15m (0%)      15m (0%)    60Mi (0%)        60Mi (0%)
  openshift-monitoring               prometheus-operator-867c869594-zqkdb                          0 (0%)        0 (0%)      0 (0%)           0 (0%)
  openshift-node                     sync-qv7t7                                                    0 (0%)        0 (0%)      0 (0%)           0 (0%)
  openshift-sdn                      ovs-xjvlc                                                     100m (2%)     200m (5%)   300Mi (3%)       400Mi (5%)
  openshift-sdn                      sdn-t8nxz                                                     100m (2%)     0 (0%)      200Mi (2%)       0 (0%)
  openshift-template-service-broker  apiserver-hchlg                                               0 (0%)        0 (0%)      0 (0%)           0 (0%)
  openshift-web-console              webconsole-59d4c9ccdf-8msqx                                   100m (2%)     0 (0%)      100Mi (1%)       0 (0%)
Allocated resources:
  (Total limits may be over 100 percent, i.e., overcommitted.)
  Resource  Requests          Limits
  --------  --------          ------
  cpu       895m (22%)        625m (15%)
  memory    5819864672 (71%)  9319547520 (115%)
Events:     <none>
