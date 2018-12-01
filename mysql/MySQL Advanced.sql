show engines
show table status
set default_storage_engine=InnoDB
create table test(id int);
drop table test;
delete from user;
set sql_safe_updates = 0
select * from user;
insert into user (nome, descricao) values ("alexandre", "um cara muito legal");
insert into user (nome, descricao) values ("alexandre", "um cara que gosta de MySQL");

