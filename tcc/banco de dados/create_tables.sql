-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cidades (
nome_cidade varchar(80),
cod_cidade int(1) PRIMARY KEY,
cod_estado int(1)
);

CREATE TABLE estados (
nome_estado varchar(80),
cod_estado int(1) PRIMARY KEY
);

CREATE TABLE tipo_usuario (
desc_tipo varchar(80),
cod_tipo_usuario int(1) PRIMARY KEY
);

CREATE TABLE cad_paciente (
data_nasc date,
telefone varchar(11),
cpf varchar(20) PRIMARY KEY,
cod_usuario int(1)
);

CREATE TABLE cad_medico (
universidade varchar(80),
crm int(5) PRIMARY KEY,
especializacao varchar(50),
cod_usuario int(1)
);

CREATE TABLE teste (
data date,
descricao varchar(80),
cod_teste int(1) PRIMARY KEY,
titulo varchar(80),
ativo binary,
cod_usuario int(1)
);

CREATE TABLE perguntas (
cod_pergunta int(1) PRIMARY KEY,
texto_pergunta varchar(80),
cod_teste int(1),
FOREIGN KEY(cod_teste) REFERENCES teste (cod_teste)
);

CREATE TABLE alternativas (
texto_resposta varchar(80),
correto binary,
cod_alternativa int(1) PRIMARY KEY,
letra_alternativa text,
cod_pergunta int(1),
FOREIGN KEY(cod_pergunta) REFERENCES perguntas (cod_pergunta)
);

CREATE TABLE imagens (
caminho_img varchar(80),
cod_img int(1) PRIMARY KEY,
cod_usuario int(1),
cod_conv int(1)
);

CREATE TABLE conversas (
texto varchar(250),
dth datetime,
cod_conv int(1) PRIMARY KEY,
cod_user_env int(1),
cod_user_rec int(1)
);

CREATE TABLE usuario (
email varchar(100),
cod_usuario int(1) PRIMARY KEY,
nome varchar(60),
senha varchar(8),
cod_estado int(1),
cod_tipo_usuario int(1),
FOREIGN KEY(cod_estado) REFERENCES estados (cod_estado),
FOREIGN KEY(cod_tipo_usuario) REFERENCES tipo_usuario (cod_tipo_usuario)
);

CREATE TABLE responde (
cpf varchar(20),
cod_teste int(1),
resp_json json,
cod_resposta int(1) PRIMARY KEY,
FOREIGN KEY(cpf) REFERENCES cad_paciente (cpf),
FOREIGN KEY(cod_teste) REFERENCES teste (cod_teste)
);

ALTER TABLE cidades ADD FOREIGN KEY(cod_estado) REFERENCES estados (cod_estado);
ALTER TABLE cad_paciente ADD FOREIGN KEY(cod_usuario) REFERENCES usuario (cod_usuario);
ALTER TABLE cad_medico ADD FOREIGN KEY(cod_usuario) REFERENCES usuario (cod_usuario);
ALTER TABLE teste ADD FOREIGN KEY(cod_usuario) REFERENCES usuario (cod_usuario);
ALTER TABLE imagens ADD FOREIGN KEY(cod_usuario) REFERENCES usuario (cod_usuario);
ALTER TABLE imagens ADD FOREIGN KEY(cod_conv) REFERENCES conversas (cod_conv);
ALTER TABLE conversas ADD FOREIGN KEY(cod_user_env) REFERENCES usuario (cod_usuario);
ALTER TABLE conversas ADD FOREIGN KEY(cod_user_rec) REFERENCES usuario (cod_usuario);
