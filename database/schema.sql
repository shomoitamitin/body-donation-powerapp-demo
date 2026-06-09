-- SQLite schema will be added here
-- Donor Table 
CREATE TABLE donors (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    title TEXT,
    dob DATE,
    dod DATE,
    cause_of_death TEXT,
    gender TEXT,
    occupation TEXT,
    city TEXT,
    state TEXT,
    phone TEXT,
    email TEXT,
    initial_contact DATE,
    studies TEXT,
    veteran BOOLEAN,
    tag_number INTEGER
);
