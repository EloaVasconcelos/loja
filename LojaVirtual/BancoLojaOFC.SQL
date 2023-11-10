-- TUDO LOJA -- 
CREATE DATABASE dbLojaMoletons; 
USE dbLojaMoletons;  
  
  
 CREATE TABLE tbCategoria( 
 IdCategoria int primary key auto_increment, 
 NomeCategoria varchar (70) not null
 ); 
 
 
 CREATE TABLE tbTamanho (
    Cod_tamanho int primary key,
    Tamannho CHAR(3) not null
);

 CREATE TABLE tbMoletons( 
 Codigo_Moletom int primary key auto_increment, 
 IdCategoria int not null, 
 Cod_Tamanho int,
 Nome varchar (80) not null, 
 Cor varchar (40),  
 Valor decimal (7,2), 
 Lm_Lancamentos enum ('S', 'N') not null, 
 Genero enum ('Masculino', 'Feminino', 'Unissex'), 
 Imagem varchar (255),  -- Caminho para imagem --  
 foreign key(IdCategoria) references tbCategoria (IdCategoria),
 FOREIGN KEY (Cod_Tamanho) REFERENCES tbTamanho (Cod_Tamanho)
 ); 
 

CREATE TABLE tbItem_Tamanho (
    Codigo_Moletom int auto_increment, 
    Cod_tamanho int,
    primary key (Codigo_moletom, Cod_Tamanho),
    foreign key (Codigo_Moletom) references tbMoletons (Codigo_Moletom),
    foreign key  (Cod_tamanho) references tbTamanho (Cod_Tamanho),
    Qtd_estoque int
);

-- FAZENDO OS INSERTS --

-- Insert da tabela tbCategoria -- 
INSERT INTO tbCategoria
VALUES 
(default, 'Animes'),
(DEFAULT, 'Friends'),
(DEFAULT, 'Minimalistas'),
(DEFAULT, 'Infantil');

SELECT *FROM tbCategoria;

  -- FAZENDO INSERTS DA TABELA tbTamanho --

INSERT INTO tbTamanho (Cod_tamanho, Tamannho)
VALUES
  (1, 'P'),
  (2, 'M'),
  (3, 'G'),
  (4, 'GG');
    
Select*From tbTamanho;


-- INSERT DA tbMoletons--
INSERT INTO tbMoletons (Codigo_Moletom, IdCategoria, Cod_Tamanho, Nome, Cor, Valor, Lm_Lancamentos, Genero, Imagem)
VALUES
  (1, 1, 1, 'Kimetsu Moletom', 'Preto', 55.00, 'S', 'Unissex', 'anime8'),
  (2, 1, 2, 'Jujutsu Moletom', 'Preto e Branco', 57.00, 'N', 'Unissex', 'anime5'),
  (3, 1, 3, 'Tomioka Moletom', 'Preto e Branco', 58.00, 'S', 'Unissex', 'anime1'),
  (4, 1, 4, 'Eren Yeager Moletom', 'Preto e Branco', 75.00, 'S', 'Unissex', 'anime 4'),
  (5, 1, 1, 'Gojo Moletom', 'Preto e Branco', 75.00, 'N', 'Unissex', 'anime7'),
  (6, 1, 2, 'Asas da Liberdade Moletom', 'Preto', 55.00, 'N', 'Unissex', 'anime6'),
  (7, 2, 1, 'Moletom Friends', 'Branco', 65.00, 'N', 'Unissex', 'f5'),
  (8, 2, 1, 'Moletom Friends', 'Grafite', 60.00, 'N', 'Unissex', 'f2'),
  (9, 2, 1, 'Moletom Preto Friends', 'Preto', 55.00, 'S', 'Unissex','f3'),
  (10, 2, 1, 'Sofá Friends', 'Branco', 55.00, 'S', 'Unissex', 'f4'),
  (11, 2, 1, 'Série Friends Moletom', 'Branco', 55.00, 'N', 'Unissex', 'f1'),
  (12, 3, 2, 'Moletom Borboletas e Espaço', 'Branco', 65.00, 'N', 'Unissex', 'm1'),
  (13, 3, 1, 'Coração Moletom', 'Preto', 60.00, 'N', 'Feminino', 'm2'),
  (14, 3, 2, 'Moletom Simples', 'Preto', 55.00, 'N', 'Unissex', 'm3'),
  (15, 3, 1, 'Moletom Borboleta', 'Branco', 69.00, 'S', 'Unissex','m4'),
  (16, 3, 3, 'Moletom Sol', 'Vinho', 70.00, 'N', 'Unissex', 'm6'),
  (17, 4, 2, 'Moletom Pokémon', 'Amarelo', 50.00, 'S', 'Masculino', 'infan1'),
  (18, 4, 1, 'Moletom Simples', 'Cinza', 60.00, 'N', 'Unissex', 'infan2'),
  (19, 4, 1, 'Moletom Monstros S.A', 'Verde', 55.00, 'S', 'Masculino', 'infan3'),
  (20, 4, 1, 'Moletom Frozen', 'Bege', 69.00, 'N', 'Feminino', 'infan4'),
  (21, 4, 1, 'Moletom Barbie', 'Preto e Rosa', 70.00, 'S', 'Feminino', 'infan5'),
  (22, 4, 2, 'Moletom Mickey', 'Cinza', 70.00, 'S', 'Masculino', 'infan6');

  SELECT*FROM tbMoletons; 
 update tbMoletons 
