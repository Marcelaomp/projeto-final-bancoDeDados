-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 27-Jul-2020 às 23:36
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marketplace`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `codigo_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descricao` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`codigo_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codigo_categoria`, `nome`, `descricao`) VALUES
(1, 'Games', 'Categoria inclui: acessórios para consoles, consoles, fliperamas e arcade, peças para consoles, video games e outros.'),
(2, 'Livros, Revistas e Comics', 'Categoria inclui: catálogos, HQs, livros, mangá, revistas e outros.\r\n'),
(3, 'Música, Filmes e Seriados', 'Categoria inclui: filmes, música, seriados e outros.'),
(4, 'Celulares e Telefones', 'Categoria inclui: acessórios para celulares, celulares e smartphones, óculos de realidade virtual, peças para celular, smartwatches e acessórios, tarifadores e cabines, telefonia fixa e sem fio, VoIP, walkie talkies e outros.\r\n'),
(5, 'Câmeras e Acessórios', 'Categoria inclui: acessórios para câmeras, álbuns e porta-retratos, cabos, câmeras, drones e acessórios, equipamento de revelação, filmadoras, instrumentos ópticos, lentes e filtros, peças para câmeras e outros. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `codigo_usuario` (`codigo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `codigo_usuario`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(30) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `cep` varchar(9) NOT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(2, 'Estrada José Gomes da Costa Júnior', '1005', 'casa', 'Golfe', 'Teresópolis', 'Rio de Janeiro', '25974-000'),
(3, 'Rua Luiz Noguet Júnior', '55', 'casa', 'São Pedro', 'Teresópolis', 'Rio de Janeiro', '25956-210'),
(4, 'Rua Constantino Fischer', '77', 'apto 501', 'Barra do Imbuí', 'Teresópolis', 'Rio de Janeiro', '25965-550'),
(5, 'Rua Carmela Dutra', '63', 'apto 110', 'Agriões', 'Teresópolis', 'Rio de Janeiro', '25963-140'),
(6, 'Avenida Alberto Torres', '489', 'apto 403', 'Alto', 'Teresópolis', 'Rio de Janeiro', '25964-005'),
(7, 'Rua Frederico Moura', '598', 'apto 303', 'Cidade Nova', 'Franca', 'São Paulo', '14401-150'),
(8, 'Avenida Rio Branco', '800', 'apto 22', 'Centro', 'Rio de Janeiro', 'Rio de Janeiro', '20040-002'),
(9, 'Avenida Almirante Maximiano Fonseca', '53', 'casa', 'Zona Portuária', 'Rio Grande', 'Rio Grande do Sul', '96204-040'),
(10, 'Avenida Tocantins', '08', 'casa', 'Vila Jardim Rio Claro', 'Jataí', 'Goiás', '75802-095'),
(11, 'Rua Cândido Portinari', '888', 'apto 100', 'Real Parque', 'São José', 'Santa Catarina', '88113-350');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

