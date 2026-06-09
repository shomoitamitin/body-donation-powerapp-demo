-- Relationship: 
INSERT INTO relationships (id, relationship_name) VALUES
(1, 'Spouse'),
(2, 'Sibling'),
(3, 'Parent'),
(4, 'Friend'),
(5, 'Mother'),
(6, 'Partner'),
(7, 'Child'),
(8, 'Guardian'),
(9, 'Aunt'),
(10, 'Uncle'),
(11, 'Cousin'),
(12, 'Grandparent'),
(13, 'Grandchild'),
(14, 'Legal Representative'),
(15, 'Executor');
-- tblFH insert
INSERT INTO funeral_homes (
    id,
    name,
    first_name,
    last_name,
    address1,
    address2,
    city,
    state,
    zip,
    phone,
    fax,
    email,
    conversation_log,
    additional_notes,
    review,
    archive
)
VALUES
(1, 'Winterfell Funeral Home', 'Eddard', 'Stark', '100 Stark Way', NULL, 'Winterfell', 'North', '57001', '555-3001', '555-3101', 'winterfell.funeral@demo.com', 'Initial demo contact completed', 'Serves Winterfell and northern region', 1, 0),

(2, 'Dragonstone Memorial Services', 'Davos', 'Seaworth', '200 Dragon Road', NULL, 'Dragonstone', 'Crownlands', '57002', '555-3002', '555-3102', 'dragonstone.memorial@demo.com', 'Demo contact verified', 'Handles Dragonstone service requests', 1, 0),

(3, 'Casterly Rock Funeral Care', 'Tyrion', 'Lannister', '300 Lion Avenue', NULL, 'Casterly Rock', 'Westerlands', '57003', '555-3003', '555-3103', 'casterly.care@demo.com', 'Demo contact verified', 'Associated with western region cases', 1, 0),

(4, 'Kings Landing Mortuary', 'Qyburn', 'Advisor', '400 Crown Street', 'Suite 10', 'Kings Landing', 'Crownlands', '57004', '555-3004', '555-3104', 'kingslanding.mortuary@demo.com', 'Initial demo contact completed', 'Handles Crownlands and capital cases', 1, 0),