set Imagem = 'anime 4'
where codigo_moletom =4;

  -- FAZENDO INSERTS DA TABELA tbItem_Tamanho --

INSERT INTO tbItem_Tamanho (Codigo_Moletom, Cod_tamanho, Qtd_estoque)
VALUES
  (1, 1, 150),
  (2, 3, 250),
  (3, 1, 0),
  (4, 4, 49),
  (5, 2, 0),
  (6, 4, 99),
  (7, 4, 183),
  (8, 4, 155),
  (9, 3, 120),
  (10, 3, 0),
  (11, 1, 150),
  (12, 3, 18),
  (13, 1, 100),
  (14, 1, 200),
  (15, 1, 18),
  (16, 4, 121),
  (17, 4, 188),
  (18, 1, 184),
  (19, 2, 0),
  (20, 2, 0),
  (21, 2, 0),
  (22, 1, 0);
  

select*from tbItem_Tamanho;
INSERT INTO tbMoletons (Codigo_Moletom, IdCategoria, Cod_Tamanho, Nome, Cor, Valor, Lm_Lancamentos, Genero, Imagem)
VALUES
(23, 4, 2, ' Moletom Rengoku', 'Preto', 70.00, 'N', 'Masculino', 'anime9'),
(24, 4, 2, 'Bakugou Moletom', 'Preto', 75.00, 'S', 'Masculino', 'anime10'),
(25, 4, 2, 'Central Perk', 'Cinza', 65.00, 'N', 'Masculino', 'f6'),
(26, 4, 2, 'Los Angeles', 'Branco', 70.00, 'N', 'Feminino', 'f7'),
(27, 4, 2, 'Friends Nomes', 'Preto', 70.00, 'S', 'Feminino', 'f8'),
(28, 4, 2, 'Moletom Marie', 'Rosa', 70.00, 'N', 'Feminino', 'infan7'),
(29, 4, 2, 'Moletom Ohana', 'Branco', 70.00, 'N', 'Feminino', 'infan8'),
(30, 4, 2, 'Moletom Academy', 'Verde', 60.00, 'N', 'Masculino', 'm7'),
(31, 4, 2, 'Moletom Lua', 'Preto', 80.00, 'N', 'Feminino', 'm8'),
(32, 4, 2, 'Moletom Cogumelo', 'Preto', 70.00, 'N', 'Feminino', 'm9');


