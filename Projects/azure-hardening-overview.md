# Azure Hardening Overview

## 📌 Objective
High-level hardening of Azure resources with focus on identity, network, and security posture management.

## 🧩 Scope
- Azure AD integration  
- Resource groups & access control  
- Network security (NSG, firewalls)  
- Security Center / Defender for Cloud configuration  

## 🔐 Identity & Access
- Enforced RBAC on subscriptions and resource groups  
- Minimized Owner/Contributor roles  
- Implemented least-privilege custom roles where necessary  
- Integrated Conditional Access for portal access  

## 🌐 Network Security
- Implemented Network Security Groups (NSG) with explicit deny/allow  
- Segmented workloads into separate VNets/subnets  
- Restricted RDP/SSH to jump hosts or VPN only  
- Enabled Azure Firewall where applicable  

## 🛡 Defender for Cloud
- Enabled Defender plans for key workloads  
- Reviewed and remediated security recommendations  
- Configured continuous export of alerts to SIEM  

## 📊 Governance & Monitoring
- Standardized tagging model (env, owner, criticality)  
- Enabled activity logs and diagnostics per subscription  
- Periodic review of high-risk resources  

This overview summarizes a pragmatic Azure hardening approach aligned with enterprise constraints and operational reality.
