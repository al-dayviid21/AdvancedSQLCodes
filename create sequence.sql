create sequence seq_no start with 1

select next value for dbo.seq_no

create sequence seq_no2 start with 12 increment by 2

select next value for dbo.seq_no2

drop sequence dbo.seq_no

select next value for seq_no as s_n, FIRST_NAME, LAST_NAME from employees 