(5, 'Riverrun Funeral Services', 'Edmure', 'Tully', '500 River Road', NULL, 'Riverrun', 'Riverlands', '57005', '555-3005', '555-3105', 'riverrun.services@demo.com', 'Demo contact verified', 'Serves Riverlands region', 1, 0);
-- tbl Donor insertion 
INSERT INTO donors (
    id, first_name, last_name, title, dob, dod, cause_of_death,
    gender, occupation, city, state, phone, email,
    initial_contact, studies, veteran, tag_number
)
VALUES
(1, 'Jon', 'Snow', 'Mr', '1986-01-01', '2025-01-10', 'Hypothermia', 'M', 'Night Watch Officer', 'Winterfell', 'North', '555-1001', 'jon.snow@demo.com', '2024-11-01', 'Anatomy', 1, 5001),
(2, 'Daenerys', 'Targaryen', 'Ms', '1988-05-12', '2025-02-01', 'Burn Injury', 'F', 'Queen', 'Dragonstone', 'Crownlands', '555-1002', 'daenerys.targaryen@demo.com', '2024-11-02', 'Neurology', 0, 5002),
(3, 'Tyrion', 'Lannister', 'Mr', '1980-03-15', '2025-02-15', 'Natural Causes', 'M', 'Hand of the Queen', 'Casterly Rock', 'Westerlands', '555-1003', 'tyrion.lannister@demo.com', '2024-11-03', 'Anatomy', 0, 5003),
(4, 'Arya', 'Stark', 'Ms', '1995-07-20', '2025-03-01', 'Sea Accident', 'F', 'Explorer', 'Winterfell', 'North', '555-1004', 'arya.stark@demo.com', '2024-11-05', 'Forensics', 0, 5004),
(5, 'Sansa', 'Stark', 'Mrs', '1992-02-11', '2025-03-10', 'Natural Causes', 'F', 'Lady of Winterfell', 'Winterfell', 'North', '555-1005', 'sansa.stark@demo.com', '2024-11-07', 'Anatomy', 0, 5005),
(6, 'Bran', 'Stark', 'Mr', '1994-04-17', '2025-03-15', 'Fall Injury', 'M', 'Historian', 'Winterfell', 'North', '555-1006', 'bran.stark@demo.com', '2024-11-08', 'Neurology', 0, 5006),
(7, 'Cersei', 'Lannister', 'Mrs', '1978-09-01', '2025-04-01', 'Structural Collapse', 'F', 'Queen Regent', 'Kings Landing', 'Crownlands', '555-1007', 'cersei.lannister@demo.com', '2024-11-10', 'Anatomy', 0, 5007),
(8, 'Jaime', 'Lannister', 'Mr', '1978-09-01', '2025-04-01', 'Structural Collapse', 'M', 'Knight', 'Kings Landing', 'Crownlands', '555-1008', 'jaime.lannister@demo.com', '2024-11-10', 'Anatomy', 1, 5008),
(9, 'Robb', 'Stark', 'Mr', '1987-05-02', '2025-04-10', 'Combat Injury', 'M', 'King in the North', 'Winterfell', 'North', '555-1009', 'robb.stark@demo.com', '2024-11-12', 'Trauma Study', 1, 5009),
(10, 'Catelyn', 'Stark', 'Mrs', '1968-08-15', '2025-04-15', 'Trauma', 'F', 'Noblewoman', 'Riverrun', 'Riverlands', '555-1010', 'catelyn.stark@demo.com', '2024-11-15', 'Anatomy', 0, 5010),
(11, 'Ned', 'Stark', 'Mr', '1965-03-20', '2025-05-01', 'Execution', 'M', 'Lord', 'Winterfell', 'North', '555-1011', 'ned.stark@demo.com', '2024-11-16', 'Anatomy', 1, 5011),
(12, 'Khal', 'Drogo', 'Mr', '1979-06-11', '2025-05-10', 'Infection', 'M', 'Warlord', 'Vaes Dothrak', 'Essos', '555-1012', 'khal.drogo@demo.com', '2024-11-18', 'Pathology', 1, 5012),
(13, 'Jorah', 'Mormont', 'Mr', '1972-01-12', '2025-05-15', 'Combat Injury', 'M', 'Knight', 'Bear Island', 'North', '555-1013', 'jorah.mormont@demo.com', '2024-11-20', 'Anatomy', 1, 5013),
(14, 'Brienne', 'Tarth', 'Ms', '1985-02-22', '2025-05-20', 'Natural Causes', 'F', 'Knight', 'Tarth', 'Stormlands', '555-1014', 'brienne.tarth@demo.com', '2024-11-21', 'Musculoskeletal', 1, 5014),
(15, 'Theon', 'Greyjoy', 'Mr', '1988-11-11', '2025-06-01', 'Trauma', 'M', 'Sailor', 'Pyke', 'Iron Islands', '555-1015', 'theon.greyjoy@demo.com', '2024-11-22', 'Forensics', 0, 5015),
(16, 'Ygritte', 'Freefolk', 'Ms', '1990-12-01', '2025-06-10', 'Arrow Injury', 'F', 'Hunter', 'Beyond Wall', 'North', '555-1016', 'ygritte.freefolk@demo.com', '2024-11-25', 'Anatomy', 0, 5016),
(17, 'Samwell', 'Tarly', 'Mr', '1987-09-17', '2025-06-15', 'Natural Causes', 'M', 'Scholar', 'Horn Hill', 'Reach', '555-1017', 'samwell.tarly@demo.com', '2024-11-26', 'Neurology', 0, 5017),
(18, 'Gendry', 'Waters', 'Mr', '1991-04-04', '2025-06-20', 'Workplace Injury', 'M', 'Blacksmith', 'Kings Landing', 'Crownlands', '555-1018', 'gendry.waters@demo.com', '2024-11-27', 'Anatomy', 0, 5018),
(19, 'Missandei', 'Naath', 'Ms', '1992-03-03', '2025-07-01', 'Execution', 'F', 'Translator', 'Naath', 'Essos', '555-1019', 'missandei.naath@demo.com', '2024-11-28', 'Linguistics', 0, 5019),
(20, 'Davos', 'Seaworth', 'Mr', '1970-07-07', '2025-07-10', 'Natural Causes', 'M', 'Advisor', 'Dragonstone', 'Crownlands', '555-1020', 'davos.seaworth@demo.com', '2024-11-30', 'Anatomy', 1, 5020);

