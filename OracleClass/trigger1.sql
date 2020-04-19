create or replace TRIGGER TEST_BOARD_BNO_TRIGGER
before insert on TEST_BOARD
for each row 
begin
        select BOARD_SEQ.NEXTVAL into :new.bno from dual;
end;

/*
before : INSERT,UPDATE,DELETE 실행하기 전에 트리거 먼저 실행 됨
after :  INSERT,UPDATE,DELETE 실행하고 난 후 트리거  실행 됨

Referencing OLD AS {변경전 값을 참조하는 변수명} NEW AS {변경후 값을 참조하는 변수명}

FOR EACH ROW 를 쓰면 row(행) 트리거를 생성하고 
WHEN 조건을 주면 WHEN 조건에 만족하는 ROW(행)만 트리거 적용 가능.
즉,FOR EACH ROW를 안쓰면 statement(문장) 트리거 생성.
*/

create or replace TRIGGER TEST_BOARD_REGDATE_TRIGGER
before update on TEST_BOARD
for each row
begin
    select sysdate into :new.REGDATE from DUAL;
    end;
 /*
    old : 기존에 있는 데이터를 바꾸기전 데이터
    DUAL : spl안에서 테이블 전체
    */