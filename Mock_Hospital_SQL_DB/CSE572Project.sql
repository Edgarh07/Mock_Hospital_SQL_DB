
--CSE 572 Final Project: Mock Hospital SQL Project
--Group Members: Jose Heredia, Erik Ramirez, Julia Golicova, Timothy Ramirez

--********************************************************************************************************************************************************************************************
-- Create Table Statments
-- Create PERSONS Table:
-- This Table contains all identifying for either a patient or doctor.
CREATE TABLE PERSONS(
    PERSON_ID number(4) primary key,
    FIRST_NAME varchar2(20) NOT NULL,
    LAST_NAME varchar2(20) NOT NULL,
    SEX char(1) CONSTRAINT persons_sex_CK CHECK(sex IN ('F', 'M')),
    PHONE_NUMBER varchar2(17),
    DOB varchar2(12) NOT NULL,
    ADDRESS varchar2(30),
    CITY varchar2(20),
    ZIP number(5),
    STATE varchar2(4));

-- Create PATIENTS Table:
-- This table contains patients medical record.
CREATE TABLE PATIENTS(
    PERSON_ID number(4),
    BLOOD_TYPE varchar2(4),
    VACCINATIONS varchar2(40),
    ASSIGNED_DOCTOR number(4),
    HOSPITAL_ID number(4),
    INSURANCE_ID number(4),
    SYMPTOMS varchar2(125));

-- Create DOCTORS Table:
-- This table contains doctors residency and specialization.
CREATE TABLE DOCTORS(
   DOCTOR_ID number(4),
   SPECIALIZATION VARCHAR(18),
   HOSPITAL_ID    number(4));

-- Create HOSPITALS Table:
-- This table contains hospital information.
CREATE TABLE HOSPITALS(
   HOSPITAL_ID number(4) PRIMARY KEY,
   HOSPITAL_NAME VARCHAR2(27),
   ADDRESS VARCHAR2(23),
   CITY VARCHAR2(13),
   ZIP number(8),
   STATE VARCHAR2(2));

-- Create INSURANCES Table:
-- This table contains insurance company and the type of coverage the insurance compnay has.
CREATE TABLE INSURANCES(
    INSURANCE_ID number(4) primary key,
    PROVIDER varchar2(40),
    COVERAGE varchar2(10) CONSTRAINT insurance_coverage_CK CHECK(coverage IN ('HMO', 'PPO')));

-- Create COMMUNITY Table:
-- This table contains the social media data where the patient or doctor can go answer questions or post questions.
CREATE TABLE COMMUNITY(
    PERSON_ID number(4),
    CHATROOM varchar2(255),
    FAQ varchar2(255),
    SUPPORTGROUP varchar2(255),
    BLOG varchar2(255));