select*from tbMoletons;
INSERT INTO tbItem_Tamanho (Codigo_Moletom, Cod_tamanho, Qtd_estoque)
VALUES
  (23, 1, 150),
  (24, 1, 500),
  (25, 2, 35),
  (26, 2, 0),
  (27, 2, 79),
  (28, 3, 100),
  (29, 3, 250),
  (30, 4, 0),
  (31, 4, 5),
  (32, 4, 99);



-- VIEW QUE CARREGA AS IMAGENS E TELAS -- 
CREATE VIEW vw_MoletomInfo AS
SELECT
    Nome,
    Valor,
    Qtd_estoque,
    Imagem
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom;

SELECT*FROM vw_MoletomInfo;



CREATE VIEW vw_Moletom AS
SELECT
    Codigo_Moletom,
    Nome,
    Valor,
    Imagem
FROM tbMoletons;

SELECT*FROM vw_Moletom;



CREATE VIEW vw_MoletomInfo AS
SELECT
    Nome,
    Valor,
    Qtd_estoque,
    Imagem
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom;

SELECT*FROM vw_MoletomInfo;



CREATE VIEW vw_MoletomLanc AS
SELECT
    Nome,
    Valor,
    Qtd_estoque,
    Imagem,
    Lm_Lancamentos
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom;


SELECT*FROM vw_MoletomLanc where Lm_Lancamentos='S';

CREATE VIEW vw_Moletom AS
SELECT
    Codigo_Moletom,
    Nome,
    Valor,
    Imagem
FROM tbMoletons;

SELECT*FROM vw_Moletom;

CREATE VIEW vw_MoletomInfo AS
SELECT
    Nome,
    Valor,
    Qt_estoque,
    Imagem
FROM tbMoletons;

SELECT*FROM vw_MoletomInfo;
select Nome, Valor, Qt_estoque, imagem from tbMoletons;



CREATE VIEW vw_MoletomInfo AS
SELECT
    Nome,
    Valor,
    Qtd_estoque,
    Imagem
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom;


CREATE VIEW vw_MoletomLanc AS
SELECT
    Nome,
    Valor,
    Qtd_estoque,
    Imagem,
    Lm_Lancamentos
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom;

CREATE VIEW vw_MoletomCat AS
SELECT
    Nome,
    Valor,
    Qtd_estoque,
    Imagem,
    Lm_Lancamentos,
    NomeCategoria  -- Adicionando a coluna NomeCategoria
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom
INNER JOIN tbCategoria  ON tbMoletons.IdCategoria = tbCategoria.IdCategoria
;

select * from vw_MoletomCat where NomeCategoria='Infantil';


Select Nome,Valor,Imagem from tbMoletons where NomeCartegoria = 'Animes';

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

(default, 'Eloá Macedo', 'eloa.macedo22@gmail.com', 'admElo', 1, 'Rua Castelo Branco 45', 'São Paulo', '02005-445'),
(default, 'Laura Moreira', 'Laura.moreira22@gmail.com', 'More02', 0, 'Rua Bela  85', 'São Paulo', '22887-007'),
(default, 'Murilo Silva', 'Silva.Murilo2@gmail.com', 'Muri2', 0, 'Rua Astrogildo 13', 'São Paulo', '05020-005'); 

----- 


CREATE VIEW vw_MoletomOFC AS
SELECT
  tbMoletons.Codigo_Moletom,
  tbMoletons.Nome,
  tbMoletons.Valor,
  tbMoletons.Imagem,
  tbitem_tamanho.Qtd_estoque
FROM tbMoletons
INNER JOIN tbitem_tamanho
ON tbMoletons.Codigo_Moletom = tbitem_tamanho.Codigo_Moletom;







