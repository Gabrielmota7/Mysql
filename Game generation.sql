create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(6) auto_increment,
classe varchar(255) not null,
primary key (id)
);

insert tb_classe (classe) values ("Arqueiro");
insert tb_classe (classe) values ("Mago");
insert tb_classe (classe) values ("Assassino");
insert tb_classe (classe) values ("Cavaleiro");
insert tb_classe (classe) values ("Barbaros");
insert tb_classe (classe) values ("Samurais");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
poderAtaque bigint,
poderDefesa bigint,
nick varchar(255),
arma varchar (255),
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert tb_personagem (nick, poderAtaque, poderDefesa, arma, classe_id) values ("Shaolinmatador", 5325, 980,"Katana", 6);
insert tb_personagem (nick, poderAtaque, poderDefesa, arma, classe_id) values ("Berserck", 3200, 1870,"Machado",5);
insert tb_personagem (nick, poderAtaque, poderDefesa, arma, classe_id) values ("Patolino", 1325, 3980,"Cajado" ,2);
insert tb_personagem (nick, poderAtaque, poderDefesa, arma, classe_id) values ("Dr.Strange", 850, 580,"Olho mistico" ,2);
insert tb_personagem (nick, poderAtaque, poderDefesa, arma, classe_id) values ("Erzo", 3000, 2500,"laminas escondidas" ,3);
insert tb_personagem (nick, poderAtaque, poderDefesa, arma, classe_id) values ("Archer", 678, 180,"Arco de três flechas" ,1);
insert tb_personagem (nick, poderAtaque, poderDefesa, arma, classe_id) values ("Arthuria", 9325, 5980,"Espada excalibur",4);

select * from tb_personagem;

select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderAtaque between 1000 and 2000;

select * from tb_personagem where nick like "%C%";

select tb_personagem.nick, tb_personagem.poderAtaque, tb_personagem.poderDefesa, tb_personagem.arma from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id = 1;
