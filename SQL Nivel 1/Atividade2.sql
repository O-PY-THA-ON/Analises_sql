create table bibl(
  id_livro int,
  nome_autor varchar(300),
  nome_livro varchar(300),
  ano_livro int,
  colecao varchar(300),
  genero_livro varchar(300),
  id_autor int,
  ano_autor INT,
  genero_autor varchar(300),
  editora varchar(300)
);
insert into bibl values(1,'Autor A','Livro A',2015,'Coleção A', 'Romance',1,35,'Masculino', 'editora a');
insert into bibl values(2,'Autor A','Livro B',2015,'Coleção B', 'Romance',1,35,'Masculino', 'editora b');
insert into bibl values(3,'Autor B','Livro C',2018,'Coleção C', 'Drama',2,40,'Feminino', 'editora c');
insert into bibl values(4,'Autor C','Livro D',2019,'Coleção C', 'Ação',3,50,'Masculino', 'editora d');
insert into bibl values(5,'Autor C','Livro E',2015,'Coleção C', 'Drama',3,50,'Masculino', 'editora e');

SELECT * from bibl;