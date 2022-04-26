-- Criando um DB
create database db_generation_game_online;

-- Selecionar o banco de dados db_generation_game_online
use db_generation_game_online;

-- criando tabela tb_classes
create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
primary key(id)
);

insert into tb_classes (classe, patente)
value ("Exercito", "tenente-coronel");

insert into tb_classes(classe, patente)
value ("Marinha", "Capitão de mar e guerra");

 insert into tb_classes(classe, patente)
value ("Aeronáltica", "major");

 insert into tb_classes(classe, patente)
value ("Exercito", "Forças especiais");

 insert into tb_classes(classe, patente)
value ("Aeronáltica", "Aviador");

-- Seleção de todo o conteudo na tabela
select * from tb_classes;

-- Criar tabela tb_personagens
create table tb_personagens(
id bigint auto_increment,
personagem varchar(255),
poder int(10),
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classes(id)
);

-- Inserir dados na tabela personagens
insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("Fuzileiro", 2500, 1000, 4);

insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("Piloto de caça", 3400, 1200, 5);

insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("Especialista de aviação", 8000, 5000, 3);

insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("Almirante naval", 15000, 7500, 2);

insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("Especialista militar", 7500, 2000, 1);

insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("Soldado", 900, 500, 4);

insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("Piloto Blindado", 2000, 1000, 4);

insert into tb_personagens(personagem, poder, defesa, classe_id)
value ("piloto de aviação", 900, 5000, 5);

-- Visualize todos os dados da tabela personagens
select * from tb_personagens;

select * from tb_personagens where poder > 2000;
select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where personagem like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id;

select personagem, tb_classes.classe from tb_personagens 
inner join tb_classes on tb_personagens.classe_id = tb_classes.id
where tb_classes.classe = "Exercito";
