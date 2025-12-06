# Azure AD Security Hardening Baseline

This document outlines a recommended Azure AD security baseline for enterprise environments.

## 🔐 1. Identity Protection
- Enable User Risk Policy (automatic password reset)  
- Enable Sign-In Risk Policy (force MFA)  
- Monitor risk detections weekly  
- Block high-risk users automatically  

## 🧱 2. Privileged Access
- Limit Global Admins to 2–4 accounts  
- Require MFA + Conditional Access for all admins  
- Enforce Privileged Identity Management (PIM)  
- Require justification for elevation  
- Enable approval workflow for critical roles  

## 📡 3. MFA Enforcement
- Enforce MFA for all users  
- Exclude ONLY break-glass accounts  
- Require modern authentication everywhere  
- Block legacy authentication  

## 🌐 4. Conditional Access Standards
- Block countries with high threat levels  
- Require compliant devices for Microsoft 365  
- Restrict admin access to compliant or hybrid-joined devices  
- Sign-in frequency: 1–7 days depending on role  

## 📁 5. Authentication Methods
- Disable SMS-only MFA  
- Enforce Authenticator app  
- Enable FIDO2 keys for admin accounts  

## 🔍 6. Monitoring & Auditing
- Enable Azure AD audit logs retention  
- Export logs to Log Analytics or Sentinel  
- Monitor non-interactive sign-ins  
- Alert on impossible travel  

---

This baseline follows Zero Trust principles and aligns with Microsoft’s recommended practices for securing identities.
