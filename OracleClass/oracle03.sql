-- select, insert, update, delete

create table ex_member (
    id varchar2(20) primary key,
    pw varchar2(20),
    emial varchar2(100)
);

-- EX_MEMBER ���̺� ������ 3�� ������ ������
insert into ex_member 
values('admin', 'admin1234', 'admin@test.com');

insert into ex_member (id, pw, email)
values('guest', 'g1234', 'guest@test.com');

insert into ex_member (id, pw)
values ('test', 'test1234');

-- ��ü ������ ����
select * from ex_member;

-- id, pw �� ������ ����
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
order by sid desc; -- desc : ��������

select * from ex_student order by sname;
select * from ex_student order by birthday;

select * from ex_student
where sname like 'A%'; 
-- sname�� ������ �� A�� �����ϴ� ���ڿ��� ����
-- ��� �����͸� ���

select * from ex_student
where sname like 'a%'; 
-- sname�� ������ �� a�� �����ϴ� ���ڿ��� ����
-- ��� �����͸� ���

select * from ex_student
where birthday >= '2000-01-01';
-- to_date : varchar Ÿ���� date Ÿ������ ����
-- 2000�� 1�� 1�� ���Ŀ� ����� �л����� ������ ���

select * from ex_student
where email is not null;
-- email ���� null�� �ƴ� ��� ������ ���

select * from ex_student
where sname like 'A%' and
email is not null;
-- sname�� ���� A�� �����ϰ�, 
-- email�� ���� null �ƴ� ��� ������ ���

select * from ex_student
where sname like 'A%' or sname like 'B%';
-- sname�� ���� A�� �����ϰų�, B�� �����ϴ�
-- ��� ������ ���







