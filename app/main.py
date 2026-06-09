from fastapi import FastAPI
from sqlalchemy import text
from app.database import SessionLocal
from app.schemas import DonorCreate

app = FastAPI(title="Body Donation API")


@app.get("/")
def home():
    return {"message": "Body Donation API is running"}


@app.get("/donors")
def get_donors():
    db = SessionLocal()

    result = db.execute(text("""
        SELECT 
            id,
            first_name,
            last_name,
            title,
            dob,
            dod,
            cause_of_death,
            gender,
            occupation,
            city,
            state,
            email,
            studies,
            veteran,
            tag_number
        FROM donors
    """))

    donors = []
    for row in result:
        donors.append(dict(row._mapping))

    db.close()
    return donors

@app.get("/donors/{donor_id}")
def get_donor(donor_id: int):
    db = SessionLocal()

    result = db.execute(text("""
        SELECT *
        FROM donors
        WHERE id = :donor_id
    """), {"donor_id": donor_id})

    donor = result.fetchone()
    db.close()

    if donor is None:
        return {"message": "Donor not found"}

    return dict(donor._mapping)
@app.get("/donors/{donor_id}/medical-history")
def get_donor_medical_history(donor_id: int):
    db = SessionLocal()

    result = db.execute(text("""
        SELECT *
        FROM medical_history
        WHERE donor_id = :donor_id
    """), {"donor_id": donor_id})

    medical_history = result.fetchone()
    db.close()

    if medical_history is None:
        return {"message": "Medical history not found"}

    return dict(medical_history._mapping)
@app.get("/donors/{donor_id}/next-of-kin")
def get_donor_next_of_kin(donor_id: int):
    db = SessionLocal()

    result = db.execute(text("""
        SELECT 
            nok.id,
            nok.donor_id,
            nok.first_name,
            nok.last_name,
            r.relationship_name,
            nok.phone,
            nok.email,
            nok.primary_nok,
            nok.conversation_log,
            nok.additional_notes
        FROM next_of_kin nok
        LEFT JOIN relationships r
            ON nok.relationship_id = r.id
        WHERE nok.donor_id = :donor_id
    """), {"donor_id": donor_id})

    next_of_kin = []
    for row in result:
        next_of_kin.append(dict(row._mapping))

    db.close()
    return next_of_kin
@app.get("/funeral-homes")
def get_funeral_homes():
    db = SessionLocal()

    result = db.execute(text("""
        SELECT *
        FROM funeral_homes
    """))

    funeral_homes = []
    for row in result:
        funeral_homes.append(dict(row._mapping))

    db.close()
    return funeral_homes
@app.get("/donors/{donor_id}/profile")
def get_donor_profile(donor_id: int):
    db = SessionLocal()

    donor_result = db.execute(text("""
        SELECT *
        FROM donors
        WHERE id = :donor_id
    """), {"donor_id": donor_id})

    donor = donor_result.fetchone()

    if donor is None:
        db.close()
        return {"message": "Donor not found"}

    medical_result = db.execute(text("""
        SELECT *
        FROM medical_history
        WHERE donor_id = :donor_id
    """), {"donor_id": donor_id})

    nok_result = db.execute(text("""
        SELECT 
            nok.id,
            nok.first_name,
            nok.last_name,
            r.relationship_name,
            nok.phone,
            nok.email,
            nok.primary_nok
        FROM next_of_kin nok
        LEFT JOIN relationships r
            ON nok.relationship_id = r.id
        WHERE nok.donor_id = :donor_id
    """), {"donor_id": donor_id})

    profile = {
        "donor": dict(donor._mapping),
        "medical_history": dict(medical_result.fetchone()._mapping),
        "next_of_kin": [dict(row._mapping) for row in nok_result]
    }

    db.close()
    return profile
@app.post("/donors")
def create_donor(donor: DonorCreate):
    db = SessionLocal()

    result = db.execute(text("""
        INSERT INTO donors (
            first_name, last_name, title, dob, dod, cause_of_death,
            gender, occupation, city, state, phone, email,
            initial_contact, studies, veteran, tag_number
        )
        VALUES (
            :first_name, :last_name, :title, :dob, :dod, :cause_of_death,
            :gender, :occupation, :city, :state, :phone, :email,
            :initial_contact, :studies, :veteran, :tag_number
        )
    """), donor.model_dump())

    db.commit()
    new_id = result.lastrowid
    db.close()

    return {
        "message": "Donor created successfully",
        "donor_id": new_id
    }