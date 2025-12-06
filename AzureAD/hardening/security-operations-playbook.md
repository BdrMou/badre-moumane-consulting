# Security Operations Playbook

Standard playbook for handling identity and cloud security incidents.

## 📌 Scope
Covers incidents involving:
- Compromised credentials  
- Suspicious sign-in patterns  
- High-risk Azure AD users  
- Malware alerts from Defender  
- OAuth abuse  

---

## 🛠 Immediate Containment Steps
1. Disable user account  
2. Revoke refresh tokens  
3. Reset password  
4. Force MFA re-registration  
5. Block risky countries in CA  
6. Check OAuth grants  
7. Review device compliance  

---

## 🔍 Investigation Checklist
- Analyze AAD sign-in logs  
- Check impossible travel events  
- Review Identity Protection alerts  
- Validate if lateral movement occurred  
- Inspect mailbox audit logs (EXO)  
- Check Teams, SharePoint sharing logs  

---

## 🔐 Remediation
- Implement missing CA policies  
- Strengthen MFA  
- Add device compliance requirements  
- Remove unused OAuth apps  
- Harden admin roles and PIM policies  

---

## 🛡 Post-Incident Governance
- Update documentation  
- Adjust Zero Trust policies  
- Review exceptions  
- Provide user awareness training  
