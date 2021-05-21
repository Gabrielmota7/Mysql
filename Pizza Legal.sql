create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(6) auto_increment,
tipoPizza varchar(255) not null,
primary key (id)
);

insert tb_categoria (tipoPizza) values ("Pizza Salgada");
insert tb_categoria (tipoPizza) values ("Pizza Doce");
insert tb_categoria (tipoPizza) values ("Esfiha");
insert tb_categoria (tipoPizza) values ("Pastelão");
insert tb_categoria (tipoPizza) values ("Esfiha Doce");
insert tb_categoria (tipoPizza) values ("Lanches");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
sabor varchar(255) not null,
tipoPizza_id bigint,
valor decimal (10,2)not null,
primary key (id),
foreign key (tipoPizza_id) references tb_categoria(id)
);

insert tb_produto(sabor, valor, tipoPizza_id) values ("Marguerita", 42.99,1);
insert tb_produto(sabor, valor, tipoPizza_id) values ("Sensação", 50.99,2);
insert tb_produto(sabor, valor, tipoPizza_id) values ("Hamburguer artesanal", 20.99,6);
insert tb_produto(sabor, valor, tipoPizza_id) values ("Caipira", 8.99,3);
insert tb_produto(sabor, valor, tipoPizza_id) values ("Prestigio", 10.99,5);
insert tb_produto(sabor, valor, tipoPizza_id) values ("Carne seca", 15.99,4);

select * from tb_produto;

select * from tb_produto where valor > 45;

select * from tb_produto where valor between 29 and 45;

select * from tb_produto where sabor like "%C%";

select tb_produto.sabor, tb_produto.valor from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.tipoPizza_id;

select * from tb_produto where tipoPizza_id = 2;