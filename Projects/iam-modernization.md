# IAM Modernization Project

## 📌 Overview
Identity & Access Management modernization to move from legacy, group-based access to a role-based, policy-driven model integrated with Azure AD.

## 🧩 Scope
- Migration from on-prem AD groups to Azure AD roles / groups  
- RBAC model design (business & technical roles)  
- Joiners–Movers–Leavers process improvement  
- MFA and Conditional Access rollout  

## 🎯 Objectives
- Reduce privilege sprawl  
- Standardize access patterns  
- Increase auditability and compliance  
- Align with Zero Trust principles  

## 🔐 RBAC & Governance
- Designed role catalog (business roles, IT roles, admin roles)  
- Mapped roles to Azure AD groups and app-specific roles  
- Implemented approval workflows for sensitive roles  
- Defined periodic access review process  

## 🔄 Lifecycle (JML)
- Defined identity lifecycle states (Pre-joiner, Active, Suspended, Leaver)  
- Automated provisioning and deprovisioning via scripts / tools  
- Integrated HR data as source of truth  

## 🛡 Security Controls
- Enforced MFA for all high-privilege roles  
- Introduced tiered admin model  
- Applied Conditional Access based on risk, device, and location  

## 🏁 Outcome
- Reduced adhoc access and shadow admin roles  
- Improved auditability and compliance reporting  
- Faster onboarding/offboarding with fewer manual steps  
- Stronger security posture with better governance.
