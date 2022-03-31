# SQL에서 Relation Schema의 Definition

- 데이터 정의 언어, DDL (Data Definition LAnguage) : 데이터베이스에 있는 정보의 구조를 표현
- 데이터 조작 언어, DML (Data Manipulation Language) : 데이터베이스에 질의와 변경

## Data Types

- 문자
    - CHAR : ~255 bytes, 고정형 (i.e. CHAR(50) 'Hello'는 50bytes)
    - VARCHAR : ~65,535 bytes, 가변형 (i.e. VARCHAR(100) 'Hello'는 5bytes)
- 문자열
    - TINYTEXT : ~255 bytes
    - TEXT : ~65,535 bytes
    - MEDIUMTEXT : ~16,777,215 bytes
    - LONGTEXT : ~4,294,967,295 bytes
- 정수
    - TINYINT : 1 byte (signed: -128~127, unsigned: 0~~255)
    - SMALLINT : 2 bytes (signed: -32,768~32,767, unsigned: 0~~65,535)
    - MEDIUMINT : 3 bytes (signed: -8,388,608~8,388,607, unsigned: 0~~16,777,215)
    - INT(INTEGER) : 4 bytes (signed: -2,147,483,648~2,147,483,647, unsigned: 0~~4,294,967,295)
    - BIGINT : 8 bytes (signed: -9,223,372,036,854,775,808~9,223,372,036,854,775,807, unsigned: 0~~18,446,744,073,709,551,615)
- 실수
    - FLOAT : 4 bytes (-3.40E+45~3.40E+45)
    - DOUBLE(REAL) : 8 bytes (-1.7976E+320~1.7976E+320)
- 바이너리
    - TINYBLOB : ~255 bytes
    - BLOB : ~65,535 bytes
    - MEDIUMBLOB : ~16,777,215 bytes
    - LONGBLOB : ~4,294,967,295 bytes
- 시간
    - DATE : YYYY-MM-DD
    - DATETIME : YYYY-MM-DD HH:MM:SS
    - TIMESTAMP : YYYY-MM-DD HH:MM:SS (1970~2038, UTC)
    - TIME : HH:MM:SS (-838h ~ 838h)
    - YEAR : 4 digits

## RULES

- SQL은 기본적으로 대소문자를 구분하지 않으나, 코드 확인의 용이성을 위해 대부분의 SQL 개발자가 지키는 규약
- SELECT, WHERE, BY 등 sql 문법은 대문자로
- Table의 첫 글자는 대문자, 나머지는 소문자로
- 문자열은 작은따옴표(')로 묶고, 문자 내용에 '가 올 때는 ''로 표현