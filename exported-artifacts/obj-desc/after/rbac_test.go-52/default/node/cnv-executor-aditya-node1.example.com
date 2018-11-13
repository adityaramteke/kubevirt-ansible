Name:               cnv-executor-aditya-node1.example.com
Roles:              compute
Labels:             beta.kubernetes.io/arch=amd64
                    beta.kubernetes.io/os=linux
                    glusterfs=storage-host
                    kubernetes.io/hostname=cnv-executor-aditya-node1.example.com
                    kubevirt.io/schedulable=true
                    node-role.kubernetes.io/compute=true
Annotations:        kubevirt.io/heartbeat=2018-11-14T12:57:27Z
                    node.openshift.io/md5sum=48202d7f46a5281356b5468b789ce232
                    volumes.kubernetes.io/controller-managed-attach-detach=true
CreationTimestamp:  Fri, 09 Nov 2018 12:52:37 +0530
Taints:             <none>
Unschedulable:      false
Conditions:
  Type             Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message
  ----             ------  -----------------                 ------------------                ------                       -------
  OutOfDisk        False   Wed, 14 Nov 2018 18:27:48 +0530   Sun, 11 Nov 2018 04:09:38 +0530   KubeletHasSufficientDisk     kubelet has sufficient disk space available
  MemoryPressure   False   Wed, 14 Nov 2018 18:27:48 +0530   Sun, 11 Nov 2018 04:09:38 +0530   KubeletHasSufficientMemory   kubelet has sufficient memory available
  DiskPressure     False   Wed, 14 Nov 2018 18:27:48 +0530   Sun, 11 Nov 2018 04:09:38 +0530   KubeletHasNoDiskPressure     kubelet has no disk pressure
  PIDPressure      False   Wed, 14 Nov 2018 18:27:48 +0530   Fri, 09 Nov 2018 12:52:38 +0530   KubeletHasSufficientPID      kubelet has sufficient PID available
  Ready            True    Wed, 14 Nov 2018 18:27:48 +0530   Sun, 11 Nov 2018 04:09:38 +0530   KubeletReady                 kubelet is posting ready status
Addresses:
  InternalIP:  172.16.0.13
  Hostname:    cnv-executor-aditya-node1.example.com
Capacity:
 cpu:                            4
 devices.kubevirt.io/kvm:        110
 devices.kubevirt.io/tun:        110
 devices.kubevirt.io/vhost-net:  110
 hugepages-1Gi:                  0
 hugepages-2Mi:                  0
 memory:                         8008852Ki
 pods:                           250
Allocatable:
 cpu:                            4
 devices.kubevirt.io/kvm:        110
 devices.kubevirt.io/tun:        110
 devices.kubevirt.io/vhost-net:  110
 hugepages-1Gi:                  0
 hugepages-2Mi:                  0
 memory:                         7906452Ki
 pods:                           250
System Info:
 Machine ID:                 b1202546acc34c0bb36cfca88b2b4cab
 System UUID:                B1202546-ACC3-4C0B-B36C-FCA88B2B4CAB
 Boot ID:                    9b89b819-ffd1-4c90-80fe-40bd5b9804d6
 Kernel Version:             3.10.0-957.el7.x86_64
 OS Image:                   Red Hat Enterprise Linux Server 7.6 (Maipo)
 Operating System:           linux
 Architecture:               amd64
 Container Runtime Version:  cri-o://1.11.5
 Kubelet Version:            v1.11.0+d4cacc0
 Kube-Proxy Version:         v1.11.0+d4cacc0
Non-terminated Pods:         (12 in total)
  Namespace                  Name                                   CPU Requests  CPU Limits  Memory Requests   Memory Limits
  ---------                  ----                                   ------------  ----------  ---------------   -------------
  default                    local-volume-provisioner-t9cw4         0 (0%)        0 (0%)      0 (0%)            0 (0%)
  default                    virt-launcher-rhel7-xxc4z              0 (0%)        0 (0%)      4426076161 (54%)  0 (0%)
  default                    virt-launcher-test-vmirszsbz8-psjkb    0 (0%)        0 (0%)      610554432 (7%)    0 (0%)
  glusterfs                  glusterfs-storage-879ww                100m (2%)     0 (0%)      100Mi (1%)        0 (0%)
  kube-system                kube-multus-ds-amd64-5gqcg             100m (2%)     100m (2%)   50Mi (0%)         50Mi (0%)
  kube-system                ovs-cni-plugin-amd64-lm5zn             100m (2%)     100m (2%)   50Mi (0%)         50Mi (0%)
  kube-system                ovs-vsctl-amd64-krp8p                  100m (2%)     100m (2%)   50Mi (0%)         50Mi (0%)
  kube-system                virt-handler-bgmlh                     0 (0%)        0 (0%)      0 (0%)            0 (0%)
  openshift-monitoring       node-exporter-mctbm                    10m (0%)      20m (0%)    20Mi (0%)         40Mi (0%)
  openshift-node             sync-m9t8s                             0 (0%)        0 (0%)      0 (0%)            0 (0%)
  openshift-sdn              ovs-lzjfr                              100m (2%)     200m (5%)   300Mi (3%)        400Mi (5%)
  openshift-sdn              sdn-w8bqx                              100m (2%)     0 (0%)      200Mi (2%)        0 (0%)
Allocated resources:
  (Total limits may be over 100 percent, i.e., overcommitted.)
  Resource                       Requests          Limits
  --------                       --------          ------
  cpu                            610m (15%)        520m (13%)
  memory                         5844034113 (72%)  590Mi (7%)
  devices.kubevirt.io/kvm        2                 2
  devices.kubevirt.io/tun        2                 2
  devices.kubevirt.io/vhost-net  2                 2
Events:                          <none>
