# Running Red Hat Enterprise Linux 7.5 as EKS Worker Nodes

## Setup
* CentOs 7

* Kubernetes 1.14.6 on AWS EKS

## Workflow
* Provision an EC2 Server with Cenotos AMI.
* Install the following dependencies.
```
sudo yum install -y git nano vim
```
* Clone this repo and Execute install-centos-requirements.sh
```
git clone --single-branch --branch centos-dockerselinux https://github.com/danno-rose/aws-eks-rhel-workers.git
cd aws-eks-rhel-workers
sh install-worker.sh

```
* Create an AMI of this server.
* Provision a Cloudformation Stack with the below template provided by AWS:
```
https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2019-02-11/amazon-eks-nodegroup.yaml
```
* In the parameter "NodeImageId", input the Image ID of the AMI created in the previous step.
