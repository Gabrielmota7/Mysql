create database db_cadastroaluno;

use db_cadastroaluno;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade bigint not null,
nota decimal(2,1) not null,
turma varchar(255) not null,
serie varchar(255) not null,
primary key(id)

);

insert into tb_alunos(nome, idade, nota, serie,turma) values("Fernanda", 15, 10.0,"1° EM", "Turma B");
insert into tb_alunos(nome, idade, nota, serie,turma) values("Carlos", 15, 5.0,"1° EM", "Turma B");
insert into tb_alunos(nome, idade, nota, serie,turma) values("Leandro", 17, 7.5,"3° EM", "Turma C");
insert into tb_alunos(nome, idade, nota, serie,turma) values("Pietra", 15, 8.0,"1° EM", "Turma A");
insert into tb_alunos(nome, idade, nota, serie,turma) values("Alessandra", 15, 4.5,"2° EM", "Turma D");
insert into tb_alunos(nome, idade, nota, serie,turma) values("Pedro", 15, 6.0,"2° EM", "Turma B");

select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

update tb_alunos set turma = "Turma A" where id=2;