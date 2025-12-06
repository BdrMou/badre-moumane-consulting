# P1 Case Study (Redacted)

## 📌 Summary
A critical P1 incident involving compromised credentials resulting in unauthorized access attempts from a high-risk country.

## 📅 Timeline
- **09:12** – Identity Protection flagged High-Risk User  
- **09:14** – Conditional Access blocked multiple failed sign-ins  
- **09:15** – Security team alerted  
- **09:17** – User account disabled  
- **09:22** – Password reset + MFA re-enrollment  
- **09:30** – Full investigation initiated  

## 🧩 Detection
- Risk detections triggered by:
  - Impossible travel events  
  - Sign-in attempts from TOR exit nodes  
  - OAuth token anomalies  

## 🔍 Findings
- User credentials leaked via third-party phishing attack  
- No sign of lateral movement inside Microsoft 365  
- Risk events correlated with suspicious IP ranges  

## 🛠 Containment
- Account disabled immediately  
- Password reset performed  
- Revoked refresh tokens  
- Forced MFA re-registration  
- Added country block to Conditional Access  

## 🔐 Root Cause
Compromised password reused outside corporate environment.

## 🛡 Preventive Actions
- Mandatory MFA enforcement  
- User awareness communication  
- Additional CA policies (risk-based sign-in)  
- Monitoring improvements in Azure AD Identity Protection  
