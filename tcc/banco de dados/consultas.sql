/* inserindo dados para os perfis dos usuarios */
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

/* selecionando o perfil do usuario = paciente */
SELECT nome, data_nasc, telefone, email, nome_cidade, nome_estado from usuario, cad_paciente, estados, cidades where usuario.cod_usuario=cad_paciente.cod_usuario and estados.cod_estado=usuario.cod_estado and estados.cod_estado=cidades.cod_estado;

/* atualizando o perfil do usuario = paciente*/
UPDATE usuario SET nome = 'Pedro Henrique' where nome = 'Pedro Paulo';
UPDATE cad_paciente SET data_nasc = '1998-07-20' where data_nasc = '1998-07-21';
UPDATE cad_paciente SET telefone = '47 94659535' where telefone = '47 94652535';
UPDATE usuario SET email = 'paulo12@hotmail.com' where email = 'ppaulo12@hotmail.com';
UPDATE estados SET nome_estado = 'Santa Catarina' where nome_estado = 'Acre';
UPDATE cidades SET nome_cidade = 'Blumenau' where nome_cidade = 'Rio Branco';

/* selecionando o perfil do usuario = medico */
SELECT nome, email, crm, especializacao, universidade, nome_cidade, nome_estado from usuario, cad_medico, cidades, estados where usuario.cod_usuario=cad_medico.cod_usuario and estados.cod_estado=usuario.cod_estado and estados.cod_estado=cidades.cod_estado;

/* atualizando o perfil do usuario = medico*/
UPDATE usuario SET nome = ' Wesley Antonio' where nome = 'Wesley Antunes';
UPDATE usuario SET email = 'wesley.antonio@hotmail.com' where email = 'wesley.antunes@hotmail.com';
UPDATE cad_medico SET crm = '14543' where crm = '14546';
UPDATE cad_medico SET especializacao = 'Pálpebras' where especializacao = 'Pálpebras e vias lacrimais';
UPDATE cad_medico SET universidade = 'UFSC' where universidade = 'Universidade Federal de Santa Catarina';
UPDATE estados SET nome_estado = 'São Paulo' where nome_estado = 'Acre';
UPDATE cidades SET nome_cidade = 'Santos' where nome_cidade = 'Rio Branco';

/*login dos usuários*/
SELECT email,senha from usuario where cod_tipo_usuario in(2,3);
















