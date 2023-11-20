 drop function if exists sumSalary;
 delimiter $
 create function sumSalary(_deptno varchar(20)) returns int
 deterministic
 BEGIN


 set @z=0;
  if _deptno in(select distinct deptno from emp) THEN
  select sum(sal) into @z from emp where deptno=_deptno;
  return @z;
  ELSE
  select 'Department not found!' into @strg;
  end if;
  return @strg;
 end $
 delimiter ;




/*


mysql> source C:\Users\IET\Desktop\230945920105\sumsal.sql
Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> select sumSalary("20");
+-----------------+
| sumSalary("20") |
+-----------------+
|           19375 |
+-----------------+
1 row in set (0.00 sec)

mysql> select sumSalary("60");
ERROR 1366 (HY000): Incorrect integer value: 'Department not found!' for column 'sumSalary("60")' at row 1
mysql>



*/