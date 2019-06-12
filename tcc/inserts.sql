insert into usuario (nome,email,senha,cod_estado,cod_tipo_usuario, cod_usuario) 
values ("Laíza Casagrande","csgd.laiza@gmail.com","lai123",1,1,1), 
		("Eduarda Maia","dudakaroline1@gmail.com","duda123",1,1,2),
		("Josiane da Silva","josianesilva@gmail.com","josi123",1,2,3),
		("Pedro Paulo","ppaulo12@hotmail.com","pedro123",5,2,4), 
		("Lucas Magalhães","lucasmaga15@gmail.com","lucas123",1,2,5), 
		("Ana Monteiro","anamonteiroo@gmail.com","ana123", 2,2,6), 
		("Joana Machado","joanaamachadoo@hotmail.com","joana123",5,2,7), 
		("Michele Carvalho","michele.carvalho@hotmail.com","mich123",1,2,8),
		("Gilberto Fabiano","gilberto.fabiano@hotmail.com","beto123",5,2,9),
		("Giovanna Rafaela","giovanna.rafaela@outlook.com","gika123",2,2,10),
		("Alexandre Cardoso","alex.cardoso@gmail.com","alex123",5,2,11),
		("Leonardo Pires","leo.pires@gmail.com","leo123",1,2,12),
		("Wesley Antunes","wesley.antunes@hotmail.com","ley123",5,3,13),
		("Catarina Cardoso","catarina.cardoso@gmail.com","cari123",2,3,14),
		("Theodora Martinelli","theomartinelli@hotmail.com","theo123",1,3,15),
		("Anitta Souza","anitta.souza@gmail.com","nita123",5,3,16),
		("Danilo Martins","danilo.martins@hotmail.com","dani123",1,3,17),
		("Antonio da Lua","toninhodalua@outlook.com","tony123",1,3,18),
		("Cristina Soares","cris.soares@outlook.com","cris123",2,3,19),
		("Amanda Nunk","amanda.nunk@outlook.com","nanda123",5,3,20),
		("Teresa Hosbanski","teresa.hosbanski@gmail.com","tete123",2,3,21);

INSERT INTO `cad_medico` (`universidade`, `crm`,`especializacao`,`cod_usuario`) 
VALUES  ('Universidade Federal de Santa Catarina-UFSC', 14544, 'Neuro-oftmalmologia',21),
		('Universidade Federal do Paraná-UFPR', 14545,'Oncologia ocular',9),
		('Universidade Federal de Santa Catarina-UFSC', 14546,'Pálpebras e vias lacrimais',13),
		('Universidade Federal de Santa Catarina-UFSC', 14547,'Glaucoma',7),
		('Universidade Federal de Santa Catarina-UFSC', 14548,'Oftalmologia pediátrica',6),
		('Universidade Federal de Santa Catarina-UFSC', 14549,'Oftalmologia cirurgica',2),
		('Universidade Federal de Santa Catarina-UFSC', 14550,'Catarata',19),
		('Universidade Federal do Paraná-UFPR', 14551,'Oftalmologia genética',5),
		('Universidade Federal do Paraná-UFPR', 14552,'Astigmatismo',20);

INSERT INTO `cad_paciente` (`cpf`, `data_nasc`, `telefone`, `cod_usuario`) 
VALUES  ("196.456.187-46","1998-02-17","47 34370184",21),
		("296.731.864-58","1996-06-02","47 99624401",10),
		("197.358.760-34","2001-04-09","47 34352184",14),
		("284.530.251-98","1965-12-16","47 99171132",15),
		("173.584.972-66","1978-03-25","47 98651204",16),
		("227.933.482-98","1989-11-30","47 34059816",17),
		("258.458.749-65","1993-07-28","47 84992561",18),
		("173.249.756-95","1983-12-19","47 34360914",1),
		("133.748.956-64","1969-11-10","47 99620105",3),
		("105.549.322-17","1998-07-21","47 94652535",4);

INSERT INTO `cidades` (`nome_cidade`, `cod_cidade`, `cod_estado`) 
values  ('Joinville', 1, 1),
		('Niterói', 2,7 ),
		('Belo Horizonte', 3, 8),
		('Santos', 4, 10),
		('Curitiba', 5, 3),
		('Porto Alegre', 6, 2),
		('Vitória', 7, 9),
		('Salvador', 8, 4),
		('Rio Branco', 9, 5),
		('Campo Grande', 10, 6);

