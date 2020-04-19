create or replace TRIGGER TEST_BOARD_BNO_TRIGGER
before insert on TEST_BOARD
for each row 
begin
        select BOARD_SEQ.NEXTVAL into :new.bno from dual;
end;

/*
before : INSERT,UPDATE,DELETE �����ϱ� ���� Ʈ���� ���� ���� ��
after :  INSERT,UPDATE,DELETE �����ϰ� �� �� Ʈ����  ���� ��

Referencing OLD AS {������ ���� �����ϴ� ������} NEW AS {������ ���� �����ϴ� ������}

FOR EACH ROW �� ���� row(��) Ʈ���Ÿ� �����ϰ� 
WHEN ������ �ָ� WHEN ���ǿ� �����ϴ� ROW(��)�� Ʈ���� ���� ����.
��,FOR EACH ROW�� �Ⱦ��� statement(����) Ʈ���� ����.
*/

create or replace TRIGGER TEST_BOARD_REGDATE_TRIGGER
before update on TEST_BOARD
for each row
begin
    select sysdate into :new.REGDATE from DUAL;
    end;
 /*
    old : ������ �ִ� �����͸� �ٲٱ��� ������
    DUAL : spl�ȿ��� ���̺� ��ü
    */