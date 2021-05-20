create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
tipo varchar (255) not null,
valor decimal (10,2) not null,
primary key(id)
);

insert into tb_produtos (nome, tipo, valor) values("Blusa", "Roupa", 45.99);
insert into tb_produtos (nome, tipo, valor) values("Caneca", "Item", 30.80);
insert into tb_produtos (nome, tipo, valor) values("Tênis", "Calçado", 249.99);
insert into tb_produtos (nome, tipo, valor) values("Conjunto completo de frio", "Roupa", 699.99);
insert into tb_produtos (nome, tipo, valor) values("Polystation", "Video-Game", 1199.99);

select * from tb_produtos; 

select * from tb_produtos where valor>500;
select * from tb_produtos where valor<500;

update tb_produtos set nome = "Brinco" where id= 3;