
drop procedure if exists addUser ;
delimiter $
create procedure addUser()
begin
insert into LOGIN values("Usama","Usama@123","usama@gmail.com");

end $

delimiter ;
