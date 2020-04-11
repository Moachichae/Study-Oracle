-- 테이블 컬럼 데이터의 기본값 설정
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
-- 자동으로 생성되는 유일한 정수를 반환하는 데이터베이스 객체
-- 주로 primary key 값을 자동으로 생성할 때 사용
create sequence seq1;

-- sequence.nextval:
-- 시퀀스의 최종값(현재값)을 리턴하고, 그 다음 값을 생성
-- sequence.currval:
-- 시퀀스의 최종값(현재값)을 리턴
-- (주의) nextval이 최소 한번은 실행된 뒤에 currval을 사용할 수 있음
select seq1.nextval from dual; -- dual : 사용자 기본 테이블 
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



    





