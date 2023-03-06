# Kubernetes In Action

### Chapter1 Kubernetes Introduction

MicroService -> Same environment

Kubernetes:

- API server
- Scheduler
- Controller Manager
- etcd
- Kubelet
- kube-proxy

### Chapter3 Pod

- nodeSelector
- label
- annotation

Custom-Namespace

kubectl explain

### Chapter4 Set

liveness probe

- HTTP GET
- TCP
- Exec

ReplicationController(Deprecated)

- selector
- template
- replicas

ReplicaSet

- matchLabels
- matchExpressions (In,NotIn,Exits,DoesNotExits)

DaemonSet

- matchLabels

Job

- restartPolicy(Always,OnFailure,Never)
- completions
- parallelism

CronJob

- schedule
- startingDeadlineSeconds

### Chapter5 Service

Service

- sessionAffinity (ClientIP,None)
- name

EndPoint

- subset:address

ExternalName

Expose Service to the external client

- NodePort
- LoadBalance
- Ingress (rules,host,paths)

Readiness probe

- Exec
- HTTP GET
- TCP Socket

headless Service

ClusterIp: None

publishNotReadyAddresses

### Chapter6 Volume

- emptyDir
- hostPath
- ~~gitRepo~~
- nfs
- configMap,secret,downwardAPI
- persistentVolumeClaim

PersistentVolume

PersistentVolumeClaim

StorageClass

### Chapter7 ConfigMap and Secret

- command
- args
- env

ConfigMap

configMap-volume

Secret

- stringData
- data
- docker-registry

### Chapter8 Access pod meta data

DownwardAPI

- pod Name
- pod IP
- pod nameSpace
- pod Node name
- pod ServiceAccount
- pod CPU/Memory request
- pod CPU/Memory limit
- pod label
- pod annotation

Interact with Kubernetes API

- kubectl proxy
- ambassador

### Chapter9 Deployment

Deployment -> ReplicaSet -> Pod

RollingUpdate Recreate

minReadySeconds

maxSurge, maxUnavailable

### Chapter 10 StatefulSet

at-most-one

volumeClaimTemplate

### Chapter11 Kubernetes mechanism

- etcd
- control plane
- API Server
- Scheduler
- Controller
- Kubelet
- Kubernetes Service Proxy -> iptables

Addons: DNS server, Ingress controller

High Availability

### Chapter12 Kubernetes Security

- ServiceAccount
- RBAC
- Role, Role binding
- ClusterRole, ClusterRoleBinding

### Chapter13 Cluster Security

Security Context:

- privileged
- runAsUser
- capabilities

PodSecurityPolicy

NetWorkPolicy

- ingress
- egress

### Chapter14 Resource manage

resource -> request (cpu,memory)
-> limits
Qos(Quality of Service)

- BestEffort
- Burstable
- Guaranteed

LimitRange

ResourceQuota

Metrics-Server

### Chapter15 Auto-Scale

kubectl autoscale

HPA(Horizontal Pod Autoscaler)

Cluster Autoscaler

### Advanced Scheduler

Taints

- NoSchedule
- PreferNoSchedule
- NoExecute

tolerations

nodeAffinity

podAffinity/podAntiAffinity

### Best Practice

life-cycle

initContainers

Post-start/Pre-stop hook

### Extension

CRD (customer resource definition)

Custom Controller

aggregation API Server

Helm


