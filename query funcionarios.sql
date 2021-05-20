create database db_funcionarios;

use db_funcionarios;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
setor varchar(255) not null,
cargo varchar(255) not null,
salario decimal(10,2) not null,
primary key (id)
);

-- Inserindo funcionarios
insert into tb_funcionarios(nome, setor, cargo, salario) values ("Fernando Carvalho", "marketing", "executivo de vendas", 4261.20);
insert into tb_funcionarios(nome, setor, cargo, salario) values ("Carla Andrade", "Administração", "Controle de sistema de qualidade", 2551.70);
insert into tb_funcionarios(nome, setor, cargo, salario) values ("Roberta Rodrigues", "Executivo", "Chief Technology Officer(CTO)", 24261.80);
insert into tb_funcionarios(nome, setor, cargo, salario) values ("Gabriel Angelo", "Sistemas", "Desenvolvedor", 4900.05);

select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

update tb_funcionarios set cargo= "Programação" where id=4;

select * from tb_funcionarios;