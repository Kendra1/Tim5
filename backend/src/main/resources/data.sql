insert into authority (id, name) values (1, 'ADMIN')
insert into authority (id, name) values (2, 'USER')

INSERT INTO ACCOUNT (ID, USERNAME, PASSWORD, CONFIRMED, EMAIL, LAST_NAME, NAME) VALUES (789, 'aa', '$2a$10$9AG/inYS7fWOHPhxQCtd0Og2gVYnbhwFBUsHaAOek5QAKSQtWItRC', TRUE, 'aa', 'aa','aa')

INSERT INTO CINETER (ID, ADDRESS, CITY, IS_THEATER, NAME, SCORE) VALUES (56, 'Bulevar Mihajla Pupina', 'Novi Sad', false, 'Arena Cineplex', 5)
INSERT INTO CINETER (ID, ADDRESS, CITY, IS_THEATER, NAME, SCORE) VALUES (5, 'Višnjička 84', 'Beograd', false, 'Cineplexx Big Beograd', 5)
INSERT INTO CINETER (ID, ADDRESS, CITY, IS_THEATER, NAME, SCORE) VALUES (1, 'Terazije 29', 'Beograd', TRUE, 'Pozorište na Terazijama', 4)
INSERT INTO CINETER (ID, ADDRESS, CITY, IS_THEATER, NAME, SCORE) VALUES (2, 'Pozorišni trg 1', 'Novi Sad', TRUE, 'Srpsko narodno pozorište', 5)

INSERT INTO CINETER_ADMIN(ID, CINETER_ID, CHANGED_PASSWORD, IS_FAN_ZONE) VALUES (789, 56, FALSE, FALSE )


INSERT INTO SHOW (ID, DESCRIPTION, IS_MOVIE, NAME, CINETER_ID) VALUES (25, 'Životna komedija',false, 'CABARES CABAREI', 1)
INSERT INTO SHOW (ID, DESCRIPTION, IS_MOVIE, NAME, CINETER_ID) VALUES (22, 'Reditelj:	David Leitch',true, 'Deadpool 2', 5)
INSERT INTO SHOW (ID, DESCRIPTION, IS_MOVIE, NAME, CINETER_ID) VALUES (250, 'Rat između dobra i zla se nastavlja!',true, 'Osvetnici:Rat beskraja', 56)



INSERT INTO PROPS(ID, DESCRIPTION, NAME, PRICE, CINETER_ID) VALUES (7891, 'opis props1', 'Props1', 200, 56)
INSERT INTO PROPS(ID, DESCRIPTION, NAME, PRICE, CINETER_ID) VALUES (789, 'opis props2', 'Props2', 300, 56)
INSERT INTO PROPS(ID, DESCRIPTION, NAME, PRICE, CINETER_ID) VALUES (4896, 'opis props3', 'Props3', 1000, 56)