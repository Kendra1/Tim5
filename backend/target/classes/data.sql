insert into authority (id, name) values (1, 'ADMIN')
insert into authority (id, name) values (2, 'USER')

INSERT INTO ACCOUNT (ID, USERNAME, PASSWORD, CONFIRMED, EMAIL, LAST_NAME, NAME) VALUES (789, 'aa', '$2a$10$9AG/inYS7fWOHPhxQCtd0Og2gVYnbhwFBUsHaAOek5QAKSQtWItRC', TRUE, 'aa', 'aa','aa')
INSERT INTO CINETER (ID, ADDRESS, CITY, IS_THEATER, NAME, SCORE) VALUES (1, 'Bulevar Mihajla Pupina', 'Novi Sad', 0, 'Arena Cineplex', 5)
INSERT INTO CINETER_ADMIN(ID, CINETER_ID) VALUES (789, 1)