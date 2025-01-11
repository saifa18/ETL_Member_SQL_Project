-------------------------------------------
-- DROP tables and sequences
-------------------------------------------
 
--drop tables
DROP TABLE member_phone;
DROP TABLE members;
DROP TABLE members_acquired;

---- IF needed - drop table members_dw;
--DROP TABLE members_dw;
 
----Drop sequences
drop sequence member_id_sq;
drop sequence phone_id_sq;

-------------------------------------------
-- CREATE sequences 
-------------------------------------------
-- CREATE SEQUENCE FOR members
CREATE SEQUENCE member_id_sq
START WITH 1101 INCREMENT BY 1;

--Create sequence for member phone_id
CREATE SEQUENCE phone_id_sq
START WITH 101 INCREMENT BY 1;

 
-------------------------------------------
-- CREATE tables 
-------------------------------------------
CREATE TABLE members
(
    member_id         NUMBER(10)     DEFAULT member_id_sq.NEXTVAL PRIMARY KEY,
    first_name        VARCHAR(40)    NOT NULL,
    middle_name       VARCHAR(40),
    last_name         VARCHAR(40)    NOT NULL,
    email_address     VARCHAR(100)   UNIQUE NOT NULL CHECK(LENGTH(email_address) >= 7),
    address           VARCHAR(100)   NULL,
    city              VARCHAR(40)    NULL,
    state             CHAR(2)        NULL,
    zip_code          CHAR(5)        NULL  
);

