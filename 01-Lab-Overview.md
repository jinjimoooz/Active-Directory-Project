# Lab Overview

## Objective

Build an Active Directory environment from scratch using VMware Workstation to simulate a small enterprise network.

---

## Tools

- VMware Workstation
- Windows Server 2022
- Windows 11 Pro
- Active Directory Domain Services (AD DS)
- Group Policy Management
- DNS

## Network Diagram

```text
Host PC
│
└── VMware Workstation
    ├── DC01 (Windows Server 2022)
    │   ├── Active Directory Domain Services
    │   ├── DNS
    │   └── Shared Folders
    │
    └── CLIENT01 (Windows 11 Pro)
        ├── Domain Joined
        ├── Receives Group Policies
        └── Maps Network Drives
```

## Features

- Domain controller setup
- Active Directory users and groups
- Organizational Units (OUs)
- Group Policy Objects (GPOs)
- Shared folders and mapped network drives
- Domain join configuration