DROP TABLE IF EXISTS `estoque`;
CREATE TABLE IF NOT EXISTS `estoque` (
  `id_estoque` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_produto` int(11) NOT NULL,
  `quantidade_estoque` int(11) NOT NULL,
  PRIMARY KEY (`id_estoque`),
  KEY `codigo_produto` (`codigo_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id_estoque`, `codigo_produto`, `quantidade_estoque`) VALUES
(1, 1, 2),
(2, 2, 10),
(3, 3, 5),
(4, 4, 7),
(5, 5, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_fiscal`
--

DROP TABLE IF EXISTS `nota_fiscal`;
CREATE TABLE IF NOT EXISTS `nota_fiscal` (
  `codigo_nota` int(11) NOT NULL AUTO_INCREMENT,
  `data_emissao` date NOT NULL,
  `codigo_pedido` int(11) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  PRIMARY KEY (`codigo_nota`),
  KEY `codigo_pedido` (`codigo_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nota_fiscal`
--

INSERT INTO `nota_fiscal` (`codigo_nota`, `data_emissao`, `codigo_pedido`, `valor`) VALUES
(1, '2020-07-26', 1, '369.49'),
(2, '2020-07-25', 2, '78.70'),
(3, '2020-07-25', 3, '18.90'),
(4, '2020-07-23', 4, '419.00'),
(5, '2020-07-23', 5, '399.90');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `codigo_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `data_pedido` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  PRIMARY KEY (`codigo_pedido`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_vendedor` (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`codigo_pedido`, `data_pedido`, `id_cliente`, `id_vendedor`) VALUES
(1, '2020-07-26', 1, 3),
(2, '2020-07-25', 2, 5),
(3, '2020-07-25', 3, 5),
(4, '2020-07-23', 4, 1),
(5, '2020-07-23', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_item`
--

DROP TABLE IF EXISTS `pedido_item`;
CREATE TABLE IF NOT EXISTS `pedido_item` (
  `id_pedido_item` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_pedido` int(11) NOT NULL,
  `codigo_produto` int(11) NOT NULL,
  `quantidade_produtos` int(11) NOT NULL,
  PRIMARY KEY (`id_pedido_item`),
  KEY `codigo_pedido` (`codigo_pedido`),
  KEY `codigo_produto` (`codigo_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido_item`
--

INSERT INTO `pedido_item` (`id_pedido_item`, `codigo_pedido`, `codigo_produto`, `quantidade_produtos`) VALUES
(1, 1, 3, 1),
(2, 2, 4, 2),
(3, 2, 5, 1),
(4, 3, 5, 1),
(5, 4, 1, 1),
(6, 4, 2, 1),
(7, 5, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `codigo_produto` int(11) NOT NULL AUTO_INCREMENT,
  `id_vendedor` int(11) NOT NULL,
  `codigo_categoria` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `data_fabricacao` date NOT NULL,
  `valor_unitario` double(6,2) NOT NULL,
  `descricao` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`codigo_produto`),
  KEY `codigo_categoria` (`codigo_categoria`),
  KEY `id_vendedor` (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codigo_produto`, `id_vendedor`, `codigo_categoria`, `nome`, `data_fabricacao`, `valor_unitario`, `descricao`) VALUES
(1, 1, 1, 'Fire Emblem: Three Houses Nintendo Switch', '2019-07-26', 399.90, 'Lute pelo seu destino em Fire Emblem: Three Houses para Nintendo Switch!A popular franquia de RPG Fire Emblem ganha uma nova história e novos personagens em Fire Emblem: Three Houses!O jogo se passa no continente de Fódlan, onde a igreja de Seiros reina com uma mão de ferro sobre os habitantes da região. Marca: Nintendo.'),
(2, 1, 2, 'One Piece Vol. 95', '2020-07-09', 19.90, 'A Pior das Alianças é formada!! Enquanto uma verdadeira monstra se alia a Kaido, Luffy e seu Bando seguem ajudando nos preparativos para a revolta e tudo está pronto para a invasão à Onigashima! Mas enquanto tudo isso ocorre no isolado País de Wano, a situação do mundo começa a mudar drasticamente...! Editora: Panini.'),
(3, 3, 5, 'Câmera Instantânea Instax Mini 9, Fujifilm, Branco Gelo', '2017-09-14', 369.49, 'Uma câmera instantânea divertida e fácil de manusear - Compartilhe emoções, carregue na bolsa ou mochila e mostre a todos que a vida é cheia de momentos felizes - Ideal para festas, eventos de família, casamentos, eventos escolares, férias e scrapbook. Marca: Fujifilm.'),
(4, 5, 3, 'Dois Irmãos Uma Jornada Fantástica [Dvd]', '2020-07-01', 29.90, 'Em um local onde as coisas fantásticas parecem ficar cada vez mais distantes de tudo, dois irmãos elfos adolescentes embarcam em uma extraordinária jornada para tentar redescobrir a magia do mundo ao seu redor. 2020 Disney/Pixar'),
(5, 5, 3, 'Coldplay - Kaleidoscope [CD]', '2017-08-04', 18.90, 'Coldplay é uma das maiores bandas de rock do mundo graças ao seu estilo inovador e a sua mistura de ritmos que formam músicas agradáveis para todos os estilos. As diversas músicas e ritmos já renderam um total de três EP´s, sete álbuns e diversos prêmios do mundo da música. Partindo para o quarto EP, Kaleidoscope é considerado irmão do álbum “A Head Full Of Dreams” lançado em 2016 e com tremendo sucesso até hoje. Gravadora: Rimo.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

DROP TABLE IF EXISTS `telefone`;
CREATE TABLE IF NOT EXISTS `telefone` (
  `id_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `ddd` varchar(4) NOT NULL,
  `telefone` varchar(10) NOT NULL,
  PRIMARY KEY (`id_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`id_telefone`, `ddd`, `telefone`) VALUES
(2, '(21)', '98534-4324'),
(3, '(21)', '99646-3462'),
(4, '(21)', '97523-3462'),
(5, '(21)', '2738-5356'),
(6, '(21)', '99443-4246'),
(7, '(16)', '5602-3055'),
(8, '(21)', '2966-5377 '),
(9, '(53)', '5371-7522'),
(10, '(64)', '98410-3232'),
(11, '(48)', '95788-7489');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nome` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sobrenome` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `data_nascimento` date NOT NULL,
  `id_endereco` int(11) NOT NULL,
  `id_telefone` int(11) NOT NULL,
  PRIMARY KEY (`codigo_usuario`),
  KEY `id_endereco` (`id_endereco`),
  KEY `id_telefone` (`id_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codigo_usuario`, `nome_usuario`, `senha`, `nome`, `sobrenome`, `email`, `cpf`, `data_nascimento`, `id_endereco`, `id_telefone`) VALUES
(1, 'Troms1999', 'h7f8gh4387gfq8fg83g', 'José', 'Lima Dias', 'JoseLimaDias@armyspy.com ', '570.250.314-70', '1999-11-06', 2, 2),
(2, 'Proner', 'fh389rfh9q3f8hfh04fh8q04h', 'Miguel', 'Araujo Rocha', 'MiguelAraujoRocha@teleworm.us', '720.625.861-16', '1958-12-23', 3, 3),
(3, 'Pgdoed', 'ane37eq387db32bd387', 'Luiza', 'Ferreira Cunha', 'LuizaFerreiraCunha@teleworm.us', '249.193.459-09', '1956-09-19', 4, 4),
(4, 'Theatanthe', 'hd23hd23dh23dh2389h9', 'Gustavo', 'Ferreira Alves', 'GustavoFerreiraAlves@jourrapide.com', '708.499.226-07', '1980-05-17', 5, 5),
(5, 'Hornou', 'sh458h4s5e95s4t584sehf', 'Tomás', 'Souza Fernandes', 'TomasSouzaFernandes@armyspy.com', '897.273.880-86', '1991-01-19', 6, 6),
(6, 'Efolotervis', 'fj5893fh98hH8h9hhj', 'Brenda', 'Sousa Melo', 'JuliaAraujoBarbosa@dayrep.com ', '398.272.486-42', '1985-10-22', 7, 7),
(7, 'Donius', '53875b825Gb8HFR38BF8', 'Emily', 'Ribeiro Ferreira', 'EmilyRibeiroFerreira@armyspy.com ', '379.050.813-62', '1990-06-03', 8, 8),
(8, 'Thereque', 'DJ382hh389DH9hd9hd93HD', 'Ágatha', 'Lima Cunha', 'AgathaLimaCunha@dayrep.com', '562.300.765-19', '1959-02-24', 9, 9),
(9, 'Inteepty', 'ND3n928ND3928329ddh9H', 'Vitoria', 'Castro Lima', 'VitoriaCastroLima@rhyta.com', '302.884.887-25', '1988-05-04', 10, 10),
(10, 'Plund1949', 'JD3892dj9832HD93', 'Douglas', 'Souza Dias', 'DouglasSouzaDias@jourrapide.com', '817.763.078-44', '1960-09-23', 11, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
CREATE TABLE IF NOT EXISTS `vendedor` (
  `id_vendedor` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_vendedor`),
  KEY `codigo_usuario` (`codigo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `codigo_usuario`) VALUES
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `v_nota_fiscal`
-- (Veja abaixo para a view atual)
--
DROP VIEW IF EXISTS `v_nota_fiscal`;
CREATE TABLE IF NOT EXISTS `v_nota_fiscal` (
`Nota Fiscal de Venda a Consumidor` int(11)
,`Data de emissão` date
,`Valor total` decimal(11,2)
,`Nome do cliente` varchar(20)
,`Sobrenome` varchar(40)
,`Endereço` varchar(100)
,`nº` varchar(5)
,`Complemento` varchar(30)
,`Bairro` varchar(30)
,`Cidade` varchar(50)
,`Estado` varchar(30)
,`CEP` varchar(9)
,`DDD` varchar(4)
,`Telefone` varchar(10)
,`Quantidade` int(11)
,`Produto` varchar(60)
,`Valor unitário` double(6,2)
,`Categoria` varchar(40)
,`Descrição` varchar(1000)
,`Nome do vendedor` varchar(20)
,`.Sobrenome` varchar(40)
,`.Endereço` varchar(100)
,`.nº` varchar(5)
,`.Complemento` varchar(30)
,`.Bairro` varchar(30)
,`.Cidade` varchar(50)
,`.Estado` varchar(30)
,`.CEP` varchar(9)
,`.DDD` varchar(4)
,`.Telefone` varchar(10)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `v_pedido_quantidade`
-- (Veja abaixo para a view atual)
--
DROP VIEW IF EXISTS `v_pedido_quantidade`;
CREATE TABLE IF NOT EXISTS `v_pedido_quantidade` (
`Código no usuário` int(11)
,`Nome do usuário` varchar(50)
,`Nome` varchar(20)
,`Sobrenome` varchar(40)
,`Produto` varchar(60)
,`Valor unitário` double(6,2)
,`Quantidade de produtos` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `v_quantidade_estoque`
-- (Veja abaixo para a view atual)
--
DROP VIEW IF EXISTS `v_quantidade_estoque`;
CREATE TABLE IF NOT EXISTS `v_quantidade_estoque` (
`Nome do produto` varchar(60)
,`Quantidade no estoque` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `v_nota_fiscal`
--
DROP TABLE IF EXISTS `v_nota_fiscal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_nota_fiscal`  AS  select `nota_fiscal`.`codigo_nota` AS `Nota Fiscal de Venda a Consumidor`,`nota_fiscal`.`data_emissao` AS `Data de emissão`,`nota_fiscal`.`valor` AS `Valor total`,`a`.`nome` AS `Nome do cliente`,`a`.`sobrenome` AS `Sobrenome`,`aa`.`endereco` AS `Endereço`,`aa`.`numero` AS `nº`,`aa`.`complemento` AS `Complemento`,`aa`.`bairro` AS `Bairro`,`aa`.`cidade` AS `Cidade`,`aa`.`estado` AS `Estado`,`aa`.`cep` AS `CEP`,`aaa`.`ddd` AS `DDD`,`aaa`.`telefone` AS `Telefone`,`pedido_item`.`quantidade_produtos` AS `Quantidade`,`produto`.`nome` AS `Produto`,`produto`.`valor_unitario` AS `Valor unitário`,`categoria`.`nome` AS `Categoria`,`produto`.`descricao` AS `Descrição`,`b`.`nome` AS `Nome do vendedor`,`b`.`sobrenome` AS `.Sobrenome`,`bb`.`endereco` AS `.Endereço`,`bb`.`numero` AS `.nº`,`bb`.`complemento` AS `.Complemento`,`bb`.`bairro` AS `.Bairro`,`bb`.`cidade` AS `.Cidade`,`bb`.`estado` AS `.Estado`,`bb`.`cep` AS `.CEP`,`bbb`.`ddd` AS `.DDD`,`bbb`.`telefone` AS `.Telefone` from ((((((((((((`nota_fiscal` join `pedido` on((`nota_fiscal`.`codigo_pedido` = `pedido`.`codigo_pedido`))) join `cliente` on((`pedido`.`id_cliente` = `cliente`.`id_cliente`))) join `usuario` `a` on((`cliente`.`codigo_usuario` = `a`.`codigo_usuario`))) join `endereco` `aa` on((`a`.`id_endereco` = `aa`.`id_endereco`))) join `telefone` `aaa` on((`a`.`id_telefone` = `aaa`.`id_telefone`))) join `pedido_item` on((`pedido`.`codigo_pedido` = `pedido_item`.`codigo_pedido`))) join `produto` on((`pedido_item`.`codigo_produto` = `produto`.`codigo_produto`))) join `categoria` on((`produto`.`codigo_categoria` = `categoria`.`codigo_categoria`))) join `vendedor` on((`produto`.`id_vendedor` = `vendedor`.`id_vendedor`))) join `usuario` `b` on((`vendedor`.`codigo_usuario` = `b`.`codigo_usuario`))) join `endereco` `bb` on((`b`.`id_endereco` = `bb`.`id_endereco`))) join `telefone` `bbb` on((`b`.`id_telefone` = `bbb`.`id_telefone`))) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `v_pedido_quantidade`
--
DROP TABLE IF EXISTS `v_pedido_quantidade`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pedido_quantidade`  AS  select `usuario`.`codigo_usuario` AS `Código no usuário`,`usuario`.`nome_usuario` AS `Nome do usuário`,`usuario`.`nome` AS `Nome`,`usuario`.`sobrenome` AS `Sobrenome`,`produto`.`nome` AS `Produto`,`produto`.`valor_unitario` AS `Valor unitário`,`pedido_item`.`quantidade_produtos` AS `Quantidade de produtos` from (((((`nota_fiscal` join `pedido` on((`nota_fiscal`.`codigo_pedido` = `pedido`.`codigo_pedido`))) join `cliente` on((`pedido`.`id_cliente` = `cliente`.`id_cliente`))) join `usuario` on((`cliente`.`codigo_usuario` = `usuario`.`codigo_usuario`))) join `pedido_item` on((`pedido`.`codigo_pedido` = `pedido_item`.`codigo_pedido`))) join `produto` on((`pedido_item`.`codigo_produto` = `produto`.`codigo_produto`))) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `v_quantidade_estoque`
--
DROP TABLE IF EXISTS `v_quantidade_estoque`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_quantidade_estoque`  AS  select `produto`.`nome` AS `Nome do produto`,`estoque`.`quantidade_estoque` AS `Quantidade no estoque` from (`estoque` join `produto` on((`estoque`.`codigo_produto` = `produto`.`codigo_produto`))) ;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`codigo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`codigo_produto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `nota_fiscal`
--
ALTER TABLE `nota_fiscal`
  ADD CONSTRAINT `nota_fiscal_ibfk_1` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pedido_item`
--
ALTER TABLE `pedido_item`
  ADD CONSTRAINT `pedido_item_ibfk_1` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`codigo_produto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_item_ibfk_2` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`codigo_categoria`) REFERENCES `categoria` (`codigo_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_telefone`) REFERENCES `telefone` (`id_telefone`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`codigo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
