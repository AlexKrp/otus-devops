# K8s The Hard Way

### Prerequisites
1. **gcloud**
2. **cfssl cfssljson** for PKI ifrasrtucture
2. **kubectl to interact** with K8S API

### Compute Resources
1. Create VPC network
2. Create Subnet for VPC
3. Create firewall rules
    * Internal **tcp udp icmp**
    * External **tcp:22 tcp:6443 icmp**
4. Create External IP
5. Create Controllers
6. Create Workers
7. Generate SSH key and connect

### Generating Certificates
1. Generate certificates
    * CA root **ca.pem**
    * Admin  **admin.pem**
    * Kubelet **worker-$.pem** *x3 for workers*
        * *Depends:* EXTERNAL_IP
        * *Depends:* INTERNAL_IP
    * Controller Manager **kube-controller-manager.pem**
    * Kube proxy **kube-proxy.pem**
    * Scheduler **kube-scheduler.pem**
    * K8s API Server **kubernetes.pem**
        * *Depends:* Comtroller IPs
        * *Depends:* KUBERNETES_PUBLIC_ADDRESS
    * Service Account **service-account.pem**
2. Distribute Certificates
    * Controllers
        * ca.pem
        * ca-key.pem
        * kubernetes.pem
        * kubernetes-key.pem
        * service-account.pem
        * service-account-key.pem
    * Workers
        * ca.pem
        * worker-$.pem
        * worker-$-key.pem
### Generating Kubernetes Configuration Files for Authentication
1. Generating Configs
    * Worker nodes
        * *Depends:* ca.pem
        * *Depends:* worker-$.pem worker-$-key.pem
        * *Depends:* 


