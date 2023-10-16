drop procedure if exists checkUser;
delimiter $
create procedure checkUser(email_id varchar(20))


begin

declare x bool;
 select true into x from LOGIN where email=email_id;
 
 if (x=true) then
 
 select username,password from LOGIN where email=email_id;

ELSE
insert into log (curr_date, curr_time,message) values(CURRENT_DATE(),CURRENT_TIME(),"RECORD INSERTED");

end if;

 end $
delimiter ;