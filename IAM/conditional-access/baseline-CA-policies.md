# Conditional Access – Baseline Policies

This document provides a baseline set of Conditional Access (CA) policies aligned with Zero Trust principles and Microsoft security best practices.

## 🔐 1. Require MFA for All Users
**State:** Enabled  
**Target:** All users (exclude break-glass accounts)  
**Conditions:** Any location  
**Grant:** Require MFA  
**Session Controls:** None

## 🧱 2. Block Legacy Authentication
**State:** Enabled  
**Target:** All users  
**Client Apps:** Other clients / legacy protocols  
**Grant:** Block access  

## 🌍 3. Block High-Risk Countries
**State:** Enabled  
**Target:** All users  
**Conditions:** Specific countries (e.g., Russia, China, Iran…)  
**Grant:** Block access  

## 🔒 4. Require Compliant or Hybrid-Joined Device
**State:** Enabled  
**Target:** All users  
**Conditions:** All apps  
**Grant:** Require device to be compliant OR hybrid joined  

## 🛡 5. Require MFA for Admin Roles
**State:** Enabled  
**Target:** Privileged roles (Global Admin, Security Admin, etc.)  
**Grant:** Require MFA  
**Session Controls:** Sign-in frequency: 4 hours  

---

## 📌 Notes
- Emergency (break glass) accounts should be excluded and monitored separately.  
- Policies should be tested in report-only mode for 48–72 hours before enforcing.  
- IP ranges for corporate locations must be updated regularly.  

---

These baseline policies provide a strong Zero Trust foundation while preserving user productivity.
