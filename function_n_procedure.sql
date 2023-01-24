/* DEPARTMENT_ID, DEPARTMENT_NAME, STREET_ADDRESS */
create or alter function return_street_address (@LOCATION_ID numeric)
returns numeric
as
BEGIN
declare @STREET_ADDRESS varchar(100)
set @STREET_ADDRESS = (select STREET_ADDRESS from LOCATIONS where LOCATION_ID = @LOCATION_ID)
return @STREET_ADDRESS
END

create or alter procedure prc_dept_dt
as
BEGIN
select DEPARTMENT_ID, DEPARTMENT_NAME, dbo.return_street_address(LOCATION_ID) STREET_ADDRESS 
from DEPARTMENTS 
END

execute dbo.prc_dept_dt