/* 

    Script Inicial do Projeto de Loja de Sucos Projeto - Alura;
    
    1- Cria��o da tabela clientes 
    2- Cria��o da tabela vendedores
    3- Cria��o da tabela de produto
    4- Inser��o de valores na tabela vendedores
    5- Inser��o de valores na tabela produtos
    6- Inser��o de valores na tabela Clientes
    7- Consultas personalizada Produtos
    8- Consulta personalizada Clientes

*/ 


/* ========================================= 1 ========================================= */ 
CREATE TABLE TB_CLIENTES
(CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(2),
CEP VARCHAR(8),
IDADE INT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA NUMBER(1));

ALTER TABLE TB_CLIENTES ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CPF);

ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

/* ========================================= 2 ========================================= */ 
CREATE TABLE TB_VENDEDORES(
MATRICULA VARCHAR2(5),
NOME VARCHAR2(100),
VALOR_COMISSAO FLOAT);

/* ========================================= 3 ========================================= */ 

CREATE TABLE TB_PRODUTOS
(PRODUTO VARCHAR (20) ,
NOME VARCHAR (150) ,
EMBALAGEM VARCHAR (50) ,
TAMANHO VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECO_LISTA FLOAT);

ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS 
PRIMARY KEY (PRODUTO);

/* ========================================= 4 ========================================= */ 

INSERT INTO TB_VENDEDORES (MATRICULA,NOME,VALOR_COMISSAO) VALUES ('00233','Jos� Geraldo da Fonseca',0.1);
INSERT INTO TB_VENDEDORES (MATRICULA,NOME,VALOR_COMISSAO) VALUES ('00235','M�rcio Almeida Silva',0.08);
INSERT INTO TB_VENDEDORES (MATRICULA,NOME,VALOR_COMISSAO) VALUES ('00236','Cl�udia Morais',0.08);
SELECT * FROM TB_VENDEDORES;

/* ========================================= 5 ========================================= */ 

INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1040107','Light - 350 ml - Mel�ncia','Lata','350 ml','Mel�ncia',4.555);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1037797','Clean - 2 Litros - Laranja','PET','2 Litros','Laranja',16.008);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1000889','Sabor da Montanha - 700 ml - Uva','Garrafa','700 ml','Uva',6.309);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1004327','Videira do Campo - 1,5 Litros - Mel�ncia','PET','1,5 Litros','Mel�ncia',19.51);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1088126','Linha Citros - 1 Litro - Lim�o','PET','1 Litro','Lim�o',7.004);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('544931','Frescor do Ver�o - 350 ml - Lim�o','Lata','350 ml','Lim�o',2.4595);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1078680','Frescor do Ver�o - 470 ml - Manga','Garrafa','470 ml','Manga',5.1795);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1042712','Linha Citros - 700 ml - Lim�o','Garrafa','700 ml','Lim�o',4.904);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('788975','Peda�os de Frutas - 1,5 Litros - Ma�a','PET','1,5 Litros','Ma�a',18.011);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1002767','Videira do Campo - 700 ml - Cereja/Ma�a','Garrafa','700 ml','Cereja/Ma�a',8.41);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('231776','Festival de Sabores - 700 ml - A�ai','Garrafa','700 ml','A�ai',13.312);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('479745','Clean - 470 ml - Laranja','Garrafa','470 ml','Laranja',3.768);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1051518','Frescor do Ver�o - 470 ml - Lim�o','Garrafa','470 ml','Lim�o',3.2995);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1101035','Linha Refrescante - 1 Litro - Morango/Lim�o','PET','1 Litro','Morango/Lim�o',9.0105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('229900','Peda�os de Frutas - 350 ml - Ma�a','Lata','350 ml','Ma�a',4.211);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1086543','Linha Refrescante - 1 Litro - Manga','PET','1 Litro','Manga',11.0105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('695594','Festival de Sabores - 1,5 Litros - A�ai','PET','1,5 Litros','A�ai',28.512);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('838819','Clean - 1,5 Litros - Laranja','PET','1,5 Litros','Laranja',12.008);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('326779','Linha Refrescante - 1,5 Litros - Manga','PET','1,5 Litros','Manga',16.5105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('520380','Peda�os de Frutas - 1 Litro - Ma�a','PET','1 Litro','Ma�a',12.011);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1041119','Linha Citros - 700 ml - Lima/Lim�o','Garrafa','700 ml','Lima/Lim�o',4.904);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('243083','Festival de Sabores - 1,5 Litros - Maracuj�','PET','1,5 Litros','Maracuj�',10.512);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('394479','Sabor da Montanha - 700 ml - Cereja','Garrafa','700 ml','Cereja',8.409);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('746596','Light - 1,5 Litros - Mel�ncia','PET','1,5 Litros','Mel�ncia',19.505);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('773912','Clean - 1 Litro - Laranja','PET','1 Litro','Laranja',8.008);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('826490','Linha Refrescante - 700 ml - Morango/Lim�o','Garrafa','700 ml','Morango/Lim�o',6.3105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('723457','Festival de Sabores - 700 ml - Maracuj�','Garrafa','700 ml','Maracuj�',4.912);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('812829','Clean - 350 ml - Laranja','Lata','350 ml','Laranja',2.808);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('290478','Videira do Campo - 350 ml - Mel�ncia','Lata','350 ml','Mel�ncia',4.56);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('783663','Sabor da Montanha - 700 ml - Morango','Garrafa','700 ml','Morango',7.709);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('235653','Frescor do Ver�o - 350 ml - Manga','Lata','350 ml','Manga',3.8595);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1002334','Linha Citros - 1 Litro - Lima/Lim�o','PET','1 Litro','Lima/Lim�o',7.004);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1013793','Videira do Campo - 2 Litros - Cereja/Ma�a','PET','2 Litros','Cereja/Ma�a',24.01);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1096818','Linha Refrescante - 700 ml - Manga','Garrafa','700 ml','Manga',7.7105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1022450','Festival de Sabores - 2 Litros - A�ai','PET','2 Litros','A�ai',38.012);


