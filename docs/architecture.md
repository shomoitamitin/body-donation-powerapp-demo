# System Architecture

## Overview

The Body Donation Power App Demo is designed as a multi-entity record management system.

## Core Entities

### Donors
Stores donor demographic and registration information.

### Medical History
Stores donor medical history and eligibility information.

### Embalming
Stores embalming records and related notes.

### Funeral Homes
Stores funeral home information associated with donors.

### Next of Kin (NOK)
Stores emergency contact and next-of-kin information.

## Relationships

Donor
├── Medical History
├── Embalming
├── Funeral Home
└── Next of Kin

## Technology Stack

- Microsoft Power Apps
- Power Fx
- Excel Online
- Power Automate
