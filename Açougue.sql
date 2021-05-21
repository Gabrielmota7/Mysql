create database db_acougue;

use db_acougue;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
primary key (id)
);

insert tb_categoria (descricao) values ("Bovino");
insert tb_categoria (descricao) values ("Suino");
insert tb_categoria (descricao) values ("Aves");
insert tb_categoria (descricao) values ("pertence feijoada");
insert tb_categoria (descricao) values ("imbutidos");
insert tb_categoria (descricao) values ("outros");

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",40.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("medalhao",50.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("mocoto",20.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuleta",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

select * from tb_produtos where preco>50;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos where preco between 3 and 60;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria_id=3;
