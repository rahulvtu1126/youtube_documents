use sakila;
create table number_joins1(number int);
create table number_joins2(number int);
insert into number_joins1(number) values (1),(1),(1),(2),(2),(3),(3),(4),(5),(6),(7),(3);
insert into number_joins2(number) values (1),(1),(2),(3),(4),(5),(5),(6),(1),(7),(3);
select * from number_joins1;
select * from number_joins2;
select * from number_joins1 a left join number_joins2 b on a.number=b.number order by a.number;
select *  from number_joins1 a right join number_joins2 b on a.number=b.number order by a.number;
select *  from number_joins1 a join number_joins2 b on a.number=b.number order by a.number;
select *  from number_joins1 a cross join number_joins2 b on a.number=b.number order by a.number;
select *  from number_joins1 a , number_joins2 b where a.number=b.number order by a.number;

--------------------------------------------------------------------------------------------------------
create table number_joins3(number int);
create table number_joins4(number int);
insert into number_joins3(number) values (1),(2),(3),(4),(5),(6),(7);
insert into number_joins4(number) values (1),(2),(3),(4),(5),(6),(7),(8);
select * from number_joins3;
select * from number_joins4;
select * from number_joins3 a left join number_joins4 b on a.number=b.number order by a.number;
select *  from number_joins3 a right join number_joins4 b on a.number=b.number order by a.number;
select *  from number_joins3 a join number_joins4 b on a.number=b.number order by a.number;
select *  from number_joins3 a cross join number_joins4 b on a.number=b.number order by a.number;
select *  from number_joins3 a , number_joins4 b where a.number=b.number order by a.number;
select *  from number_joins3 a , number_joins4 b where a.number=b.number order by a.number;
select *  from number_joins3 a , number_joins3 b where a.number=b.number order by a.number;

-------------------------------------------------------------------------------------------------------------------

select count(*) from number_joins1 a left join number_joins3 b on a.number=b.number order by a.number;
select count(*)  from number_joins1 a right join number_joins3 b on a.number=b.number order by a.number;
select count(*)  from number_joins1 a join number_joins3 b on a.number=b.number order by a.number;
select count(*)  from number_joins1 a cross join number_joins3 b on a.number=b.number order by a.number;
select *  from number_joins1 a , number_joins4 b where a.number=b.number order by a.number;