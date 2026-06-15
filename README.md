# Body Donation Management API

A FastAPI and SQLite demonstration project inspired by a real-world donor management: https://turbo-trout-w5rr4gj6pr7c94r-8000.app.github.dev/docs 

## Features

* Donor registration and management
* Medical history tracking
* Next of Kin management
* Funeral home management
* Donor profile aggregation
* REST API with Swagger documentation

## Technologies

* Python
* FastAPI
* SQLite
* SQLAlchemy
* GitHub Codespaces

## API Endpoints

### Donors

* GET /donors
* GET /donors/{id}
* GET /donors/{id}/profile

### Medical History

* GET /donors/{id}/medical-history

### Next of Kin

* GET /donors/{id}/next-of-kin

### Funeral Homes

* GET /funeral-homes

## Database Design

The project includes:

* donors
* medical_history
* next_of_kin
* relationships
* funeral_homes
* embalming

## Demo Data

The database contains fictional Game of Thrones–inspired records for demonstration purposes only.

## Run Locally

```bash
pip install -r requirements.txt
uvicorn app.main:app --reload
```

Open:

http://localhost:8000/docs

to access the Swagger API documentation.
