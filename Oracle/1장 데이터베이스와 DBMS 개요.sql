// �ǽ� 1-2
CREATE TABLE TYPE_TEST_NUMBER (
 num1 NUMBER,
 num2 NUMBER(2),
 num3 NUMBER(3,1),
 num4 NUMBER(4,2),
 num5 NUMBER(5,6)
);

//num1 NUMBER
insert into TYPE_TEST_NUMBER (num1) values (1);
insert into TYPE_TEST_NUMBER (num1) values (123);
insert into TYPE_TEST_NUMBER (num1) values (123.74);
insert into TYPE_TEST_NUMBER (num1) values (123.12345);

//num2 NUMBER(2)
insert into TYPE_TEST_NUMBER (num2) values (12);
insert into TYPE_TEST_NUMBER (num2) values (123);
insert into TYPE_TEST_NUMBER (num2) values (1.2);
insert into TYPE_TEST_NUMBER (num2) values (1.23);
insert into TYPE_TEST_NUMBER (num2) values (12.34567);
insert into TYPE_TEST_NUMBER (num2) values (12.56789);
insert into TYPE_TEST_NUMBER (num2) values (123.56789);

//num3 NUMBER(3,1)
insert into TYPE_TEST_NUMBER (num3) values (12);
insert into TYPE_TEST_NUMBER (num3) values (123);
insert into TYPE_TEST_NUMBER (num3) values (12.1);
insert into TYPE_TEST_NUMBER (num3) values (12.1234);
insert into TYPE_TEST_NUMBER (num3) values (12.56789);
insert into TYPE_TEST_NUMBER (num3) values (123.56789);

//num4 NUMBER(4,2)
insert into TYPE_TEST_NUMBER (num4) values (12);
insert into TYPE_TEST_NUMBER (num4) values (123);
insert into TYPE_TEST_NUMBER (num4) values (12.1);
insert into TYPE_TEST_NUMBER (num4) values (12.1234);
insert into TYPE_TEST_NUMBER (num4) values (12.56789);
insert into TYPE_TEST_NUMBER (num4) values (123.56789);

//num5 NUMBER(5,6)
insert into TYPE_TEST_NUMBER (num5) values (12);
insert into TYPE_TEST_NUMBER (num5) values (123);
insert into TYPE_TEST_NUMBER (num5) values (12.1);
insert into TYPE_TEST_NUMBER (num5) values (12.1234);
insert into TYPE_TEST_NUMBER (num5) values (12.56789);
insert into TYPE_TEST_NUMBER (num5) values (123.56789);

// �ǽ� 1-3
CREATE TABLE TYPE_TEST_CHAR (
 char1 CHAR(1),
 char2 CHAR(2),
 char3 CHAR(3),
 vchar1 VARCHAR2(1),
 vchar2 VARCHAR2(2),
 vchar3 VARCHAR2(3),
 nvchar1 NVARCHAR2(1),
 nvchar2 NVARCHAR2(2),
 nvchar3 NVARCHAR2(3)
);

//CHAR
insert into TYPE_TEST_CHAR (char1) values ('A');
insert into TYPE_TEST_CHAR (char1) values ('��');

//VARCHAR2
insert into TYPE_TEST_CHAR (vchar1) values ('A');
insert into TYPE_TEST_CHAR (vchar2) values ('AB');
insert into TYPE_TEST_CHAR (vchar3) values ('��');

//NVARCHAR2
insert into TYPE_TEST_CHAR (nvchar1) values ('A');
insert into TYPE_TEST_CHAR (nvchar2) values ('AB');
insert into TYPE_TEST_CHAR (nvchar3) values ('������');

// �ǽ� 1-1 ���̺� ����
CREATE TABLE USER1(
    ID      VARCHAR2(20),
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER
    );
    
DROP TABLE USER1;

// �ǽ� 1-2
INSERT INTO USER1 VALUES ('A101', '������', '010-1234-1111', 25);
INSERT INTO USER1 VALUES ('A102', '������', '010-1234-2222', 23);
INSERT INTO USER1 VALUES ('A103', '�庸��', '010-1234-3333', 32);
INSERT INTO USER1 (id, name, age) VALUES ('A104', '������', 45);
INSERT INTO USER1 (id, name, hp) VALUES ('A105', '�̼���', '010-1234-5555');

// �ǽ� 1-3
SELECT * FROM USER1;
SELECT * FROM USER1 WHERE id='A101';
SELECT * FROM USER1 WHERE name='������';
SELECT * FROM USER1 WHERE age > 30;
SELECT id, name, age FROM USER1;

// �ǽ� 1-4
UPDATE User1 SET hp='010-1234-4444' WHERE id='A104';
UPDATE User1 SET age=51 WHERE id='A105';
UPDATE User1 SET hp='010-1234-1001', age=27 WHERE id='A101';

// �ǽ� 1-5
DELETE FROM User1 WHERE id='A101';
DELETE FROM User1 WHERE id='A102' AND age=25;
DELETE FROM User1 WHERE age >= 30;