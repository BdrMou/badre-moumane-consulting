# Azure Governance Baseline

This document outlines governance standards for managing Azure resources securely and consistently.

## 📁 Resource Organization
- Use Management Groups for hierarchy (Corp, Prod, NonProd)  
- Subscriptions per environment or workload  
- Enforced naming convention:
  - RG-<App>-<Env>
  - VM-<App>-<Function>
  - KV-<App>

## 🏷 Tagging Policies
Mandatory tags:
- Owner  
- Environment  
- CostCenter  
- Sensitivity  

Azure Policy enforces tag presence at creation time.

## 🧱 RBAC Model
- No direct Owner/Contributor unless justified  
- Use least-privilege custom roles  
- Visibility roles for auditors  
- Break-glass account stored in Key Vault  

## 🔐 Security Baseline
- Defender for Cloud enabled (minimum plan)  
- Just-In-Time VM Access enabled  
- NSG mandatory for all subnets  
- Public IPs only allowed via Firewall or AppGW  

## 🔍 Monitoring
- Activity logs exported to Log Analytics  
- Alerts for:
  - VM creation  
  - NSG rule changes  
  - Role assignments  
  - Failed auth from unknown locations  

## 📦 Cost Governance
- Budgets configured per subscription  
- Daily cost anomaly alerts  
- Auto shutdown for non-prod VMs  

---

This baseline provides strong governance for enterprise Azure deployments.
