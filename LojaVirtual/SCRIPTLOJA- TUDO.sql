use dbLojaMoletons; 


create table tbUsuario(
Codigo_Usuario int primary key auto_increment,
NomeUsu varchar (95) not null, 
Ds_Email varchar (95) not null, 
Ds_Senha varchar (6) not null, 
Ds_Status boolean not null, 
Endereco varchar (80) not null, 
Ds_Cidade varchar (30) not null, 
NumCep char (9) not null
);

select * from tbUsuario;

insert into tbUsuario 
values 
(default, 'Eloá Macedo', 'eloa.macedo22@gmail.com', 'admElo', 1, 'Rua Castelo Branco 45', 'São Paulo', '02005-445'),
(default, 'Laura Moreira', 'Laura.moreira22@gmail.com', 'More02', 0, 'Rua Bela  85', 'São Paulo', '22887-007'),
(default, 'Murilo Silva', 'Silva.Murilo2@gmail.com', 'Muri2', 0, 'Rua Astrogildo 13', 'São Paulo', '05020-005'); 