CREATE TABLE member_phone
(
    phone_id     NUMBER(10)  DEFAULT phone_id_sq.NEXTVAL PRIMARY KEY,
    phone_number CHAR(12),
    member_id    NUMBER(10),
    phone_type   VARCHAR(10),
    CONSTRAINT member_id_fk2 FOREIGN KEY (member_id) REFERENCES members (member_id)
);

 
-----------create table newly acquired riders
CREATE TABLE members_acquired (
    acquired_member_id   NUMBER          PRIMARY KEY,
    MA_First_Name        VARCHAR(40)     NOT NULL,
    MA_Last_Name         VARCHAR(50)     NOT NULL,
    MA_Phone             CHAR(10)        NOT NULL,
    MA_Email             VARCHAR(50)     UNIQUE      NOT NULL,
    MA_Address           VARCHAR(40)     NOT NULL,
    MA_zip_code          CHAR(5)         NOT NULL
);


                    
-------------------------------------------
-- INSERT statements
-------------------------------------------
--insert members
REM INSERTING into MEMBERS
SET DEFINE OFF;
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1001,'Fernandina','C','McCleary','fmccleary0@shinystat.com','03691 Commercial Parkway;','Dayton','OH','45419');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1002,'Jeannette',null,'Douberday','jdouberday1@guardian.co.uk','89 Ronald Regan Center;','Phoenix','AZ','85083');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1003,'Aidan','Orrin','Farrier','afarrier2@paginegialle.it','63 Transport Court;PO Box 90609','Lincoln','NE','68510');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1004,'Mitch','Joell','Guilloneau','mguilloneau3@furl.net','08 Vahlen Hill;','Peoria','IL','61635');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1005,'Erika','F','Croxton','ecroxton4@npr.org','69133 Elmside Pass;','Tulsa','OK','74116');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1007,'Shelby','Barbara-anne','Lesaunier','slesaunier6@clickbank.net','77780 Dunning Terrace;','Washington','DC','20226');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1008,'Burton','Felisha','Kneebone','bkneebone7@bing.com','1 Mandrake Road;','Saint Louis','MO','63150');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1009,'Susy','Val','Huguet','shuguet8@intel.com','996 Sachs Crossing;','Washington','DC','20436');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1010,'Audra','J','Dumphy','adumphy9@economist.com','7751 Boyd Way','Charlottesville','VA','22908');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1011,'Kelsey','Celinda','Goodsir','kgoodsira@ucoz.ru','7243 Fairview Crossing;PO Box 46136','Indianapolis','IN','46202');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1012,'Der',null,'Poupard','dpoupardb@ask.com','10 Thompson Crossing;','San Jose','CA','95173');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1013,'Fayth','Amata','Perfitt','fperfittc@studiopress.com','8134 Main Alley;Suite 89','Littleton','CO','80126');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1014,'Kori','E','Stuttman','kstuttmand@goo.ne.jp','731 Melrose Pass;','Mobile','AL','36605');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1015,'Barnie','Minerva','Stife','bstifee@hugedomains.com','6175 Washington Park;Apt 1074','Minneapolis','MN','55407');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1016,'Natty',null,'Lillow','nlillowf@weebly.com','2 Parkside Plaza;','Littleton','CO','80127');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1017,'Thorvald','M','Geraldini','tgeraldinig@google.com.au','70401 Gulseth Junction;','Minneapolis','MN','55412');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1018,'Nerita','Selina','Baselli','nbasellih@goo.gl','20 Fair Oaks Place;13th Floor','Jamaica','NY','11407');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1019,'Nickolai','Dynah','Stephens','nstephensi@boston.com','3 Ruskin Lane;','San Antonio','TX','78255');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1021,'Cheslie','Willi','Dunguy','cdunguyk@elpais.com','4 Linden Court;','Rochester','NY','14609');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1022,'Kamila',null,'Lailey','klaileyl@thetimes.co.uk','677 Londonderry Drive','Miami','FL','33164');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1023,'Dilan','Salli','Rowter','drowterm@angelfire.com','36 Utah Court;Apt 352','Baltimore','MD','21216');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1025,'Noel','W','Leaver','nleavero@opensource.org','44 Fallview Pass;','Chesapeake','VA','23324');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1026,'Carlynne',null,'Fairham','cfairhamp@goo.ne.jp','60594 Spaight Pass;','Alexandria','VA','22313');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1027,'Kalle','Gerardo','Stanbrooke','kstanbrookeq@si.edu','0 Esker Park;','San Francisco','CA','94105');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1028,'Nike','W','Regenhardt','nregenhardtr@free.fr','1 Sycamore Parkway;','Albany','NY','12205');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1029,'Broddy','A','Claypole','bclaypoles@sciencedirect.com','24987 Ilene Terrace;','Washington','DC','20310');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1030,'Wain','Leanor','Yurenev','wyurenevt@godaddy.com','0341 Drewry Place;','Los Angeles','CA','90030');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1031,'Kassie','Benoit','Ghiroldi','kghiroldiu@webnode.com','08 Magdeline Court;','Hartford','CT','06160');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1032,'Far',null,'Wilse','fwilsev@exblog.jp','81 Autumn Leaf Parkway;','Miami','FL','33175');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1033,'Teriann','F','Grassot','tgrassotw@51.la','52 Jenifer Place;','Dallas','TX','75210');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1034,'Algernon','Ring','Le Fevre','alefevrex@meetup.com','276 Hayes Road;','Columbia','SC','29203');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1035,'Ali','Gabriele','Budgeon','abudgeony@state.tx.us','67 Anzinger Court;','Baton Rouge','LA','70894');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1036,'Alysia','Katy','Heape','aheapez@naver.com','1129 Mesta Terrace;','Decatur','GA','30089');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1037,'Fernanda',null,'Puttergill','fputtergill10@cnet.com','781 Kinsman Hill;','Conroe','TX','77305');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1038,'Durand','L','Manis','dmanis11@scribd.com','54 Sundown Lane;','Saint Paul','MN','55146');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1039,'Wilek','Nester','McSpirron','wmcspirron12@plala.or.jp','52 Eliot Parkway;','Pasadena','CA','91186');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1040,'Farr','Eydie','Lightollers','flightollers13@tuttocitta.it','872 Northfield Lane;','Sacramento','CA','95838');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1041,'Frederich','Berta','Mackley','fmackley14@nhs.uk','23 Dottie Park;','South Bend','IN','46699');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1042,'Irwin',null,'Swann','iswann15@home.pl','52 Summer Ridge Drive;','Aurora','IL','60505');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1043,'Bert','Clerissa','Rosenwald','brosenwald16@tamu.edu','777 Coleman Place','Arlington','VA','22205');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1044,'Darcey','Odetta','Pierri','dpierri17@nature.com','6 Badeau Crossing;Room 873','Harrisburg','PA','17105');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1046,'Portie',null,'Baterip','pbaterip19@noaa.gov','1999 Autumn Leaf Pass;Apt 555','Alexandria','VA','22301');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1047,'Fritz','W','Abelson','fabelson1a@psu.edu','62107 Grayhawk Center;PO Box 94234','West Palm Beach','FL','33405');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1048,'Ursala','Hannah','Wildash','uwildash1b@t.co','08361 Londonderry Place;12th Floor','San Antonio','TX','78278');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1049,'Monica',null,'Trousdale','mtrousdale1c@privacy.gov.au','21 Fieldstone Center;3rd Floor','Duluth','MN','55805');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1050,'Starr','Koressa','Korda','skorda1d@tuttocitta.it','0 Morningstar Crossing;','Milwaukee','WI','53285');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1051,'Claudina',null,'Kobieriecki','ckobieriecki1e@google.nl','43645 Lotheville Point;','Chattanooga','TN','37416');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1052,'Zechariah',null,'Fance','zfance1f@engadget.com','8 Florence Hill;','Young America','MN','55557');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1053,'Beale','A.','Garza','bgarza1g@tuttocitta.it','3054 Ridgeview Pass','Norfolk','VA','23504');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1054,'Lorry','Phyllis','Volet','lvolet1h@sitemeter.com','3862 Lakewood Pass;','Baton Rouge','LA','70815');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1055,'Olivero','P','Towll','otowll1i@wunderground.com','15898 Loeprich Parkway;','Washington','DC','20557');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1056,'Misty','Charmine','Cabbell','mcabbell1j@blog.com','1 Elgar Avenue;','San Angelo','TX','76905');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1057,'Colette',null,'Atger','catger1k@unblog.fr','5 Barby Alley','New Haven','CT','06533');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1058,'Averell','Udale','Boorman','aboorman1l@netlog.com','44 Kim Hill;','Little Rock','AR','72222');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1059,'Hermon','Jermaine','Lappine','hlappine1m@patch.com','477 5th Avenue;','Bloomington','IN','47405');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1060,'Wyn','N','Suttie','wsuttie1n@weather.com','43278 Graedel Center;','Minneapolis','MN','55446');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1061,'Jorgan','Alicia','Pharo','jpharo1o@scribd.com','22081 Eliot Pass;','Humble','TX','77346');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1062,'Barny',null,'Waghorne','bwaghorne1p@apache.org','8 Banding Crossing;','Topeka','KS','66622');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1063,'Alvis','Celle','Peyes','apeyes1q@wsj.com','3258 Nelson Crossing;','Flushing','NY','11355');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1064,'Berenice','H','Handke','bhandke1r@vkontakte.ru','920 Nancy Circle;','Philadelphia','PA','19172');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1065,'Herculie','Beverie','McLae','hmclae1s@economist.com','822 Sutteridge Avenue;','Albany','GA','31704');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1066,'Corine','Woodie','Cundey','ccundey1t@wisc.edu','6 Mallory Alley;','Houston','TX','77281');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1067,'Drucy','B','Assante','dassante1u@ed.gov','9685 Ilene Parkway;','South Bend','IN','46614');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1068,'Shepperd',null,'Ausello','sausello1v@java.com','5 Fordem Hill;','Miami','FL','33261');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1069,'Denys','Shina','Milroy','dmilroy1w@fda.gov','12103 Dayton Trail;20th Floor','Saint Louis','MO','63116');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1070,'Sioux','L','Simka','ssimka1x@xing.com','60702 Huxley Junction;','Tampa','FL','33625');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1072,'Malissa','Eli','Norcliffe','mnorcliffe1z@simplemachines.org','47 Briar Crest Park','Bozeman','MT','59771');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1073,'Harmonia','Terrie','Poff','hpoff20@opera.com','97 Butterfield Alley;','Whittier','CA','90610');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1074,'Sayre','K.','Linturn','slinturn21@narod.ru','10 Elmside Junction;','Panama City','FL','32405');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1075,'Ranice','Levey','Clougher','rclougher22@aboutads.info','675 Gina Drive;Suite 14','South Lake Tahoe','CA','96154');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1076,'Chicky','Jaquenette','Spadaro','cspadaro23@reuters.com','03609 Fordem Point;','Knoxville','TN','37939');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1077,'Sibelle',null,'Seymark','sseymark24@hubpages.com','09663 Ruskin Avenue;8th Floor','Jersey City','NJ','07305');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1078,'Jacobo','Norine','Annandale','jannandale25@cam.ac.uk','4 Waxwing Court;Suite 69','Clearwater','FL','34620');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1079,'Maximo','Judi','McGenn','mmcgenn26@patch.com','7751 Pennsylvania Alley;','Buffalo','NY','14210');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1081,'Marieann','Christopher','Jorck','mjorck28@xinhuanet.com','63148 Hanson Way','Reading','PA','19610');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1082,'Berton','M','Rubega','brubega29@wordpress.org','6 Morningstar Place;','Staten Island','NY','10305');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1083,'Lothario',null,'Duckworth','lduckworth2a@buzzfeed.com','1729 Dapin Drive;','Port Saint Lucie','FL','34985');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1085,'Issi','D','Danilyak','idanilyak2c@sciencedaily.com','874 Loomis Way;','Columbus','GA','31914');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1086,'Zelma','Davon','Shreeves','zshreeves2d@virginia.edu','221 Algoma Center;','Peoria','IL','61640');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1089,'Madelle',null,'Skehens','mskehens2g@opensource.org','59 Russell Circle','Fort Lauderdale','FL','33305');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1090,'Rebecka','Midge','Negus','rnegus2h@edublogs.org','6273 Atwood Junction;','Corpus Christi','TX','78410');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1092,'Dian','R','Jirak','djirak2j@yahoo.co.jp','37616 Burrows Lane;','Gainesville','FL','32605');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1094,'Guss',null,'Hasley','ghasley2l@youtube.com','6 Columbus Avenue;Room 700','Tucson','AZ','85732');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1097,'Connie','G.','Dungay','cdungay2o@vinaora.com','21985 Grim Hill;Suite 12','Bronx','NY','10469');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1099,'Joellen',null,'Sharkey','jsharkey2q@tinypic.com','1128 Del Sol Lane;Room 380','Charlotte','NC','28225');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1100,'Meriel','Beryl','Remon','mremon2r@webmd.com','33182 Starling Way','Boulder','CO','80310');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1188,'April','May','Month','AMMonth@yahoo.com','97277 Algoma Lane','Greensboro','NC','27404');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1084,'Colene','C','Pilgram','cpilgram2b@abc.net.au','88678 Hazelcrest Avenue;','Everett','WA','98206');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1087,'Beatriz','Iolanthe','Sebright','bsebright2e@unblog.fr','040 Lotheville Terrace;','Jacksonville','FL','32230');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1091,'Shay',null,'Fritche','sfritche2i@tinyurl.com','4 Arrowood Junction;','Cincinnati','OH','45233');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1093,'Francesca','Austina','Kirkwood','fkirkwood2k@skyrock.com','771 Katie Court;','Jamaica','NY','11407');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1096,'Thaine','Phillipe','Thurby','tthurby2n@deviantart.com','5 Nelson Court;','Seattle','WA','98195');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1098,'Oates','Christophorus','McLorinan','omclorinan2p@bbc.co.uk','29486 Melrose Avenue;','San Francisco','CA','94105');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1006,'Agathe',null,'Rudloff','arudloff5@parallels.com','74 Buhler Avenue','Washington','DC','20551');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1020,'Webster','Lenee','Monier','wmonierj@newyorker.com','436 Saint Paul Terrace','New Haven','CT','06538');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1024,'Cinderella','Duff','Gauche','cgauchen@seattletimes.com','2 Graedel Way','Anchorage','AK','99522');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1045,'Nettle','Gertrud','Pindar','npindar18@t-online.de','3 Heath Avenue','Gainesville','FL','32610');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1071,'Brooke',null,'Aspland','baspland1y@accuweather.com','31575 Mayer Avenue','Richmond','VA','23203');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1080,'Serene','Tove','Faich','sfaich27@mac.com','526 Bunting Point','El Paso','TX','79923');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1088,'Cynthia','Vale','Maddrah','cmaddrah2f@t-online.de','727 Express Parkway','Montpelier','VT','05609');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1095,'Erika','Heloise','Londesborough','elondesborough2m@ca.gov','69 Superior Road','San Antonio','TX','78220');
Insert into MEMBERS (MEMBER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ADDRESS,ADDRESS,CITY,STATE,ZIP_CODE) values (1177,'Mary','Marie','Williams','mmwilliams@gmail.com','0156 Granby Junction','Helena','MT','59623');
commit;


