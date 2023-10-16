
drop procedure if exists addQualification;
delimiter $
create procedure addQualification( in studentID int ,name varchar(20),college varchar(20),university varchar(20),marks varchar(20),year int ,out display varchar(20))

begin 

declare x bool;

select true into x from student where id=studentID;

if(x=true) THEN

insert into student_qualifications ( id,studentID,name ,college ,university ,marks ,year) values(120,studentID  ,name ,college ,university ,marks,year );

set display:="Record Inserted";

ELSE

set display:="Student not found";

end if;

end $

delimiter ;
