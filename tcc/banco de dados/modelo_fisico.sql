-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 14-Maio-2019 às 00:27
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto_2019`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alternativas`
--

DROP TABLE IF EXISTS `alternativas`;
CREATE TABLE IF NOT EXISTS `alternativas` (
  `texto_resposta` varchar(80) DEFAULT NULL,
  `correto` binary(1) DEFAULT NULL,
  `letra_alternativa` text,
  `cod_alternativa` int(1) NOT NULL,
  `cod_pergunta` int(1) DEFAULT NULL,
  PRIMARY KEY (`cod_alternativa`),
  KEY `cod_pergunta` (`cod_pergunta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alternativas`
--

INSERT INTO `alternativas` (`texto_resposta`, `correto`, `letra_alternativa`, `cod_alternativa`, `cod_pergunta`) VALUES
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 1, 1),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 2, 1),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 3, 2),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 4, 2),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 5, 3),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 6, 3),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 7, 4),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 8, 4),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 9, 5),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 10, 5),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 11, 6),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 12, 6),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 13, 7),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 14, 7),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 15, 8),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 16, 8),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 17, 9),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 18, 9),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 19, 10),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 20, 10),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 21, 11),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 22, 11),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 23, 12),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 24, 12),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 25, 13),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 26, 13),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 27, 14),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 28, 14),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 29, 15),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 30, 15),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 31, 16),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 32, 16),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 33, 17),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 34, 17),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 35, 18),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 36, 18),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 37, 19),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 38, 19),
('Lorem Ipsum is simply dummy text.', 0x31, 'a', 39, 20),
('Lorem Ipsum is simply dummy text.', 0x30, 'b', 40, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_medico`
--

DROP TABLE IF EXISTS `cad_medico`;
CREATE TABLE IF NOT EXISTS `cad_medico` (
  `universidade` varchar(80) DEFAULT NULL,
  `crm` int(5) NOT NULL,
  `especializacao` varchar(50) DEFAULT NULL,
  `cod_usuario` int(1) DEFAULT NULL,
  PRIMARY KEY (`crm`),
  KEY `cod_usuario` (`cod_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cad_medico`
--

INSERT INTO `cad_medico` (`universidade`, `crm`, `especializacao`, `cod_usuario`) VALUES
('Universidade Federal de Santa Catarina-UFSC', 14544, 'Neuro-oftmalmologia', 21),
('Universidade Federal do Paraná-UFPR', 14545, 'Oncologia ocular', 9),
('Universidade Federal de Santa Catarina-UFSC', 14546, 'Pálpebras e vias lacrimais', 13),
('Universidade Federal de Santa Catarina-UFSC', 14547, 'Glaucoma', 7),
('Universidade Federal de Santa Catarina-UFSC', 14548, 'Oftalmologia pediátrica', 6),
('Universidade Federal de Santa Catarina-UFSC', 14549, 'Oftalmologia cirurgica', 2),
('Universidade Federal de Santa Catarina-UFSC', 14550, 'Catarata', 19),
('Universidade Federal do Paraná-UFPR', 14551, 'Oftalmologia genética', 5),
('Universidade Federal do Paraná-UFPR', 14552, 'Astigmatismo', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_paciente`
--

DROP TABLE IF EXISTS `cad_paciente`;
CREATE TABLE IF NOT EXISTS `cad_paciente` (
  `cpf` varchar(20) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cod_usuario` int(1) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cod_usuario` (`cod_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cad_paciente`
--

INSERT INTO `cad_paciente` (`cpf`, `data_nasc`, `telefone`, `cod_usuario`) VALUES
('196.456.187-46', '1998-02-17', '47 34370184', 22),
('296.731.864-58', '1996-06-02', '47 99624401', 10),
('197.358.760-34', '2001-04-09', '47 34352184', 14),
('284.530.251-98', '1965-12-16', '47 99171132', 15),
('173.584.972-66', '1978-03-25', '47 98651204', 16),
('227.933.482-98', '1989-11-30', '47 34059816', 17),
('258.458.749-65', '1993-07-28', '47 84992561', 18),
('173.249.756-95', '1983-12-19', '47 34360914', 1),
('133.748.956-64', '1969-11-10', '47 99620105', 3),
('105.549.322-17', '1998-07-21', '47 94652535', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE IF NOT EXISTS `cidades` (
  `nome_cidade` varchar(80) DEFAULT NULL,
  `cod_cidade` int(1) NOT NULL,
  `cod_estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`cod_cidade`),
  KEY `cod_estado` (`cod_estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`nome_cidade`, `cod_cidade`, `cod_estado`) VALUES
('Joinville', 1, 1),
('Niterói', 2, 7),
('Belo Horizonte', 3, 8),
('Santos', 4, 10),
('Curitiba', 5, 5),
('Porto Alegre', 6, 2),
('Vitória', 7, 9),
('Salvador', 8, 4),
('Rio Branco', 9, 5),
('Campo Grande', 10, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversas`
--

DROP TABLE IF EXISTS `conversas`;
CREATE TABLE IF NOT EXISTS `conversas` (
  `cod_usuario` int(1) DEFAULT NULL,
  `cod_img` int(1) DEFAULT NULL,
  `dt_hora` datetime DEFAULT NULL,
  `texto` varchar(80) DEFAULT NULL,
  KEY `cod_usuario` (`cod_usuario`),
  KEY `cod_img` (`cod_img`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conversas`
--

INSERT INTO `conversas` (`cod_usuario`, `cod_img`, `dt_hora`, `texto`) VALUES
(4, 0, '2019-02-12 14:20:00', 'Lorem Ipsum is simply dummy text.'),
(16, 0, '2019-02-12 14:21:00', 'Lorem Ipsum is simply dummy text.'),
(4, 0, '2019-02-12 14:24:00', 'Lorem Ipsum is simply dummy text.'),
(16, 0, '2019-02-12 14:27:00', 'Lorem Ipsum is simply dummy text.'),
(4, 1, '2019-02-12 14:30:00', 'Lorem Ipsum is simply dummy text.'),
(16, 0, '2019-02-12 14:32:00', 'Lorem Ipsum is simply dummy text.'),
(5, 0, '2017-08-23 08:10:00', 'Lorem Ipsum is simply dummy text.'),
(17, 0, '2017-08-23 08:12:00', 'Lorem Ipsum is simply dummy text.'),
(5, 0, '2017-08-23 08:13:00', 'Lorem Ipsum is simply dummy text.'),
(17, 0, '2017-08-23 08:15:00', 'Lorem Ipsum is simply dummy text.'),
(5, 2, '2017-08-23 08:16:00', 'Lorem Ipsum is simply dummy text.'),
(17, 0, '2017-08-23 08:20:00', 'Lorem Ipsum is simply dummy text.'),
(6, 0, '2010-05-14 18:21:00', 'Lorem Ipsum is simply dummy text.'),
(18, 0, '2010-05-14 18:22:00', 'Lorem Ipsum is simply dummy text.'),
(6, 0, '2010-05-14 18:27:00', 'Lorem Ipsum is simply dummy text.'),
(18, 0, '2010-05-14 18:30:00', 'Lorem Ipsum is simply dummy text.'),
(6, 3, '2010-05-14 18:32:00', 'Lorem Ipsum is simply dummy text.'),
(18, 0, '2010-05-14 18:35:00', 'Lorem Ipsum is simply dummy text.'),
(6, 4, '2010-05-14 18:38:00', 'Lorem Ipsum is simply dummy text.'),
(18, 0, '2010-05-14 18:40:00', 'Lorem Ipsum is simply dummy text.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE IF NOT EXISTS `estados` (
  `nome_estado` varchar(80) DEFAULT NULL,
  `cod_estado` int(1) NOT NULL,
  PRIMARY KEY (`cod_estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`nome_estado`, `cod_estado`) VALUES
('Santa Catarina', 1),
('Rio Grande do Sul', 2),
('Paraná', 3),
('Bahia', 4),
('Acre', 5),
('Mato Grosso do Sul', 6),
('Rio de Janeiro', 7),
('Minas Gerais', 8),
('Espírito Santo', 9),
('São Paulo', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

DROP TABLE IF EXISTS `imagens`;
CREATE TABLE IF NOT EXISTS `imagens` (
  `caminho_img` varchar(80) DEFAULT NULL,
  `cod_img` int(1) NOT NULL,
  `cod_usuario` int(1) DEFAULT NULL,
  PRIMARY KEY (`cod_img`),
  KEY `cod_usuario` (`cod_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`caminho_img`, `cod_img`, `cod_usuario`) VALUES
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\1.png', 1, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\2.png', 2, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\3.png', 3, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\4.png', 4, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\5.png', 5, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\6.png', 6, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\7.png', 7, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\8.png', 8, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\9.png', 9, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\10.png', 10, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\11.png', 11, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\12.png', 12, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\13.png', 13, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\14.png', 14, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\15.png', 15, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\16.png', 16, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\17.png', 17, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\18.png', 18, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\19.png', 19, NULL),
('C:\\Julia\\Banco de Dados\\projeto_2019\\imagens\\20.png', 20, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
CREATE TABLE IF NOT EXISTS `perguntas` (
  `texto_pergunta` varchar(80) DEFAULT NULL,
  `cod_pergunta` int(1) NOT NULL,
  `cod_teste` int(1) DEFAULT NULL,
  PRIMARY KEY (`cod_pergunta`),
  KEY `cod_teste` (`cod_teste`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perguntas`
--

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `responde`
--

DROP TABLE IF EXISTS `responde`;
CREATE TABLE IF NOT EXISTS `responde` (
  `cpf` varchar(20) DEFAULT NULL,
  `cod_teste` int(1) DEFAULT NULL,
  `resp_json` json DEFAULT NULL,
  `cod_resposta` int(1) NOT NULL,
  PRIMARY KEY (`cod_resposta`),
  KEY `cpf` (`cpf`),
  KEY `cod_teste` (`cod_teste`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `responde`
--

INSERT INTO `responde` (`cpf`, `cod_teste`, `resp_json`, `cod_resposta`) VALUES
('196.456.187-46', 1, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 1),
('196.456.187-46', 2, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 2),
('196.456.187-46', 3, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 3),
('196.456.187-46', 4, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 4),
('196.456.187-46', 5, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 5),
('296.731.864-58', 1, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 6),
('296.731.864-58', 2, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 7),
('197.358.760-34', 1, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 8),
('197.358.760-34', 2, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 9),
('197.358.760-34', 3, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 10),
('284.530.251-98', 1, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 11),
('284.530.251-98', 2, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 12),
('284.530.251-98', 3, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 13),
('284.530.251-98', 4, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 14),
('284.530.251-98', 5, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 15),
('173.584.972-66', 1, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 16),
('173.584.972-66', 2, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 17),
('173.584.972-66', 3, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 18),
('173.584.972-66', 4, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 19),
('173.584.972-66', 5, '{\"pergunta\": 1, \"alternativa\": \"b\"}', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

DROP TABLE IF EXISTS `teste`;
CREATE TABLE IF NOT EXISTS `teste` (
  `titulo` varchar(80) DEFAULT NULL,
  `ativo` binary(1) DEFAULT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `cod_teste` int(1) NOT NULL,
  `cod_usuario` int(1) DEFAULT NULL,
  PRIMARY KEY (`cod_teste`),
  KEY `cod_usuario` (`cod_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `teste`
--

INSERT INTO `teste` (`titulo`, `ativo`, `descricao`, `data`, `cod_teste`, `cod_usuario`) VALUES
('Teste 1', 0x01, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-03-02', 1, NULL),
('Teste 2', 0x00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2015-06-02', 2, NULL),
('Teste 3', 0x01, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2010-03-05', 3, NULL),
('Teste 4', 0x00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2017-04-02', 4, NULL),
('Teste 5', 0x01, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2016-04-10', 5, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `desc_tipo` varchar(80) DEFAULT NULL,
  `cod_tipo_usuario` int(1) NOT NULL,
  PRIMARY KEY (`cod_tipo_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`desc_tipo`, `cod_tipo_usuario`) VALUES
('administrador', 1),
('paciente', 2),
('medico', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(8) DEFAULT NULL,
  `cod_usuario` int(1) NOT NULL,
  `cod_estado` int(1) DEFAULT NULL,
  `cod_tipo_usuario` int(1) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`),
  KEY `cod_estado` (`cod_estado`),
  KEY `cod_tipo_usuario` (`cod_tipo_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`nome`, `email`, `senha`, `cod_usuario`, `cod_estado`, `cod_tipo_usuario`) VALUES
('Laíza Casagrande', 'csgd.laiza@gmail.com', 'lai123', 1, 1, 1),
('Eduarda Maia', 'dudakaroline1@gmail.com', 'duda123', 2, 1, 1),
('Josiane da Silva', 'josianesilva@gmail.com', 'josi123', 3, 1, 2),
('Pedro Paulo', 'ppaulo12@hotmail.com', 'pedro123', 4, 5, 2),
('Lucas Magalhães', 'lucasmaga15@gmail.com', 'lucas123', 5, 1, 2),
('Ana Monteiro', 'anamonteiroo@gmail.com', 'ana123', 6, 2, 2),
('Joana Machado', 'joanaamachadoo@hotmail.com', 'joana123', 7, 5, 2),
('Michele Carvalho', 'michele.carvalho@hotmail.com', 'mich123', 8, 1, 2),
('Gilberto Fabiano', 'gilberto.fabiano@hotmail.com', 'beto123', 9, 5, 2),
('Giovanna Rafaela', 'giovanna.rafaela@outlook.com', 'gika123', 10, 2, 2),
('Alexandre Cardoso', 'alex.cardoso@gmail.com', 'alex123', 11, 5, 2),
('Leonardo Pires', 'leo.pires@gmail.com', 'leo123', 12, 1, 2),
('Wesley Antunes', 'wesley.antunes@hotmail.com', 'ley123', 13, 5, 3),
('Catarina Cardoso', 'catarina.cardoso@gmail.com', 'cari123', 14, 2, 3),
('Theodora Martinelli', 'theomartinelli@hotmail.com', 'theo123', 15, 1, 3),
('Anitta Souza', 'anitta.souza@gmail.com', 'nita123', 16, 5, 3),
('Danilo Martins', 'danilo.martins@hotmail.com', 'dani123', 17, 1, 3),
('Antonio da Lua', 'toninhodalua@outlook.com', 'tony123', 18, 1, 3),
('Cristina Soares', 'cris.soares@outlook.com', 'cris123', 19, 2, 3),
('Amanda Nunk', 'amanda.nunk@outlook.com', 'nanda123', 20, 5, 3),
('Teresa Hosbanski', 'teresa.hosbanski@gmail.com', 'tete123', 21, 2, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
