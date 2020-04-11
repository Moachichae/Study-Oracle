/*
오라클에서 여러 줄의 주석 처리 할 때
*/
-- 오라클에서 한 줄 주석 처리 할 때
CREATE TABLE ex1 (
    col1   NUMBER,
    col2   VARCHAR2(100),
    col3   DATE
);

-- 오라클 명령어(create, insert 등)은
-- 대/소문자를 구분하지 않음.
-- 오라클에서는 테이블 이름과 컬럼 이름을
-- 영문 대문자로 변환함.

INSERT INTO ex1 VALUES (
    100,
    'Hello',
    sysdate
);

INSERT INTO ex1 VALUES (
    'abcd',
    200,
    sysdate
);
-- 첫번째 컬럼의 데이터 타입(number)와
-- 삽입하려는 데이터의 타입이 다르기 때문에 에러 발생

-- varchar2 데이터 타입

CREATE TABLE ex2 (
    col1   VARCHAR2(3), -- 문자열 3바이트까지
    col2   VARCHAR2(3 BYTE), -- 문자열 3바이트까지
    col3   VARCHAR2(3 CHAR) -- 문자열 3글자까지
);

INSERT INTO ex2 VALUES (
    'abc',
    'abc',
    'abc'
);

INSERT INTO ex2 (
    col1,
    col2
) VALUES (
    'abc',
    'def'
);

INSERT INTO ex2 VALUES (
    'abc',
    'abc',
    'abcd'
);
-- 에러 : 저장 크기 초과

INSERT INTO ex2 VALUES (
    '한',
    '한',
    '한'
);

INSERT INTO ex2 VALUES (
    '한',
    '한',
    '한글창제'
);

-- 제약 조건
-- not null : 데이터를 반드시 입력
-- unique : 중복되지 않는 데이터만 입력 가능
-- primary key(고유키) :
-- 테이블에서 유일한 데이터를 찾을 수 있는 컬럼
-- 데이터가 반드시 존재해야 하고, 중복되지 않아야 함
create table ex3(
    col1 varchar2(10) not null,
    col2 varchar2(10) unique
);

insert into ex3
values ('aa', 'bb');

insert into ex3 (col2)
values ('cc');
-- col1은 null이 되면 안되기 때문에 에러

insert into ex3 (col1)
values ('aa');

insert into ex3
values ('zz', 'bb');
-- col2는 unique해야 한다는 제약 조건에 위배

create table ex4(
    col1 varchar2(10) primary key,
    col2 varchar2(10)
);

insert into ex4
values ('ab', 'cd');

insert into ex4
values ('ab', 'ef');
-- col1이 PK이기 때문에 중복된 데이터는 삽입 불가

insert into ex4 (col2)
values ('abcd');
-- col1이 PK이기 때문에 null 데이터 삽입 불가

create table ex5 (
    col1 varchar2(10),
    col2 varchar2(10),
    constraints pk_ex5 primary key (col1) 
);

create table ex6(
    col1 varchar2(10), 
    constraints un_ex6 unique (col1)
);

create table ex7(
    age number check (age >= 0),
    gender varchar2(10), 
    constraints check_gender
     check (gender in ('남', '여'))
);
-- check : 조건에 부합하는 데이터만 입력이 가능하도록 하는 제약 조건

insert into ex7
values (12, '남');

-- 제약 조건 추가
alter table ex7 add constraint nn_ex7 unique (age);

create table ex8 (
    col1 varchar2(10),
    constraints nn_ex8
        check (col1 is not null)
);

create table ex9 (
    col1 number, 
    col2 varchar2(10)
);
alter table ex9
rename column col1 to age;
desc ex9;
-- desc : describe(테이블 요약)

alter table ex9
modify col2 varchar2(100);
desc ex9;

alter table ex9
add col3 date;
desc ex9;

alter table ex9
drop column col3;
desc ex9;

commit;


















