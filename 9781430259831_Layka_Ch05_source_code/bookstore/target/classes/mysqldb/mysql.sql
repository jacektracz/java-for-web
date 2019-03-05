CREATE TABLE CATEGORY (
ID INT NOT NULL AUTO_INCREMENT ,
CATEGORY_DESCRIPTION VARCHAR(20) NOT NULL ,
PRIMARY KEY (ID)
);

CREATE TABLE BOOK (
ID INT NOT NULL AUTO_INCREMENT,
CATEGORY_ID INT NOT NULL ,
BOOK_TITLE VARCHAR(60) NOT NULL,
PUBLISHER VARCHAR(60) NOT NULL ,
PRIMARY KEY (ID) ,
CONSTRAINT FK_BOOK_1 FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(ID)
);
CREATE TABLE AUTHOR (
ID INT NOT NULL AUTO_INCREMENT ,
BOOK_ID INT NOT NULL ,
FIRST_NAME VARCHAR(20) NOT NULL ,
LAST_NAME VARCHAR(20) NOT NULL ,
PRIMARY KEY (ID) ,
CONSTRAINT FK_AUTHOR_1 FOREIGN KEY (BOOK_ID) REFERENCES BOOK (ID)
);
insert into category (category_description) values ('Clojure');
insert into category (category_description) values ('Groovy');
insert into category (category_description) values ('Java');
insert into category (category_description) values ('Scala');

insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (1, 'Practical Clojure', 'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (2, 'Beginning Groovy, Grails and
Griffon', 'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (2, 'Definitive Guide to Grails 2',
'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (2, 'Groovy and Grails Recipes',
'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Modern Java Web Development',
'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Java 7 Recipes', 'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Java EE 7 Recipes', 'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Beginning Java 7 ', 'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Pro Java 7 NIO.2', 'Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Java 7 for Absolute Beginners','Apress');
insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Oracle Certified Java Enterprise Architect Java EE7', 'Apress');

insert into Book (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (4, 'Beginning Scala', 'Apress');
