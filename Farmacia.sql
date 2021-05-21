create database db_farmacia;

use db_farmacia;

create table tb_categoria(
id bigint(3) auto_increment,
tipoRemedio varchar(255) not null,
primary key(id)
);

insert tb_categoria(tipoRemedio) values ("Analgésico");
insert tb_categoria(tipoRemedio) values ("Antibiotico");
insert tb_categoria(tipoRemedio) values ("Anti-inflamatório");

create table tb_produto(
id bigint auto_increment,
nomeProduto varchar(255)not null,
valor decimal(10,2)not null,
tipoRemedio_id bigint,
primary key (id),
foreign key(tipoRemedio_id) references tb_categoria(id)
);

insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Nimesulida", 11.99, 3);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Buscopan", 17.95, 1);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("tylenol", 29.99, 1);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Infralax", 21.99, 3);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Amoxicilina", 48.99, 2);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Diclofenaco", 8.99, 1);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Ampicilina", 38.99, 2);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Ibuprofeno", 15.99, 3);
insert tb_produto(nomeProduto, valor, tipoRemedio_id) values ("Azlocilina", 62.00, 2);

select * from tb_produto where valor>50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nomeProduto like "%B%";

select tb_produto.nomeProduto, tb_produto.valor from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.tipoRemedio_id;

select * from tb_produto where tipoRemedio_id = 3;