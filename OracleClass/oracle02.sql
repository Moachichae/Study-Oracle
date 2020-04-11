-- ���̺� �÷� �������� �⺻�� ����
create table ex_order(
    order_no number default 0,
    order_date date default sysdate
);

insert into ex_order
values (1, '2020-02-03');

insert into ex_order (order_date)
values (sysdate);

insert into ex_order (order_no)
values (11);

-- delete, truncate, drop
delete from ex_order;
truncate table ex_order;
drop table ex_order;

-- Sequence :
-- �ڵ����� �����Ǵ� ������ ������ ��ȯ�ϴ� �����ͺ��̽� ��ü
-- �ַ� primary key ���� �ڵ����� ������ �� ���
create sequence seq1;

-- sequence.nextval:
-- �������� ������(���簪)�� �����ϰ�, �� ���� ���� ����
-- sequence.currval:
-- �������� ������(���簪)�� ����
-- (����) nextval�� �ּ� �ѹ��� ����� �ڿ� currval�� ����� �� ����
select seq1.nextval from dual; -- dual : ����� �⺻ ���̺� 
select seq1.currval from dual; 

create sequence seq2 increment by 2;
select SEQ2.nextval from dual;

create sequence seq3 
    increment by 2
    minvalue 0;
select seq3.nextval from dual;

create sequence seq4
    increment by 2
    start with 0
    maxvalue 10
    minvalue -10;
select seq4.nextval from dual;

create sequence seq5
    increment by 2
    start with 0
    maxvalue 10
    minvalue -19
    cycle
    nocache;
select seq5.nextval from dual;

create sequence seq_pk;
create table ex11(
    col1 number primary key,
    col2 varchar2(10)
);
insert into ex11
values (seq_pk.nextval, 'a');



    





