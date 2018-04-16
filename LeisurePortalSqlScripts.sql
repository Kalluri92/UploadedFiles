
CREATE DATABASE IF NOT EXISTS leisurePortal;

USE leisurePortal;

#All Drop Tables.

DROP TABLE IF EXISTS employee_offical_info;
DROP TABLE IF EXISTS employee_personal_info;
DROP TABLE IF EXISTS employee_list;





# ALL Create DB SCHEMA.


CREATE TABLE IF NOT EXISTS employee_list (employee_id VARCHAR(10), optional_data TEXT, PRIMARY KEY (employee_id));

CREATE TABLE IF NOT EXISTS employee_personal_info (
employee_id VARCHAR(10) NOT NULL UNIQUE,
employee_designation VARCHAR(30),
employee_designation_code VARCHAR(30),
first_name VARCHAR(50),
last_name VARCHAR(50),
office_email_id VARCHAR(50)  UNIQUE,
personal_email_id VARCHAR(50)  UNIQUE,
office_phone_number VARCHAR(15) UNIQUE,
personal_phone_number VARCHAR(15) UNIQUE,
blood_group VARCHAR(10),
emergency_info VARCHAR(500),
address VARCHAR(500),
date_of_birth DATE,
date_of_join DATE,
marriage_anniversary DATE,
relation VARCHAR(10),
achivements VARCHAR(1000),
hobbies VARCHAR(1000),
optional_data TEXT,
FOREIGN KEY (employee_id) REFERENCES employee_list (employee_id)
);


CREATE TABLE IF NOT EXISTS employee_offical_info (
employee_id VARCHAR(10) NOT NULL UNIQUE,
project_name VARCHAR(50),
project_code VARCHAR(50),
project_sub_group VARCHAR(50),
account_name VARCHAR(50),
account_code VARCHAR(50),
team_name VARCHAR(50),
team_code VARCHAR(50),
role_in_project VARCHAR(50),
reports_to VARCHAR(10),
optional_data TEXT,
FOREIGN KEY (employee_id) REFERENCES employee_list (employee_id),
FOREIGN KEY (reports_to) REFERENCES employee_list (employee_id)
);




# All Insert Data Related Statements.
INSERT INTO employee_list (employee_id) VALUES ('96691_FS');
INSERT INTO employee_list (employee_id) VALUES ('00001_FS');
INSERT INTO employee_list (employee_id) VALUES ('00002_FS');
INSERT INTO employee_list (employee_id) VALUES ('00003_FS');


INSERT INTO employee_personal_info VALUES (
	'96691_FS',
	'Associate Consultant',
	'B2',
	'Jaya Sai Krishna',
	'Kalluri',
	'jaya-sai-krishna.kalluri@capgemini.com',
	'kallurikrishna92@gmail.com',
	null,
	'+919492345152',
	'B+ve',
	'No Emergency Contatct',
	'Hyderabad , White Fields.',
	'1992-08-09',
	'2018-01-18',
	null,
	'Single',
	'MyAchivemts1,MyAchivements2',
	'MyHobbi1,MyHobby2',
	null
);

INSERT INTO employee_offical_info VALUES (
    '96691_FS',
    'Leisure Portal',
    'LP1',
    'FSGROUP',
    'ABN AMRO',
    'AMRO1',
    'Full Stack Developers',
    'FSD1',
    'FS Developer',
    '00001_FS',
    null
);
