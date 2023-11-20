drop trigger if exists insertDEPT;
delimiter $
create trigger insertDEPT after insert on dept for each ROW

BEGIN

insert into deptLOG(id,dname,loc,pwd) values(new.deptno,new.dname,new.loc,new.pwd);

END $
delimiter ;



/*
mysql> source C:\Users\IET\Desktop\230945920105\section2(i).sql
Query OK, 0 rows affected, 1 warning (0.08 sec)

Query OK, 0 rows affected (0.11 sec)

mysql> insert into dept values(70,"RESEARCH","PUNE","ABC123","2020-12-12");
Query OK, 1 row affected (0.03 sec)

mysql> select * from deptlog;
+----+-------+-------+---------+--------+----------+------+--------+
| id | cDate | cTime | message | deptno | dname    | loc  | pwd    |
+----+-------+-------+---------+--------+----------+------+--------+
| 70 | NULL  | NULL  | NULL    |   NULL | RESEARCH | PUNE | ABC123 |
+----+-------+-------+---------+--------+----------+------+--------+
1 row in set (0.00 sec)
*/