/* ========================================= 6 ========================================= */ 
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','�gua Santa','Rio de Janeiro','RJ','22000000',TO_DATE('2000-02-12','YYYY-MM-DD'),18,'M',100000,200000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('2600586709','C�sar Teixeira','Rua Conde de Bonfim','','Tijuca','Rio de Janeiro','RJ','22020001',TO_DATE('2000-03-12','YYYY-MM-DD'),18,'M',120000,220000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('95939180787','F�bio Carvalho','R. dos Jacarand�s da Pen�nsula','','Barra da Tijuca','Rio de Janeiro','RJ','22002020',TO_DATE('1992-01-05','YYYY-MM-DD'),16,'M',90000,180000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('9283760794','Edson Meilelles','R. Pinto de Azevedo','','Cidade Nova','Rio de Janeiro','RJ','22002002',TO_DATE('1995-10-07','YYYY-MM-DD'),22,'M',150000,250000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('7771579779','Marcelo Mattos','R. Eduardo Lu�s Lopes','','Br�s','S�o Paulo','SP','88202912',TO_DATE('1992-03-25','YYYY-MM-DD'),25,'M',120000,200000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5576228758','Petra Oliveira','R. Ben�cio de Abreu','','Lapa','S�o Paulo','SP','88192029',TO_DATE('1995-11-14','YYYY-MM-DD'),22,'F',70000,160000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('8502682733','Valdeci da Silva','R. Srg. �dison de Oliveira','','Jardins','S�o Paulo','SP','82122020',TO_DATE('1995-10-07','YYYY-MM-DD'),22,'M',110000,190000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('1471156710','�rica Carvalho','R. Iriquitia','','Jardins','S�o Paulo','SP','80012212',TO_DATE('1990-09-01','YYYY-MM-DD'),27,'F',170000,245000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('3623344710','Marcos Nougeuira','Av. Pastor Martin Luther King Junior','','Inhauma','Rio de Janeiro','RJ','22002012',TO_DATE('1995-01-13','YYYY-MM-DD'),23,'M',110000,220000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('50534475787','Abel Silva ','Rua Humait�','','Humait�','Rio de Janeiro','RJ','22000212',TO_DATE('1995-09-11','YYYY-MM-DD'),22,'M',170000,260000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5840119709','Gabriel Araujo','R. Manuel de Oliveira','','Santo Amaro','S�o Paulo','SP','80010221',TO_DATE('1985-03-16','YYYY-MM-DD'),32,'M',140000,210000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('94387575700','Walber Lontra','R. Cel. Almeida','','Piedade','Rio de Janeiro','RJ','22000201',TO_DATE('1989-06-20','YYYY-MM-DD'),28,'M',60000,120000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','','Jardins','S�o Paulo','SP','81192002',TO_DATE('1983-12-20','YYYY-MM-DD'),34,'M',200000,240000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5648641702','Paulo C�sar Mattos','Rua H�lio Beltr�o','','Tijuca','Rio de Janeiro','RJ','21002020',TO_DATE('1991-08-30','YYYY-MM-DD'),26,'M',120000,220000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('492472718','Eduardo Jorge','R. Volta Grande','','Tijuca','Rio de Janeiro','RJ','22012002',TO_DATE('1994-07-19','YYYY-MM-DD'),23,'M',75000,95000,1);

/* ========================================= 7 ========================================= */ 
SELECT * FROM TB_PRODUTOS;
SELECT * FROM TB_PRODUTOS WHERE PRODUTO = '1037797';
SELECT * FROM TB_PRODUTOS WHERE SABOR = 'Laranja';

/* Deve retornar Vazio */
SELECT * FROM TB_PRODUTOS WHERE SABOR = 'C�tricos';

/* Retorna todos Produtos cujo o sabor � lim�o */ 
SELECT * FROM TB_PRODUTOS WHERE SABOR = 'Lim�o';

/* Atualiza os registros que tem sabor Lim�o para C�tricos */
UPDATE TB_PRODUTOS SET SABOR = 'C�tricos' WHERE SABOR = 'Lim�o';

/* Retorna todos os produtos com sabor C�trico */
SELECT * FROM TB_PRODUTOS WHERE SABOR = 'C�tricos';

/* Retorna Vazio */
SELECT * FROM TB_PRODUTOS WHERE SABOR = 'Lim�o';

/* ========================================= 8 ========================================= */ 

/* Seleciona Todos registros dentro da tabela Cliente */
SELECT * FROM TB_CLIENTES;

/* Sele��o de todos os produtos por�m com uma sintaxe literal*/
SELECT CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, 
VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO
FROM TB_CLIENTES;

/* Sele��o personalizada */

SELECT CPF, NOME, IDADE, DATA_NASCIMENTO
FROM TB_CLIENTES;

/* Mudan�a da ordem impacta como o resultado � exibido */
SELECT IDADE, CPF, NOME, DATA_NASCIMENTO
FROM TB_CLIENTES;

/* Cria um Label para os campos CPF e Nome personalizado para exibi��o do resultado da consulta */

SELECT CPF AS CPF_DO_CLIENTE, NOME AS NOME_DO_CLIENTE, IDADE, DATA_NASCIMENTO
FROM TB_CLIENTES;