INSERT INTO medical_history (
    id, donor_id, joint_replacement, joint_replacement_age, joints,
    heart_surgery, heart_surgery_age, spine_surgery, spine_surgery_age,
    gall_bladder_removed, gall_bladder_removed_age,
    appendix_removed, appendix_removed_age,
    tonsils_removed, tonsils_removed_age,
    num_pregnancies, hysterectomy, hysterectomy_age,
    cesarean_section, cesarean_section_age,
    other_surgeries, cancer_history_treatment,
    illnesses, injuries, cadaver_utilization, additional_notes
)
VALUES
(1, 1, 0, NULL, 'None', 0, NULL, 0, NULL, 0, NULL, 1, 22, 1, 8, 0, 0, NULL, 0, NULL, 'None', 'None', 'None', 'Prior shoulder strain', 'Anatomy Lab', 'Demo record'),
(2, 2, 0, NULL, 'None', 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, 7, 0, 0, NULL, 0, NULL, 'None', 'None', 'Respiratory sensitivity', 'None', 'Neurology Lab', 'Demo record'),
(3, 3, 0, NULL, 'None', 0, NULL, 0, NULL, 1, 39, 1, 18, 1, 10, 0, 0, NULL, 0, NULL, 'Minor hand surgery', 'None', 'None', 'Old leg injury', 'Anatomy Lab', 'Demo record'),
(4, 4, 0, NULL, 'None', 0, NULL, 0, NULL, 0, NULL, 1, 16, 0, NULL, 0, 0, NULL, 0, NULL, 'None', 'None', 'None', 'Minor cuts and scars', 'Forensics Lab', 'Demo record'),
(5, 5, 0, NULL, 'None', 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, 9, 0, 0, NULL, 0, NULL, 'None', 'None', 'Migraine history', 'None', 'Anatomy Lab', 'Demo record'),
(6, 6, 0, NULL, 'None', 0, NULL, 1, 21, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 'Spinal stabilization', 'None', 'Neurological condition', 'Fall-related injury', 'Neurology Lab', 'Demo record'),
(7, 7, 1, 55, 'Knee', 0, NULL, 0, NULL, 1, 42, 0, NULL, 1, 6, 3, 1, 48, 1, 30, 'Cosmetic surgery', 'None', 'Hypertension', 'None', 'Anatomy Lab', 'Demo record'),
(8, 8, 0, NULL, 'None', 0, NULL, 0, NULL, 0, NULL, 1, 20, 1, 8, 0, 0, NULL, 0, NULL, 'Hand surgery', 'None', 'None', 'Hand injury', 'Anatomy Lab', 'Demo record'),
(9, 9, 0, NULL, 'None', 0, NULL, 0, NULL, 0, NULL, 1, 17, 0, NULL, 0, 0, NULL, 0, NULL, 'None', 'None', 'None', 'Combat injuries', 'Trauma Study', 'Demo record'),
(10, 10, 1, 58, 'Hip', 0, NULL, 0, NULL, 1, 50, 1, 19, 1, 9, 5, 0, NULL, 1, 31, 'None', 'None', 'Arthritis', 'Prior trauma', 'Anatomy Lab', 'Demo record');
