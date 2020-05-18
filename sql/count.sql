create table hugs (
  hugger varchar(32),
  huggee varchar(32)
);

create table good_memories (
  memorialist varchar(32)
);

insert into hugs (hugger, huggee) values ('maria', 'paula');
insert into hugs (hugger, huggee) values ('paula', 'maria');
insert into hugs (hugger, huggee) values ('maria', 'maria');
insert into hugs (hugger, huggee) values ('joana', 'maria');
insert into hugs (hugger, huggee) values ('lucia', 'maria');
insert into hugs (hugger, huggee) values ('pedrina', 'maria');

insert into good_memories (memorialist) values ('maria');
insert into good_memories (memorialist) values ('paula');
insert into good_memories (memorialist) values ('betina');

-- Count all hugs for each memorialist.
select memorialist, count(*) from hugs
right outer join good_memories
on memorialist = hugger or memorialist = huggee
group by memorialist;
