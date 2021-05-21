create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipoCurso varchar(255)not null,
ativo boolean not null,
primary key(id)
);

insert tb_categoria(tipoCurso, ativo) values ("Ciências STEM", true);
insert tb_categoria(tipoCurso, ativo) values ("Ciências humanas", true);
insert tb_categoria(tipoCurso, ativo) values ("Empreendedorismo.", true);
insert tb_categoria(tipoCurso, ativo) values ("Tecnologia", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nomeProduto varchar(255),
valor decimal (10,2)not null,
tipoCurso_id bigint,
primary key(id),
foreign key (tipoCurso_id) references tb_categoria(id)
);

insert tb_produto(nomeProduto, valor, TipoCurso_id) values ("Excel basico ao avançado", 22.90,1);
insert tb_produto(nomeProduto, valor, TipoCurso_id) values ("Powerpoint", 19.99,1);
insert tb_produto(nomeProduto, valor, TipoCurso_id) values ("A história do Brasil contada por um Português", 27.90,2);
insert tb_produto(nomeProduto, valor, TipoCurso_id) values ("As mudanças climaticas", 9.90,2);
insert tb_produto(nomeProduto, valor, TipoCurso_id) values ("Markenting Digital Empreenda Online Agora", 129.99,3);
insert tb_produto(nomeProduto, valor, TipoCurso_id) values ("Crie um jogo 2D a partir do Zero", 37.98,4);
insert tb_produto(nomeProduto, valor, TipoCurso_id) values ("Programação JAVA orientado a objetos", 199.90,4);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nomeProduto like "%J%";

select tb_produto.nomeProduto, tb_produto.valor from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.tipoCurso_id;

select * from tb_produto where tipoCurso_id = 4;
