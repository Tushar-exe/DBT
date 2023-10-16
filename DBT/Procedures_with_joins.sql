drop procedure if exists getQualification;
delimiter $
create procedure getQualification(in studentID int)

begin

declare x bool;

select true into x from student where id=studentID;

if(x=true) then
select * from student s inner join student_Qualifications sq on s.id=sq.studentID where s.id=studentid;

ELSE

select "Student not found… ";

end if;

end $

delimiter ;
