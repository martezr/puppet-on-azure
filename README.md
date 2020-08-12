# Puppet On Azure

This repository contains a collection of reference examples for using products from the [Puppet](https://puppet.com/) portfolio with Microsoft Azure.

![](./Puppet-Logo-Amber-Black-sm.png)


# Puppet Enterprise Deployment

Reference architectures for Standard, Large and Extra-large deployments are included in this repository.

|Name|Description|Node Limit|Link|
|----|-----------|----------|----|
|Standard|All infrastructure components are installed on the master. This installation type is the easiest to install, upgrade, and troubleshoot.|Up to 4,000|[Link](./Deployment/Standard)|
|Large|Similar to a standard installation, plus one or more compilers and a load balancer which help distribute the agent catalog compilation workload.|4,000–20,000|[Link](./Deployment/Large)|
|Extra-Large|Similar to a large installation, plus a separate node which hosts the PE-PostgreSQL instance.|More than 20,000|[Link](./Deployment/Extra-Large)|

# Puppet Enterprise Agent
In addition to resources for the deployment of the Puppet Enterprise infrastructure this repository contains resources for deploying Puppet Enterprise agents in an automated fashion.

|Operating System|Description|Link|
|----------------|-----------|----|
|CentOS 7|A CentOS 7 virtual machine that deploys the Puppet Enterprise agent|[Terraform](./ApplicationWorkloads/Terraform) \| [ARM](./ApplicationWorkloads/ARM)|
|CentOS 8|A CentOS 8 virtual machine that deploys the Puppet Enterprise agent|[Terraform](./ApplicationWorkloads/Terraform) \| [ARM](./ApplicationWorkloads/ARM)|
|Windows Server 2019|A Windows Server 2019 virtual machine that deploys the Puppet Enterprise agent|[Terraform](./ApplicationWorkloads/Terraform) \| [ARM](./ApplicationWorkloads/ARM)|

# HashiCorp Packer Templates

Reference Packer templates are included in this repository that showcase integrations with Puppet Bolt and more.

|Operating System|Description|Link|
|----------------|-----------|----|
|CentOS 7|||
|CentOS 8|||
|Windows Server 2019|||

# Puppet Enterprise Control Repo

|Use Case|Description|
|--------|-----------|
|Windows Server 2019 baseline hardening|An example profile that includes hardening controls for Windows Server 2019|
|||

# Azure DevOps Integrations

|Use Case|Description|Link|
|--------|-----------|----|
|||
|||