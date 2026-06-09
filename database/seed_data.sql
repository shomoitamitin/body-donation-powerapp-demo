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
