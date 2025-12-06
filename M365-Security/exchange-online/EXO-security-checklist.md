# Exchange Online Security Checklist

This document summarizes key security controls for securing mail flow and protecting accounts in Exchange Online.

## 📧 Authentication & Access
- Enforce MFA for all users  
- Disable legacy authentication protocols  
- Block basic auth (POP/IMAP/SMTP AUTH)  
- Enable OAuth for secure modern authentication  

## 🛡 Anti-Spam / Anti-Phishing
- Enable ATP anti-phishing policies  
- Configure impersonation protection (trusted senders & domains)  
- Set Phish Threshold: Default to “Standard” or “Aggressive”  
- Enable mailbox intelligence  

## 📥 Mail Flow Rules (Transport Rules)
- Auto-flag external emails  
- Block executable attachments  
- Encrypt messages containing sensitive data  
- Add disclaimers for external domains  

## 🔐 Malware Protection
- Enable zero-hour auto purge (ZAP)  
- Configure Safe Attachments (ATP)  
- Set notifications for detected malware  

## 🔍 Audit & Monitoring
- Enable mailbox audit logging  
- Monitor non-owner mailbox access  
- Track high-volume email sending  
- Enable unified audit log retention  

## 🧱 DMARC, DKIM, SPF
- SPF configured and validated  
- DKIM enabled for all domains  
- DMARC enforcement at `quarantine` or `reject`  

---

This checklist aligns with Microsoft's recommended Exchange Online security baseline for enterprise tenants.
