# Zero Trust Roadmap

## 📌 Vision
Move from perimeter-based security to a Zero Trust model where identity, device, and context drive access decisions.

## 🧩 Core Principles
- Never trust, always verify  
- Assume breach  
- Least privilege access  

## 🗺 Roadmap Phases

### Phase 1 – Foundations
- Enforce MFA for all users  
- Block legacy authentication  
- Enable basic Conditional Access (MFA, compliant devices)  
- Start logging and monitoring for Azure AD and M365  

### Phase 2 – Identity-Centric Controls
- Roll out Identity Protection policies  
- Introduce risk-based Conditional Access  
- Harden admin accounts and implement PIM  
- Define and enforce RBAC across Azure / M365  

### Phase 3 – Device & App Controls
- Require compliant or hybrid-joined devices for key apps  
- Integrate endpoint security (Defender, MDM)  
- Segment access by app sensitivity (HR, Finance, Admin)  

### Phase 4 – Continuous Improvement
- Regular review of CA policies and exceptions  
- Automate reporting and governance checks  
- Extend Zero Trust concepts to on-prem and third-party apps  

## 📊 Governance
- Define clear ownership (Security, IAM, Infrastructure)  
- Align roadmap with business priorities and budget  
- Communicate changes to end users and stakeholders  

This roadmap provides a pragmatic, phased path to implementing Zero Trust in an enterprise environment using Azure AD and Microsoft 365.


## 🔐 Technical Controls Mapping

### Identity
- MFA enforced for all users  
- Conditional Access based on risk, device, network  
- Identity Protection enabled (risk policies)  
- PIM for privileged accounts  
- Passwordless options deployed (FIDO2 / Authenticator App)  

### Devices
- Require compliant or hybrid-joined devices  
- Defender for Endpoint onboarding  
- Device risk-based Conditional Access  
- Windows Hello for Business  

### Applications
- Enforce modern authentication  
- SSO via Azure AD for SaaS apps  
- Monitor OAuth grant activity  
- Approve only verified publisher apps  

### Network
- Block high-risk geographies  
- Limit access via Named Locations  
- Eliminate reliance on VPN where possible  

### Data
- Mandatory sensitivity labels  
- DLP policies across Exchange, Teams, SharePoint  
- Retention policies based on compliance  

---

## 🧪 Zero Trust Maturity Assessment
Level achieved across pillars:

| Pillar          | Level | Status |
|-----------------|-------|--------|
| Identity        | 3/4   | Advanced |
| Device          | 2/4   | Improving |
| Network         | 2/4   | Improving |
| Application     | 3/4   | Mature |
| Data            | 2/4   | Developing |

---

## 🏁 Final Outcome
- Shift away from perimeter-based security  
- Identity becomes the new control plane  
- Unified access governance  
- Reduced attack surface  
- Better monitoring and incident detection  