--********************************************************************************************************************************************************************************************
-- Insert Statments for all tables
-- Insert statements for PERSONS table:
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (6886,'Mary','Parks','F','(577) 964-5364','7/19/76','7528 Young Dr.','Oshkosh',50842,'WI');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (1846,'Letitia','Randall','F','(688) 813-4368','12/15/78','226 East El Dorado Street','Redlyn',60016,'ME');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (3812,'Hector','Figueroa','M','(522) 872-6357','11/13/50','182 North Lower River Dr.','Battle Creek',72026,'MT');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (2086,'Emily','Serrano','F','(226) 610-4428','10/5/51','9407 Walnut Avenue','Kings Fork',14843,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (7238,'Sybil','Kramer','M','(208) 941-0962','8/4/55','9167 SW. Greenview Street','Hoover',75436,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (8590,'Bruce','Ball','M','(274) 923-0869','10/21/65','7107 Philmont St.','Aina Haina',29303,'ID');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (958,'Gustavo','Ross','M','(994) 686-0332','3/16/64','78 Corona Dr.','El Macero',48350,'TN');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (5802,'Shelton','Gill','M','(648) 542-2778','12/30/64','842 Cherry Hill Dr.','Herberts Corner',49961,'ID');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (8810,'Kelvin','Lane','M','(487) 535-6383','10/23/80','180 St Paul Ave.','Lawrence',31567,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (554,'Shawn','Brown','M','(203) 623-0830','10/29/52','585 Hanover Dr.','Youngstown',46680,'TX');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (6295,'Liza','Hays','F','(839) 347-5990','5/7/51','391 Lancaster Street','Islamabad',18655,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (389,'Eduardo','Lowery','M','(954) 557-0275','3/7/88','66 Pilgrim Drive','Niamey',99578,'TN');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (4438,'Chauncey','Hicks','F','(788) 261-9752','12/28/11','87 Amherst Street','Mission Dorado',30732,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (9887,'Goldie','Guerrero','F','(749) 286-5906','11/13/76','54 Tanglewood Rd.','Avon',33388,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (5093,'Cory','Blair','M','(580) 873-7347','3/12/90','219 Brewery Street','Plaistow',62704,'ID');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (8422,'Numbers','Melton','M','(866) 911-4990','12/10/99','232 Vernon St.','Waterbury',62631,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (2231,'Abe','Pham','M','(522) 304-2482','5/19/91','992 Thatcher Lane','Panama City',85212,'TN');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (6813,'Carroll','Lucero','F','(426) 267-2989','8/20/85','7346 Albany Lane','Huntington',67106,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (5828,'Elijah','Marsh','M','(566) 849-7759','8/26/63','7703 Gainsway St.','Fairfield',79830,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (1637,'Leola','Cox','F','(754) 934-6418','4/29/90','8505 North Colonial Lane','Union City',51238,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (1078,'Saul','Dougherty','M','(947) 233-1110','6/25/64','44 North New Saddle Ave.','Irvine',48437,'ID');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (5567,'Tammy','Romero','F','(303) 564-0774','8/21/17','988 W. Clay St.','Alhambra',24078,'TX');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (269,'Emmitt','Abbott','M','(657) 689-9874','11/11/82','8982 Lawrence St.','Houston',60033,'TN');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (6656,'Nadine','Crane','F','(548) 491-4712','8/12/60','10 Oak Meadow Drive','Davis',13148,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (7511,'Israel','Townsend','M','(662) 658-8869','8/18/58','4 Lafayette St.','Midwest City',36528,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (1925,'Broderick','Banks','M','(804) 903-1743','3/28/62','230 Depot Street','Rapid City',90802,'FL');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (6060,'Aron','Morris','M','(724) 915-2813','8/14/71','8410 Edgemont Road','Arden-arcade',34797,'ID');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (8859,'Bernardo','Middleton','M','(532) 655-9265','10/24/80','989 Heritage Ave.','Oslo',77597,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (9227,'Stefanie','Perkins','F','(692) 610-4761','8/11/10','9 North Carson Road','Guaynabo',15901,'TX');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (6963,'Elnora','Kennedy','F','(699) 960-4286','7/6/72','9336 East Indian Spring Street','Bogot',20751,'FL');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (421,'Douglas','Quinn','M','(496) 713-6314','1/24/62','180 Hauser Ct S','Hope',47246,'IN');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (9438,'Burt','Sexton','M','(871) 435-4687','6/13/93','24 Peabody Pl','Franklin',3235,'NH');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (4689,'Lynn','Larson','F','(990) 926-4752','5/11/99','759 State 1917 Rte','Providence',42450,'KY');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (2943,'Sylvia','Mcfarland','F','(230) 574-9647','10/23/09','29 Cumberland Vlg','Carmichaels',15320,'PA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (8201,'Diann','Mueller','F','(256) 949-3230','9/3/98','112 Big Mountain Rd','East Bank',25067,'WV');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (29,'Ines','Pitts','M','(880) 906-2958','12/18/06','112 Sussex St','Buffalo',14215,'NY');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (8188,'Loyd','Hurst','M','(296) 265-2569','8/26/04','3065 Lienhart Rd','Dansville',48819,'MI');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (9047,'Gayle','Mclean','F','(489) 510-0680','8/20/65','222 E Jackson Ave','Ashburn',11364,'GA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (1394,'Berry','Garrison','M','(460) 660-6393','4/21/05','5749 228th St','Oakland Gardens',11364,'NY');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (7421,'Colton','Macdonald','M','(937) 718-6303','12/20/65','717 Elm St','Minneapolis',67467,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (896,'Kay','Good','F','(290) 780-1027','10/4/54','12 Hathaway Ln','Manchester',6040,'ID');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (6143,'Samual','Arellano','M','(857) 601-9760','5/5/07','317 Briarwood Dr','Poplar Grove',61065,'CA');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (1389,'Herbert','Parsons','M','(264) 413-3150','10/9/87','818 Goldfinch Ct','La Valle',53941,'TN');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (1924,'Johnathan','Burton','M','(202) 398-5923','10/18/60','6231 Green Valley Cir','Culver City',90230,'OR');
INSERT INTO PERSONS(PERSON_ID,FIRST_NAME,LAST_NAME,SEX,PHONE_NUMBER,DOB,ADDRESS,CITY,ZIP,STATE) VALUES (3232,'Wade','Reyes','M','(738) 643-2346','10/17/11','78 Brainerd Rd','Allston',2134,'TX');


-- Insert statements for PATIENTS table:
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (6886,'B-','Measles, Rotavirus, Polio, Tetanus',4689,10,9097,'headaches, partial paralysis, numbness in extremities, loss of hearing, blackened flesh, difficulty urinating');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (1846,'A+','Zoster, Pertussis',1389,50,8244,'uncontrollable bleeding, disorientation, difficulty swallowing, visual hallucinations, unusually-colored mucus, delusions');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (3812,'A+','rubella, Hepatitis B',8201,20,9097,'disorientation, delusions, swollen throat');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (2086,'A+','Influenza, Pneumococcal',9438,10,6638,'fragile bones, difficulty urinating, loss of appetite, tingling in extremities');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (7238,'O+','Haemophilus, Measles',9047,30,0230,'seizures, ashen skin, muscle aches');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (8590,'AB-','Hepatitis A, Influenza',896,40,0500,'excessive sweating, blurred vision, burning rashes');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (958,'A+','Yellow fever, Rotavirus',4689,10,9592,'auditory hallucinations, difficulty swallowing, swollen joints');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (5802,'AB-','Polio (IPV), mumps',1394,30,8244,'irritability, difficulty swallowing, blackened flesh, diminished senses');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (8810,'B+','Meningococcal, Diphtheria',421,10,0245,'muscle aches, low fever, unusually-colored mucus, rashes, fatigue');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (554,'B-','tetanus, Varicella (chickenpox)',6143,40,9937,'painful rashes, eye irritation, drowsiness');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (6295,'O+','Rotavirus, Zoster',1394,30,3975,'runny nose, loss of appetite, visual hallucinations, rashes, loss of hearing');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (389,'AB+',NULL,29,20,0230,'thick mucus, bloating, sore throat, black spots');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (4438,'A+','Yellow fever, Haemophilus',2943,20,7886,'painful rashes, drowsiness, loss of coordination, nausea');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (9887,'A-','Pneumococcal, Measles',1389,50,0500,'memory loss, red eyes, numbness in extremities');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (5093,'O+',NULL,8201,20,7886,'paranoia, moodiness, hair loss, sore throat, low fever');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (8422,'A-','Pertussis, Varicella (chickenpox)',1924,50,8244,'rashes, disorientation, partial blindness');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (2231,'AB+','rubella, Zoster',2943,20,0245,'seizures, swollen extremities, difficulty urinating, coughing, muscle spasms');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (6813,'B+','Hepatitis A, Meningococcal',7421,40,0230,'irritability, sneezing, swollen glands, difficulty breathing');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (5828,'B+','tetanus, Pertussis',8188,30,9937,'coughing, vomiting, loss of appetite, delusions, black spots');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (1637,'AB-','mumps, Yellow fever',9438,10,0245,'delusions, stiffness in joints, blackened flesh, numbness in extremities');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (1078,'B+','Meningococcal, Varicella (chickenpox)',421,10,0500,'difficulty concentrating, muscle weakness, disorientation');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (5567,'B-','Pneumococcal, Hepatitis B',3232,50,9097,'loss of appetite, partial blindness, partial paralysis');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (269,'O+','Diphtheria, Measles',896,40,9592,'moodiness, partial paralysis, numbness in extremities');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (6656,'A+','Hepatitis A, tetanus',29,20,7886,'diminished senses, slurred speech, hair loss, black spots');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (7511,'O-','Influenza, mumps',6143,40,9937,'stuffy nose, runny nose, sore throat, red spots, swollen throat, eye irritation');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (1925,'AB-','Pertussis, Influenza',3232,50,6638,'numbness in extremities, excessive sweating, impaired cognitive abilities, drowsiness, headaches');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (6060,'A+',NULL,9047,30,3975,'slurred speech, moodiness, visual hallucinations');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (8859,'A-',NULL,8188,30,3975,'bloating, loss of coordination, unpleasant smell, loss of appetite');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (9227,'B-','rubella, Polio (IPV)',1924,50,9592,'low fever, itching rashes, nausea, painful rashes');
INSERT INTO PATIENTS(PERSON_ID,BLOOD_TYPE,VACCINATIONS,ASSIGNED_DOCTOR,HOSPITAL_ID,INSURANCE_ID,SYMPTOMS) VALUES (6963,'O+','Zoster, Rotavirus',7421,40,6638,'oozing sores, red eyes, numbness, low fever');


-- Insert statements for DOCTORS table:   
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (421,'PEDIATRICS',10);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (9438,'ANESTHESIOLOGY',10);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (4689,'SURGERY',10);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (2943,'PEDIATRICS',20);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (8201,'ANESTHESIOLOGY',20);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (29,'NEUROLOGY',20);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (8188,'FAMILY MEDICINE',30);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (9047,'ANESTHESIOLOGY',30);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (1394,'NEUROLOGY',30);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (7421,'PEDIATRICS',40);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (896,'SURGERY',40);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (6143,'NEUROLOGY',40);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (1389,'SURGERY',50);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (1924,'EMERGENCY MEDICINE',50);
INSERT INTO DOCTORS(DOCTOR_ID,SPECIALIZATION,HOSPITAL_ID) VALUES (3232,'ANESTHESIOLOGY',50);


-- Insert statements for HOSPITALS table:
INSERT INTO HOSPITALS(HOSPITAL_ID,HOSPITAL_NAME,ADDRESS,CITY,ZIP,STATE) VALUES (10,'Oakdale General Hospital','8327 East Young Drive','Pittsford',11776,'NY');
INSERT INTO HOSPITALS(HOSPITAL_ID,HOSPITAL_NAME,ADDRESS,CITY,ZIP,STATE) VALUES (20,'Parkview Community Hospital','7123 Devon St.','Spring Valley',10977,'NY');
INSERT INTO HOSPITALS(HOSPITAL_ID,HOSPITAL_NAME,ADDRESS,CITY,ZIP,STATE) VALUES (30,'Edgewater Hospital','40 Nut Swamp Ave.','Astoria',11102,'NY');
INSERT INTO HOSPITALS(HOSPITAL_ID,HOSPITAL_NAME,ADDRESS,CITY,ZIP,STATE) VALUES (40,'Spring Grove Medical Center','75 Pulaski Lane','Rosedale',11422,'NY');
INSERT INTO HOSPITALS(HOSPITAL_ID,HOSPITAL_NAME,ADDRESS,CITY,ZIP,STATE) VALUES (50,'Angelstone General Hospita','7455 Glen Eagles Street','Shirley',11967,'NY');


-- Insert statements for INSURANCES table: 
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (0230,'UnitedHealth','HMO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (6638,'Kaiser Foundation','HMO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (8244,'Anthem Inc.','PPO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (3975,'Humana','PPO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (0245,'CVS','HMO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (9592,'Health Care Service Corporation (HCSC)','PPO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (9937,'Centene Corp','PPO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (9097,'Cigna Health','HMO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (7886,'Wellcare','HMO');
INSERT INTO INSURANCES(INSURANCE_ID,PROVIDER,COVERAGE) VALUES (0500,'Molina Healthcare Inc.','PPO');


-- Insert statements for COMMUNITY table:
INSERT INTO COMMUNITY(PERSON_ID,CHATROOM,FAQ,SUPPORTGROUP,BLOG) VALUES (6886,'Healthful Chat','Q: What are the clinical features of COVID-19?','Doctors Guide','Seatle Mama Doc');
INSERT INTO COMMUNITY(PERSON_ID,CHATROOM,FAQ,SUPPORTGROUP,BLOG) VALUES (1846,'BigHealth Chat','Q: Who is at risk for COVID-19?','Disease Support (USA)','Ask Dr. Spind');
INSERT INTO COMMUNITY(PERSON_ID,CHATROOM,FAQ,SUPPORTGROUP,BLOG) VALUES (5802,'GoodHealth Chat','Q: When is someone infectious?','Genetics Interest Group','Ask Dr. John');
INSERT INTO COMMUNITY(PERSON_ID,CHATROOM,FAQ,SUPPORTGROUP,BLOG) VALUES (4438,'Health Today Chat','Q: Can people who recover from COVID-19 be infected again?','GeneGroup','Dr. Phil');
INSERT INTO COMMUNITY(PERSON_ID,CHATROOM,FAQ,SUPPORTGROUP,BLOG) VALUES (5567,'Greens Chat','Q: How is COVID-19 treated?','The Patient Association','Family Physician');

--********************************************************************************************************************************************************************************************
-- Create Foriegn Key Statements to connect all tables to appropriate person/information
alter table PATIENTS
    add constraint person_id_fk foreign key (person_id) references persons(person_id) ON DELETE CASCADE;

alter table PATIENTS
    add constraint hospital_id_fk foreign key (hospital_id) references hospitals(hospital_id) ON DELETE CASCADE;

alter table PATIENTS
    add constraint assigned_doctor_fk foreign key (assigned_doctor) references persons(person_id) ON DELETE CASCADE;

alter table PATIENTS
    add constraint insurance_id_fk foreign key (insurance_id) references insurances(insurance_id) ON DELETE CASCADE;

alter table DOCTORS
    add constraint doctor_id_fk foreign key (doctor_id) references persons(person_id) ON DELETE CASCADE;

alter table DOCTORS
    add constraint hospitals_id_fk foreign key (hospital_id) references hospitals(hospital_id) ON DELETE CASCADE;

alter table COMMUNITY
    add constraint persons_id_fk foreign key (person_id) references persons(person_id) ON DELETE CASCADE;

--********************************************************************************************************************************************************************************************
--Queries to display results of insert statements
select * from persons order by person_id ;
select * from patients order by person_id ;
select * from doctors order by doctor_id ;
select * from hospitals order by hospital_id ;
select * from insurances order by insurance_id ;

--********************************************************************************************************************************************************************************************
-- Statements for creating View Tables
-- Patients Records View Table
CREATE or REPLACE VIEW PATIENT_RECORDS AS
    SELECT
        PE.PERSON_ID,
        PE.FIRST_NAME || ' ' || PE.LAST_NAME AS "Patient",
        PA.BLOOD_TYPE,
        PA.VACCINATIONS,
        PA.ASSIGNED_DOCTOR,
        PA.HOSPITAL_ID,
        PA.INSURANCE_ID,
        PA.SYMPTOMS
    FROM
        PERSONS PE JOIN PATIENTS PA
        ON PE.PERSON_ID = PA.PERSON_ID;

-- Create Patients table that shows patients name and Isurance they have
CREATE or REPLACE VIEW PATIENT_INSURANCE AS
    SELECT
        PE.PERSON_ID,
        PE.FIRST_NAME || ' ' || PE.LAST_NAME AS "Patient",
        PA.INSURANCE_ID,
        I.PROVIDER,
        I.COVERAGE
    FROM
        ((PERSONS PE JOIN PATIENTS PA
        ON PE.PERSON_ID = PA.PERSON_ID)
        JOIN INSURANCES I
        ON PA.INSURANCE_ID = I.INSURANCE_ID);

-- Create View table that shows Doctors info and what residency they have
create or replace view DOCTOR_VU (DOCTOR_ID, DOCTOR_NAME, PHONE_NUMBER, SPECIALIZATION, RESIDENCY)
    as select d.doctor_id, p.first_name  || ' ' || p.last_name, p.phone_number, d.specialization, h.hospital_name
        from doctors d, persons p, hospitals h
            where d.doctor_id = p.person_id and d.hospital_id = h.hospital_id;

--********************************************************************************************************************************************************************************************
--Queries to display results of the View Tables created
select * from PATIENT_RECORDS;
select * from PATIENT_INSURANCE;
select * from DOCTOR_VU;

--********************************************************************************************************************************************************************************************
-- Example Queries
-- Example 1
--Query to shoe the vaccinations for patiend 5093
SELECT VACCINATIONS
FROM PATIENTS
WHERE PERSON_ID = 5093;

-- Example 2
-- Query that shows the specialization of a doctor with doctor id of 1394
SELECT SPECIALIZATION
FROM DOCTORS
WHERE DOCTOR_ID = 1394;

-- Example 3
-- Query to show all patients records
SELECT
    PE.PERSON_ID,
    PE.FIRST_NAME || ' ' || PE.LAST_NAME AS "Patient",
    PA.BLOOD_TYPE,
    PA.VACCINATIONS,
    PA.ASSIGNED_DOCTOR,
    PA.HOSPITAL_ID,
    PA.INSURANCE_ID,
    PA.SYMPTOMS
FROM
    PERSONS PE JOIN PATIENTS PA
    ON PE.PERSON_ID = PA.PERSON_ID;

-- Example 4
-- Query to show all doctors and patients that attend Oakdale General Hospital
select p.person_id, p.first_name, p.last_name, h.hospital_name
    from persons p, doctors d, hospitals h, patients pa
        where p.person_id = d.doctor_id and p.person_id = pa.person_id and h.hospital_id = d.hospital_id 
            and h.hospital_id = pa.hospital_id and h.hospital_id = 10;

--********************************************************************************************************************************************************************************************
-- Update Statements
-- Example 1
-- update FAQ for person with person_ID = 6886
update COMMUNITY
    set faq = 'Do I have the Corona Virus?'
        where person_id = 6886;

-- Show updated Info
select person_id, faq
    from community
        where person_id = 6886;

-- Example 2
-- update phone number for person with ID = 8590
update PERSONS
    set phone_number = '(555) 555-5555'
        where person_id = 8590;

-- Show updated Info
select first_name, last_name, phone_number
    from persons
        where person_id = 8590;

--********************************************************************************************************************************************************************************************
-- Delete Statements
--Example 1
-- Delete Mary Parks from database
DELETE FROM Persons WHERE first_name = 'Mary' and last_name = 'Parks';

-- Show that Mary was deleted from table
select * from Persons;

-- Example 2
DELETE FROM DOCTORS WHERE doctor_id = 421;

-- Show that doctor was deleted
select * from doctors;

--********************************************************************************************************************************************************************************************
-- Statements to drop foreign key constraints added above
ALTER TABLE PATIENTS
DROP CONSTRAINT person_id_fk;

ALTER TABLE PATIENTS
DROP CONSTRAINT hospital_id_fk;

ALTER TABLE PATIENTS
DROP CONSTRAINT assigned_doctor_fk;

ALTER TABLE PATIENTS
DROP CONSTRAINT insurance_id_fk;

ALTER TABLE DOCTORS
DROP CONSTRAINT doctor_id_fk;

ALTER TABLE DOCTORS
DROP CONSTRAINT hospitals_id_fk;

ALTER TABLE COMMUNITY
DROP CONSTRAINT persons_id_fk;

--********************************************************************************************************************************************************************************************
-- Delete(Drop) tables
drop table PERSONS;
drop table PATIENTS;
drop table DOCTORS;
drop table HOSPITALS;
drop table INSURANCES;
drop table COMMUNITY;