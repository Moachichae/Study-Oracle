/*
����Ŭ���� ���� ���� �ּ� ó�� �� ��
*/
-- ����Ŭ���� �� �� �ּ� ó�� �� ��
CREATE TABLE ex1 (
    col1   NUMBER,
    col2   VARCHAR2(100),
    col3   DATE
);

-- ����Ŭ ��ɾ�(create, insert ��)��
-- ��/�ҹ��ڸ� �������� ����.
-- ����Ŭ������ ���̺� �̸��� �÷� �̸���
-- ���� �빮�ڷ� ��ȯ��.

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
-- ù��° �÷��� ������ Ÿ��(number)��
-- �����Ϸ��� �������� Ÿ���� �ٸ��� ������ ���� �߻�

-- varchar2 ������ Ÿ��

CREATE TABLE ex2 (
    col1   VARCHAR2(3), -- ���ڿ� 3����Ʈ����
    col2   VARCHAR2(3 BYTE), -- ���ڿ� 3����Ʈ����
    col3   VARCHAR2(3 CHAR) -- ���ڿ� 3���ڱ���
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
-- ���� : ���� ũ�� �ʰ�

INSERT INTO ex2 VALUES (
    '��',
    '��',
    '��'
);

INSERT INTO ex2 VALUES (
    '��',
    '��',
    '�ѱ�â��'
);

-- ���� ����
-- not null : �����͸� �ݵ�� �Է�
-- unique : �ߺ����� �ʴ� �����͸� �Է� ����
-- primary key(����Ű) :
-- ���̺��� ������ �����͸� ã�� �� �ִ� �÷�
-- �����Ͱ� �ݵ�� �����ؾ� �ϰ�, �ߺ����� �ʾƾ� ��
create table ex3(
    col1 varchar2(10) not null,
    col2 varchar2(10) unique
);

insert into ex3
values ('aa', 'bb');

insert into ex3 (col2)
values ('cc');
-- col1�� null�� �Ǹ� �ȵǱ� ������ ����

insert into ex3 (col1)
values ('aa');

insert into ex3
values ('zz', 'bb');
-- col2�� unique�ؾ� �Ѵٴ� ���� ���ǿ� ����

create table ex4(
    col1 varchar2(10) primary key,
    col2 varchar2(10)
);

insert into ex4
values ('ab', 'cd');

insert into ex4
values ('ab', 'ef');
-- col1�� PK�̱� ������ �ߺ��� �����ʹ� ���� �Ұ�

insert into ex4 (col2)
values ('abcd');
-- col1�� PK�̱� ������ null ������ ���� �Ұ�

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
     check (gender in ('��', '��'))
);
-- check : ���ǿ� �����ϴ� �����͸� �Է��� �����ϵ��� �ϴ� ���� ����

insert into ex7
values (12, '��');

-- ���� ���� �߰�
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
-- desc : describe(���̺� ���)

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


















