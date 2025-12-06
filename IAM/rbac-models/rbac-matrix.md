# RBAC Matrix Example

## Overview
Role-Based Access Control (RBAC) structure mapping business roles to permissions and Azure AD groups.

## RBAC Matrix

| Role              | Permissions                         | AAD Group             | Application Access     |
|-------------------|--------------------------------------|------------------------|-------------------------|
| HR-Reader         | Read HR documents                    | AAD-HR-Read            | HR Portal (read-only)   |
| HR-Manager        | Manage HR files, approve workflows   | AAD-HR-Manager         | HR Portal (edit)        |
| Finance-Admin     | Modify finance data                  | AAD-FIN-Admin          | Finance System (admin)  |
| IT-Support-L1     | Reset passwords, basic troubleshooting | AAD-IT-L1            | Azure AD Portal (limited) |
| IT-Support-L3     | Full identity lifecycle operations   | AAD-IT-L3              | Azure AD / M365 admin   |

## Principles
- No direct user permissions  
- Groups manage access  
- Role catalog is reviewed quarterly  
- Least privilege applied systematically  
