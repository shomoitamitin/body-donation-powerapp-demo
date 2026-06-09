from pydantic import BaseModel
from typing import Optional


class DonorCreate(BaseModel):
    first_name: str
    last_name: str
    title: Optional[str] = None
    dob: Optional[str] = None
    dod: Optional[str] = None
    cause_of_death: Optional[str] = None
    gender: Optional[str] = None
    occupation: Optional[str] = None
    city: Optional[str] = None
    state: Optional[str] = None
    phone: Optional[str] = None
    email: Optional[str] = None
    initial_contact: Optional[str] = None
    studies: Optional[str] = None
    veteran: Optional[bool] = False
    tag_number: Optional[int] = None