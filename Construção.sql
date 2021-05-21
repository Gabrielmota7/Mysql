create database db_criando_a_nossa_vida;

use db_criando_a_nossa_vida;

create table tb_categoria(
id bigint(8) auto_increment,
tipoProduto varchar(255),
primary key (id)
);

insert tb_categoria(tipoProduto) values ("Tijolos");
insert tb_categoria(tipoProduto) values ("Telhas");
insert tb_categoria(tipoProduto) values ("Argamassas");
insert tb_categoria(tipoProduto) values ("Pisos e Revestimentos");
insert tb_categoria(tipoProduto) values ("Tintas");
insert tb_categoria(tipoProduto) values ("Madeiras");
insert tb_categoria(tipoProduto) values ("Hidráulicos");
insert tb_categoria(tipoProduto) values ("Elétricos");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nomeProduto varchar(255),
valor decimal (10,2)not null,
tipoProduto_id bigint,
primary key(id),
foreign key (tipoProduto_id) references tb_categoria(id)
);

insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Bloco cerâmico", 11.07, 1);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Canaleta cerâmica", 1.70, 1);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Bloco cimento", 2.07, 1);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Telha Ondulada", 54.90, 2);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Telha Romana de cerâmica", 2.69, 2);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Telha Cumeira", 2.69, 2);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Argamassa uso interno", 22.90, 3);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Argamassa piso e porcelanato", 36.90, 3);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Piso Rotocolor", 13.90, 4);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Revestimento de Parede Native", 19.90, 4);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Revestimento de parede biacogress", 59.90, 4);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Tinta latex", 174.90, 5);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Tinta coral", 259.90, 5);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Tinta acrilica", 129.90, 5);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Porta Madeira", 379.90, 6);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("caixa´d água 500L", 579.99, 7);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Tê soldavel", 0.70, 7);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Grelha redonda de inox", 57.90, 7);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Cabo flexivil até 750V", 250.90, 8);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Chuveiro eletronico", 119.90, 8);
insert tb_produto(nomeProduto, valor, tipoProduto_id) values("Fita eletrica", 17.81, 8);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nomeProduto like "%c%";

select tb_produto.nomeProduto, tb_produto.valor from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.tipoProduto_id;

select * from tb_produto where tipoProduto_id = 2;