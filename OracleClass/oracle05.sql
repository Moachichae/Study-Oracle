-- select 컬럼의 별명
select employee_id as 사번, last_name 이름 from employees;

create table emp1(
    emp_id number,
    first_name varchar2(100),
    last_name varchar2(100),
    salary number
);

-- insert-select 구문
insert into emp1
select employee_id, first_name, last_name, salary
from employees
where salary > 10000;

-- 함수
-- count() : 행의 개수 출력
select count(*) cnt from employees;
select count(employee_id) from employees;
select count(manager_id) from employees;

-- lower() : 입력된 문자를 소문자로 변환
select first_name, last_name from employees
where lower(first_name) like 'a%';

-- upper() : 입력된 문자를 대문자로 변환
select last_name from employees
where upper(last_name) like 'A%';

-- nvl(컬럼, 치환값) : 컬럼의 null 값을 치환값으로 변환
select first_name, last_name, commission_pct from employees
where nvl(commission_pct, 0) < 0.2;

select first_name, last_name, commission_pct from employees
where commission_pct < 0.2 
    or commission_pct is null;







