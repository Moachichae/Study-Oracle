-- select, insert, update, delete

create table ex_member (
    id varchar2(20) primary key,
    pw varchar2(20),
    emial varchar2(100)
);

-- EX_MEMBER 테이블에 데이터 3개 생성해 보세요
insert into ex_member 
values('admin', 'admin1234', 'admin@test.com');

insert into ex_member (id, pw, email)
values('guest', 'g1234', 'guest@test.com');

insert into ex_member (id, pw)
values ('test', 'test1234');

-- 전체 데이터 선택
select * from ex_member;

-- id, pw 열 데이터 선택
select id, pw from ex_member;

update ex_member
set email = 'update@test.com'
where id = 'guest';

delete from ex_member
where id = 'guest';

create table ex_student (
    sid number primary key,
    sname varchar2(20) not null,
    birthday timestamp default sysdate,
    email varchar2(100)
);

desc ex_student;
insert into ex_student
values (1, 'Aaa', '1970-01-01', 'aaa@test.com');

insert into ex_student (sid, sname)
values (2, 'Bbb');

insert into ex_student (sid, sname, email)
values (3, 'Abc', 'abc@test.com');

insert into ex_student (sid, sname, birthday)
values (4, 'aaa', '2000-01-01');

select * from ex_student;

select sid, sname from ex_student
order by sid desc; -- desc : 내림차순

select * from ex_student order by sname;
select * from ex_student order by birthday;

select * from ex_student
where sname like 'A%'; 
-- sname의 데이터 중 A로 시작하는 문자열을 갖는
-- 모든 데이터를 출력

select * from ex_student
where sname like 'a%'; 
-- sname의 데이터 중 a로 시작하는 문자열을 갖는
-- 모든 데이터를 출력

select * from ex_student
where birthday >= '2000-01-01';
-- to_date : varchar 타입을 date 타입으로 변경
-- 2000년 1월 1일 이후에 출생한 학생들의 데이터 출력

select * from ex_student
where email is not null;
-- email 값이 null이 아닌 모든 데이터 출력

select * from ex_student
where sname like 'A%' and
email is not null;
-- sname의 값이 A로 시작하고, 
-- email의 값이 null 아닌 모든 데이터 출력

select * from ex_student
where sname like 'A%' or sname like 'B%';
-- sname의 값이 A로 시작하거나, B로 시작하는
-- 모든 데이터 출력