INSERT INTO `estados` (`cod_estado`, `nome_estado`) 
VALUES  (1, 'Santa Catarina'),
		(2, 'Rio Grande do Sul'),
		(3, 'Paraná'),
		(4, 'Bahia'),
		(5, 'Acre'),
		(6, 'Mato Grosso do Sul'),
		(7, 'Rio de Janeiro'),
		(8, 'Minas Gerais'),
		(9, 'Espírito Santo'),
		(10,'São Paulo');

INSERT INTO `tipo_usuario` (`desc_tipo`, `cod_tipo_usuario`) 
VALUES  ('administrador', 1),
		('paciente', 2),
		('medico', 3);

INSERT INTO `teste` (`titulo`, `ativo`, `cod_teste`, `descricao`, `data`,`cod_usuario`) VALUES
('Teste 1', 0x01, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-03-02',1),
('Teste 2', 0x00, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2015-06-02',1),
('Teste 3', 0x01, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2010-03-05',2),
('Teste 4', 0x00, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2017-04-02',2),
('Teste 5', 0x01, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2016-04-10',3);

INSERT INTO `perguntas` (`texto_pergunta`, `cod_pergunta`, `cod_teste`) VALUES
('Pergunta 1', 1, 1),
('Pergunta 2', 2, 1),
('Pergunta 3', 3, 1),
('Pergunta 4', 4, 1),
('Pergunta 5', 5, 1),
('Pergunta 1', 6, 2),
('Pergunta 2', 7, 2),
('Pergunta 3', 8, 2),
('Pergunta 1', 9, 3),
('Pergunta 2', 10, 3),
('Pergunta 3', 11, 3),
('Pergunta 1', 12, 4),
('Pergunta 2', 13, 4),
('Pergunta 2', 14, 4),
('Pergunta 3', 15, 4),
('Pergunta 1', 16, 5),
('Pergunta 2', 17, 5),
('Pergunta 3', 18, 5),
('Pergunta 4', 19, 5),
('Pergunta 5', 20, 5);

/*
FALTA PREENCHER AINDA :conversas (botar codigo do insert da perguntas aqui)
TABELA CONVERSAS AJUDA DO SOR: como identificar quais usuários estão na conversa

teste 1: 5 perguntas 2 alternativas em cada pergunta = 10 alternativas p esse teste
teste 2: 3 perguntas 2 alternativas em cada pergunta = 6 alternativas p esse teste
teste 3: 3 perguntas 2 alternativas em cada pergunta = 6 alternativas p esse teste
teste 4: 4 perguntas 2 alternativas em cada pergunta = 8 alternativas p esse teste
teste 5: 5 perguntas 2 alternativas em cada pergunta = 10 alternativas p esse teste

INSERIR COMANDO DE INSERT ABAIXO NA ALTERNATIVAS
*/

INSERT INTO `alternativas` (`texto_resposta`, `correto`, `letra_alternativa`, `cod_alternativa`, `cod_pergunta`) VALUES 
('Lorem Ipsum is simply dummy text.',1,'a',1,1),
('Lorem Ipsum is simply dummy text.',0,'b',2,1),
('Lorem Ipsum is simply dummy text.',1,'a',3,2),
('Lorem Ipsum is simply dummy text.',0,'b',4,2),
('Lorem Ipsum is simply dummy text.',1,'a',5,3),
('Lorem Ipsum is simply dummy text.',0,'b',6,3),
('Lorem Ipsum is simply dummy text.',1,'a',7,4),
('Lorem Ipsum is simply dummy text.',0,'b',8,4),
('Lorem Ipsum is simply dummy text.',1,'a',9,5),
('Lorem Ipsum is simply dummy text.',0,'b',10,5),
('Lorem Ipsum is simply dummy text.',1,'a',11,6),
('Lorem Ipsum is simply dummy text.',0,'b',12,6),
('Lorem Ipsum is simply dummy text.',1,'a',13,7),
('Lorem Ipsum is simply dummy text.',0,'b',14,7),
('Lorem Ipsum is simply dummy text.',1,'a',15,8),
('Lorem Ipsum is simply dummy text.',0,'b',16,8),
('Lorem Ipsum is simply dummy text.',1,'a',17,9),
('Lorem Ipsum is simply dummy text.',0,'b',18,9),
('Lorem Ipsum is simply dummy text.',1,'a',19,10),
('Lorem Ipsum is simply dummy text.',0,'b',20,10),
('Lorem Ipsum is simply dummy text.',1,'a',21,11),
('Lorem Ipsum is simply dummy text.',0,'b',22,11),
('Lorem Ipsum is simply dummy text.',1,'a',23,12),
('Lorem Ipsum is simply dummy text.',0,'b',24,12),
('Lorem Ipsum is simply dummy text.',1,'a',25,13),
('Lorem Ipsum is simply dummy text.',0,'b',26,13),
('Lorem Ipsum is simply dummy text.',1,'a',27,14),
('Lorem Ipsum is simply dummy text.',0,'b',28,14),
('Lorem Ipsum is simply dummy text.',1,'a',29,15),
('Lorem Ipsum is simply dummy text.',0,'b',30,15),
('Lorem Ipsum is simply dummy text.',1,'a',31,16),
('Lorem Ipsum is simply dummy text.',0,'b',32,16),
('Lorem Ipsum is simply dummy text.',1,'a',33,17),
('Lorem Ipsum is simply dummy text.',0,'b',34,17),
('Lorem Ipsum is simply dummy text.',1,'a',35,18),
('Lorem Ipsum is simply dummy text.',0,'b',36,18),
('Lorem Ipsum is simply dummy text.',1,'a',37,19),
('Lorem Ipsum is simply dummy text.',0,'b',38,19),
('Lorem Ipsum is simply dummy text.',1,'a',39,20),
('Lorem Ipsum is simply dummy text.',0,'b',40,20);

INSERT INTO responde (cpf, cod_teste, cod_resposta, resp_json) VALUES
("196.456.187-46",1,1,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}'),
("196.456.187-46",2,2,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("196.456.187-46",3,3,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("196.456.187-46",4,4,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a"
		}'),
("196.456.187-46",5,5,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}'),
("296.731.864-58",1,6,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}'),
("296.731.864-58",2,7,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("197.358.760-34",1,8,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}'),
("197.358.760-34",2,9,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("197.358.760-34",3,10,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("284.530.251-98",1,11,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}'),
("284.530.251-98",2,12,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("284.530.251-98",3,13,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("284.530.251-98",4,14,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a"
		}'),
("284.530.251-98",5,15,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}'),
("173.584.972-66",1,16,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}'),
("173.584.972-66",2,17,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("173.584.972-66",3,18,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b"
		}'),
("173.584.972-66",4,19,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a"
		}'),
("173.584.972-66",5,20,'{
		"pergunta": 1, "alternativa": "b", 
		"pergunta": 2, "alternativa": "a", 
		"pergunta": 3, "alternativa": "b", 
		"pergunta": 4, "alternativa": "a", 
		"pergunta": 5, "alternativa": "a"
		}');

INSERT INTO `conversas` (`texto`, `dth`,`cod_conv`,`cod_user_env`,`cod_user_rec`) VALUES
("Oi doutor boa tarde","2019-02-12 14:20",1,12,21),
("Boa tarde Leonardo", "2019-02-12 14:21",2,21,12),
("Estou com um incomodo nos olhos","2019-02-12 14:24",3,12,21),
("Voce pode dar uma olhada nas fotos que estou te enviando?","2019-02-12 14:24",4,12,21),
("imagem","2019-02-12 14:25",5,12,21),
("imagem","2019-02-12 14:25",6,12,21),
("imagem","2019-02-12 14:25",7,12,21),
("imagem","2019-02-12 14:26",8,12,21),
("imagem","2019-02-12 14:26",9,12,21),
("imagem","2019-02-12 14:26",10,12,21),
("imagem","2019-02-12 14:27",11,12,21),
("imagem","2019-02-12 14:27",12,12,21),
("imagem","2019-02-12 14:27",13,12,21),
("Bom, me parece que está tudo normal com seus olhos", "2019-02-12 14:45",14,21,12),
("Porém, recomendo que voce procure utilizar colirio pois se há algum incomodo como voce disse, deve ser tratado", "2019-02-12 14:45",15,21,12),
("Está bem doutor, vou hoje mesmo a farmacia mais proxima", "2019-02-12 14:50",16,12,21),
("Obrigado pelo retorno", "2019-02-12 14:50",17,12,21),
("De nada", "2019-02-12 14:52",18,21,12),
("Até mais Leonardo", "2019-02-12 14:52",19,21,12),
("Até", "2019-02-12 14:53",20,12,21);

INSERT INTO `imagens` (`cod_img`, `caminho_img`,`cod_usuario`,`cod_conv`) VALUES
(1, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\1.png',12,5),
(2, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\2.png',12,6),
(3, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\3.png',12,7),
(4, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\4.png',12,8),
(5, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\5.png',12,9),
(6, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\6.png',12,10),
(7, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\7.png',12,11),
(8, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\8.png',12,12),
(9, 'C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\9.png',12,12);