CREATE VIEW vw_MoletomOFC10 AS
SELECT
  tbMoletons.Codigo_Moletom,
  tbMoletons.Nome,
  tbMoletons.Cor,
  tbMoletons.Genero,
  tbMoletons.Valor,
  tbMoletons.Imagem,
  tbitem_tamanho.Qtd_estoque,
  tbTamanho.Tamannho
FROM tbMoletons
INNER JOIN tbitem_tamanho
ON tbMoletons.Codigo_Moletom = tbitem_tamanho.Codigo_Moletom
INNER join tbtamanho on TbMoletons.Cod_tamanho = tbTamanho.Cod_tamanho;

SELECT * FROM vw_MoletomOFC10;




CREATE VIEW vw_MoletomLanc1 AS
SELECT
      tbMoletons.Codigo_Moletom,
      tbMoletons.Nome,
     tbMoletons.Valor,
     tbitem_tamanho.Qtd_estoque,
      tbMoletons.Imagem,
   tbMoletons.Lm_Lancamentos
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom;




use dbLojaMoletons;

select * from tbUsuario;
SELECT * FROM tbCategoria;
select * from tbMoletons;
select * from tbTamanho;


update tbMoletons
set Imagem = 'anime4.jpg'
where Codigo_Moletom = 4;


UPDATE tbMoletons
SET Imagem = 
CASE 
    WHEN Codigo_Moletom = 4 THEN 'anime4.png'
    end
    where Codigo_Moletom IN (4);
    WHEN Codigo_Moletom = 5 THEN 'anime7.jpeg'
    WHEN Codigo_Moletom = 6 THEN 'anime6.jpeg'
    WHEN Codigo_Moletom = 7 THEN 'f5.jpeg'
    WHEN Codigo_Moletom = 8 THEN 'f2.jpeg'
    WHEN Codigo_Moletom = 9 THEN 'f3.jpeg'
    WHEN Codigo_Moletom = 10 THEN 'f4.jpeg'
    WHEN Codigo_Moletom = 11 THEN 'f1.jpeg'
    WHEN Codigo_Moletom = 12 THEN 'm1.jpeg'
    WHEN Codigo_Moletom = 13 THEN 'm2.jpeg'
    WHEN Codigo_Moletom = 14 THEN 'm3.jpeg'
    WHEN Codigo_Moletom = 15 THEN 'm4.jpeg'
    WHEN Codigo_Moletom = 16 THEN 'm6.jpeg'
    WHEN Codigo_Moletom = 17 THEN 'infan1.jpeg'
    WHEN Codigo_Moletom = 18 THEN 'infan2.jpeg'
    WHEN Codigo_Moletom = 19 THEN 'infan3.jpeg'
    WHEN Codigo_Moletom = 20 THEN 'infan4.jpeg'
    WHEN Codigo_Moletom = 21 THEN 'infan5.jpeg'
    WHEN Codigo_Moletom = 22 THEN 'infan6.jpeg'
END
WHERE Codigo_Moletom IN (2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22);


UPDATE tbMoletons
SET Imagem = 
CASE 
    WHEN Codigo_Moletom = 23 THEN 'anime9.jpeg'
    WHEN Codigo_Moletom = 24 THEN 'anime10.jpeg'
    WHEN Codigo_Moletom = 25 THEN 'f6.jpeg'
    WHEN Codigo_Moletom = 26 THEN 'f7.jpeg'
    WHEN Codigo_Moletom = 27 THEN 'f8.jpeg'
    WHEN Codigo_Moletom = 28 THEN 'infan7.jpeg'
    WHEN Codigo_Moletom = 29 THEN 'infan8.jpeg'
    WHEN Codigo_Moletom = 30 THEN 'm7.jpeg'
    WHEN Codigo_Moletom = 31 THEN 'm8.jpeg'
    WHEN Codigo_Moletom = 32 THEN 'm9.jpeg'
END
WHERE Codigo_Moletom IN (23, 24, 25, 26, 27, 28, 29, 30, 31, 32);