-- Insert phone numbers for members
SET DEFINE OFF;
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (1,'248-391-9522',1001,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (2,'583-193-5314',1002,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (3,'305-280-3617',1003,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (4,'409-780-8870',1004,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (5,'617-883-5935',1005,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (6,'535-236-4061',1006,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (7,'264-107-4670',1007,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (8,'574-654-3998',1008,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (9,'205-101-1844',1009,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (10,'360-855-6708',1010,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (11,'703-355-5455',1011,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (12,'419-787-8913',1012,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (13,'978-921-0558',1013,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (14,'200-349-1998',1014,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (15,'853-118-6586',1015,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (16,'734-248-5138',1016,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (17,'428-655-6858',1017,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (18,'720-545-9133',1018,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (19,'721-488-6967',1019,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (20,'774-995-8454',1020,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (21,'778-391-5540',1021,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (22,'850-794-4841',1022,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (23,'254-733-2620',1023,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (24,'667-104-0008',1024,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (25,'371-526-3849',1025,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (26,'849-788-7058',1026,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (27,'571-454-5070',1027,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (28,'989-243-6610',1028,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (29,'386-392-8807',1029,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (30,'194-867-6474',1030,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (31,'544-980-1818',1031,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (32,'395-551-1449',1032,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (33,'975-169-0863',1033,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (34,'912-229-7227',1034,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (35,'434-906-3867',1035,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (36,'582-356-3635',1036,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (37,'623-581-8379',1037,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (38,'778-229-4657',1038,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (39,'899-248-8632',1039,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (40,'751-883-7164',1040,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (41,'262-966-2880',1041,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (42,'226-369-1150',1042,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (43,'336-956-2538',1043,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (44,'272-523-8129',1044,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (45,'444-693-4661',1045,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (46,'505-837-0680',1046,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (47,'728-729-3491',1047,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (48,'814-829-9588',1048,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (49,'907-438-4869',1049,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (50,'852-660-8702',1050,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (51,'922-874-9626',1051,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (52,'843-509-1250',1052,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (53,'109-907-6747',1053,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (54,'272-997-0944',1054,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (55,'715-623-4631',1055,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (56,'631-162-3226',1056,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (57,'810-487-5199',1057,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (58,'324-576-2426',1058,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (59,'220-228-5423',1059,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (60,'488-877-0214',1060,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (61,'507-407-0899',1061,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (62,'706-512-0693',1062,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (63,'155-296-0867',1063,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (64,'492-165-5767',1064,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (65,'459-920-0409',1065,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (66,'500-795-5905',1066,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (67,'771-762-1747',1067,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (68,'504-426-1533',1068,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (69,'680-736-4706',1069,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (70,'123-796-2306',1070,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (71,'907-906-3094',1071,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (72,'948-415-4779',1072,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (73,'399-353-3219',1073,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (74,'782-234-2209',1074,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (75,'672-300-6385',1075,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (76,'207-778-0424',1076,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (77,'341-225-6507',1077,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (78,'184-473-3813',1078,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (79,'157-164-6805',1079,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (80,'343-270-9082',1080,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (81,'340-535-8829',1081,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (82,'359-308-9899',1082,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (83,'481-332-9289',1083,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (84,'894-815-6001',1084,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (85,'278-929-1670',1085,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (86,'633-545-8707',1086,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (87,'322-694-3945',1087,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (88,'731-323-4281',1088,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (89,'776-596-9628',1089,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (90,'555-938-7047',1090,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (91,'257-192-0047',1091,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (92,'671-573-0677',1092,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (93,'111-847-9984',1093,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (94,'227-275-7383',1094,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (95,'661-906-3079',1095,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (96,'832-453-0350',1096,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (97,'793-179-6413',1097,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (98,'643-596-8119',1098,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (99,'906-876-2482',1099,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (100,'436-606-7259',1100,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (101,'938-251-0293',1188,'P');
Insert into MEMBER_PHONE (PHONE_ID,PHONE_NUMBER,MEMBER_ID,PHONE_TYPE) values (102,'550-883-3857',1177,'P');


Commit;

 
SET DEFINE OFF;
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1080,'Ammamaria','Giannoni','8333748412','AmGiannoni@gmail.com','8 Linden Center,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1081,'Auberta','Stening','7042065128','AubeS@gmail.com','35560 Mayer Park,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1082,'Bowie','Barrim','3506984914','BowiB@gmail.com','296 Anniversary Terrace,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1083,'Brigitte','Velten','9298624986','BrigittVelte@gmail.com','4 Michigan Pass,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1084,'Charlean','Eckert','2091924307','CharEck@gmail.com','8817 Briar Crest Place,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1085,'Christi','Dubery','4361393713','ChrD@gmail.com','45 Gina Parkway,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1086,'Den','Shrubsall','8505391410','DenShrubs@gmail.com','6 Melody Drive,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1087,'Denys','Siddell','8709561345','DSiddell@gmail.com','39 Arizona Court,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1088,'Ediva','Itzkovsky','7805096017','EdivaItzkovsk@gmail.com','14172 Montana Way,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1089,'Emilee','Van der Beek','5557488252','EmilV@gmail.com','604 Eastwood Pass,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1090,'Erena','Stansbury','5835375490','EreStansbur@gmail.com','35 Gale Hill,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1091,'Farrand','Olrenshaw','6067471195','FarranOlrensh@gmail.com','39831 David Alley,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1092,'Gabe','Grono','4786131978','GabeGr@gmail.com','4 Browning Lane,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1093,'Gabriell','Bosnell','6755375445','GaBosnel@gmail.com','403 Hagan Street,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1094,'Gard','Duxbury','7189307965','GardDuxbury@gmail.com','34 Arrowood Pass,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1095,'Garvey','Rearden','7524077843','GarvRearden@gmail.com','09721 Lerdahl Drive,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1096,'Goldina','Dannehl','7944476136','GolDa@gmail.com','7 Red Cloud Circle,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1097,'Guglielma','Knowller','4557734226','GuglKnowller@gmail.com','9831 Dexter Circle,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1098,'Harriot','Deem','9737936268','HarDeem@gmail.com','6 Hazelcrest Parkway,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1099,'Hartley','Grassett','5506616745','HarGrass@gmail.com','7 Rusk Court,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1100,'Hedda','Slorach','7608092093','HeddaSlor@gmail.com','023 Fair Oaks Point,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1101,'Jerrie','Frackiewicz','6452725204','JerFrac@gmail.com','1643 Schiller Street,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1102,'Jobey','Gowdie','1222287936','JobeyGowdie@gmail.com','1 Washington Alley,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1103,'Lazare','Dreamer','4834254447','LazarDreamer@gmail.com','54 Sommers Park,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1104,'Lisle','Whittier','3198098139','LisW@gmail.com','81 Grasskamp Plaza,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1105,'Lissie','de Juares','5763378778','Lissiede J@gmail.com','09960 Esker Road,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1106,'Malanie','Greenside','7539402389','MGre@gmail.com','56 Holmberg Trail,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1107,'Manuel','Bellamy','8291675650','ManuB@gmail.com','77833 Holmberg Drive,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1108,'Marketa','Scroggie','4324483162','MarketaScroggie@gmail.com','319 Holy Cross Hill,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1109,'Marlowe','Scheu','3667123245','MarlowSc@gmail.com','2 Vera Crossing,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1110,'Micheil','Ben','6814889261','MicheilBen@gmail.com','53 Evergreen Pass,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1111,'Mikaela','Foukx','1649053764','MikaelaFo@gmail.com','2 La Follette Road,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1112,'Nicko','Aizikovitz','6275057491','NickoAi@gmail.com','91 Anderson Lane,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1113,'Pauletta','Jurkowski','6305589237','PJurkowski@gmail.com','3659 Esch Court,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1114,'Phip','Tamplin','7374684465','PhiTampli@gmail.com','52 Muir Point,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1115,'Raven','Aspinal','5728187421','RavenA@gmail.com','49249 Westend Circle,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1116,'Roldan','Sircombe','2179707861','RoldSir@gmail.com','139 Northport Parkway,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1117,'Steffen','Eddie','1322346359','SteffenEddie@gmail.com','95062 Continental Circle,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1118,'Stewart','Larking','3278073408','StewartLar@gmail.com','9906 Tomscot Road,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1119,'Terrie','Razzell','9806061925','TerrieRazzell@gmail.com','86 Sunbrook Way,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1120,'Trevar','Rotter','1491707982','TreRotter@gmail.com','5 Columbus Drive,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1121,'Veronike','Gallamore','5891714623','VeG@gmail.com','63903 Chive Drive,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1122,'Xenos','Brickdale','1851408865','XenoBrickda@gmail.com','30890 Dottie Pass,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1123,'Zara','Yoxall','9037009722','ZYoxall@gmail.com','22068 Mesta Circle,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1124,'Alleen','MacMearty','1124668672','AlleenMa@gmail.com','314 Maple Wood Crossing,Bend,OR','97703');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1125,'Allina','Diegan','6526597161','AllinaDiegan@gmail.com','034 Macpherson Alley,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1126,'Angel','Trelevan','4079045505','AngelTrelevan@gmail.com','8 Hansons Terrace,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1127,'Aurie','Slinn','8945153700','ASlinn@gmail.com','26 Oneill Lane,Bend,OR','97702');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1128,'Bradley','Sanderson','9898431199','BraSand@gmail.com','83044 American Alley,Bend,OR','97701');
Insert into MEMBERS_ACQUIRED (ACQUIRED_MEMBER_ID,MA_FIRST_NAME,MA_LAST_NAME,MA_PHONE,MA_EMAIL,MA_ADDRESS,MA_ZIP_CODE) values (1129,'Buckie','Sugar','1538091245','BuckiSugar@gmail.com','6910 Doe Crossing Street,Bend,OR','97703');


Commit;

 

