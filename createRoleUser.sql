CREATE ROLE 'staff'@'localhost' , 'viewer'@'localhost';

GRANT ALL PRIVILEGES ON BreizhVideo.*
to staff;

GRANT SELECT ON BreizhVideo.*
to viewer;

CREATE USER 'Trystan' IDENTIFIED BY 'Password!';

GRANT staff
TO Trystan;

CREATE USER 'autre' IDENTIFIED BY 'Password!!';

GRANT SELECT ON BreizhVideo.* 
to autre;

GRANT INSERT ON BreizhVideo.preference
to autre;
 
