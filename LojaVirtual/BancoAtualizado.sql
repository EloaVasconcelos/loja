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
  (5, 1, 1, 'Gojo Moletom', 'Preto e Branco', 75.00, 'S', 'Unissex', 'anime7'),
  (6, 1, 2, 'Asas da Liberdade Moletom', 'Preto', 55.00, 'S', 'Unissex', 'anime6'),
  (7, 2, 1, 'Moletom Friends', 'Branco', 65.00, 'S', 'Unissex', 'f5'),
  (8, 2, 1, 'Moletom Friends', 'Grafite', 60.00, 'S', 'Unissex', 'f2'),
  (9, 2, 1, 'Moletom Preto Friends', 'Preto', 55.00, 'S', 'Unissex','f3'),
  (10, 2, 1, 'Sofá Friends', 'Branco', 55.00, 'S', 'Unissex', 'f4'),
  (11, 2, 1, 'Série Friends Moletom', 'Branco', 55.00, 'S', 'Unissex', 'f1'),
  (12, 3, 2, 'Moletom Borboletas e Espaço', 'Branco', 65.00, 'S', 'Unissex', 'm1'),
  (13, 3, 1, 'Coração Moletom', 'Preto', 60.00, 'S', 'Feminino', 'm2'),
  (14, 3, 2, 'Moletom Simples', 'Preto', 55.00, 'S', 'Unissex', 'm3'),
  (15, 3, 1, 'Moletom Borboleta', 'Branco', 69.00, 'S', 'Unissex','m4'),
  (16, 3, 3, 'Moletom Sol', 'Vinho', 70.00, 'S', 'Unissex', 'm6'),
  (17, 4, 2, 'Moletom Pokémon', 'Amarelo', 50.00, 'S', 'Masculino', 'infan1'),
  (18, 4, 1, 'Moletom Simples', 'Cinza', 60.00, 'S', 'Unissex', 'infan2'),
  (19, 4, 1, 'Moletom Monstros S.A', 'Verde', 55.00, 'S', 'Masculino', 'infan3'),
  (20, 4, 1, 'Moletom Frozen', 'Bege', 69.00, 'S', 'Feminino', 'infan4'),
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
(23, 4, 2, ' Moletom Rengoku', 'Preto', 70.00, 'S', 'Masculino', 'anime9'),
(24, 4, 2, 'Bakugou Moletom', 'Preto', 75.00, 'S', 'Masculino', 'anime10'),
(25, 4, 2, 'Central Perk', 'Cinza', 65.00, 'S', 'Masculino', 'f6'),
(26, 4, 2, 'Los Angeles', 'Branco', 70.00, 'S', 'Feminino', 'f7'),
(27, 4, 2, 'Friends Nomes', 'Preto', 70.00, 'S', 'Feminino', 'f8'),
(28, 4, 2, 'Moletom Marie', 'Rosa', 70.00, 'S', 'Feminino', 'infan7'),
(29, 4, 2, 'Moletom Ohana', 'Branco', 70.00, 'S', 'Feminino', 'infan8'),
(30, 4, 2, 'Moletom Academy', 'Verde', 60.00, 'S', 'Masculino', 'm7'),
(31, 4, 2, 'Moletom Lua', 'Preto', 80.00, 'S', 'Feminino', 'm8'),
(32, 4, 2, 'Moletom Cogumelo', 'Preto', 70.00, 'S', 'Feminino', 'm9');

delete from tbMoletons where Codigo_Moletom=28;

update tbMoletons 
set Imagem = 'infan7'
where codigo_moletom =28;



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

CREATE VIEW vw_MoletomInfo AS
SELECT
    Nome,
    Valor,
    Qtd_estoque,
    Imagem
FROM tbMoletons 
INNER JOIN tbItem_Tamanho ON tbMoletons.Codigo_Moletom = tbItem_Tamanho.Codigo_Moletom;

SELECT*FROM vw_MoletomInfo;