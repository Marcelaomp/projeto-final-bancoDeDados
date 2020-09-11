-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 27-Jul-2020 às 21:58
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
-- Banco de dados: `e-commerce`
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codigo_categoria`, `nome`, `descricao`) VALUES
(1, 'Biscoito', 'Biscoitos doces e salgados de vários sabores, com ou sem recheio.'),
(2, 'Bolo', 'Massas de bolo de vários sabores.'),
(3, 'Macarrão', 'Tipos variados de massa de macarrão. '),
(4, 'Pão', 'Pães de forma, de hambúrguer, de cachorro-quente entre outros.'),
(5, 'Pizza', 'Pizzas congeladas de vários sabores.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `codigo_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sobrenome` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `data_nascimento` date NOT NULL,
  `id_endereco` int(11) NOT NULL,
  `id_telefone` int(11) NOT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_endereco` (`id_endereco`),
  KEY `id_telefone` (`id_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codigo_cliente`, `id_usuario`, `nome`, `sobrenome`, `email`, `cpf`, `data_nascimento`, `id_endereco`, `id_telefone`) VALUES
(1, 1, 'José', 'Lima Dias', 'JoseLimaDias@armyspy.com ', '570.250.314-70', '1999-11-06', 2, 2),
(2, 2, 'Miguel', 'Araujo Rocha', 'MiguelAraujoRocha@teleworm.us', '720.625.861-16', '1958-12-23', 3, 3),
(3, 3, 'Luiza', 'Ferreira Cunha', 'LuizaFerreiraCunha@teleworm.us', '249.193.459-09', '1956-09-19', 4, 4),
(4, 4, 'Gustavo', 'Ferreira Alves', 'GustavoFerreiraAlves@jourrapide.com', '708.499.226-07', '1980-05-17', 5, 5),
(5, 5, 'Tomás', 'Souza Fernandes', 'TomasSouzaFernandes@armyspy.com', '897.273.880-86', '1991-01-19', 6, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cnpj` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(30) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `ddd` varchar(4) NOT NULL,
  `telefone` varchar(10) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nome`, `cnpj`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `ddd`, `telefone`) VALUES
(1, 'Bolacha, não, Biscoito (BnB)', '57.874.429/0001-25', 'Avenida Lúcio Meira', '151', 'loja', 'Várzea', 'Teresópolis', 'Rio de Janeiro', '25953-000', '(21)', '3698-8792');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(2, 'Estrada José Gomes da Costa Júnior', '1005', 'casa', 'Golfe', 'Teresópolis', 'Rio de Janeiro', '25974-000'),
(3, 'Rua Luiz Noguet Júnior', '55', 'casa', 'São Pedro', 'Teresópolis', 'Rio de Janeiro', '25956-210'),
(4, 'Rua Constantino Fischer', '77', 'apto 501', 'Barra do Imbuí', 'Teresópolis', 'Rio de Janeiro', '25965-550'),
(5, 'Rua Carmela Dutra', '63', 'apto 110', 'Agriões', 'Teresópolis', 'Rio de Janeiro', '25963-140'),
(6, 'Avenida Alberto Torres', '489', 'apto 403', 'Alto', 'Teresópolis', 'Rio de Janeiro', '25964-005');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id_estoque`, `codigo_produto`, `quantidade_estoque`) VALUES
(1, 1, 15),
(2, 2, 20),
(3, 3, 10),
(4, 4, 13),
(5, 5, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `codigo_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`codigo_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codigo_funcionario`, `nome`, `cpf`) VALUES
(1, 'Giovanna Fernandes Azevedo', '656.596.653-22'),
(2, 'Rafaela Ribeiro Rodrigues', '710.091.497-33'),
(3, 'Kaua Oliveira Carvalho', '846.040.190-10'),
(4, 'Matheus Alves Almeida', '983.447.968-90'),
(5, 'Fernanda Melo Silva', '789.692.778-03');

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
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`codigo_nota`),
  KEY `id_pedido_item` (`codigo_pedido`),
  KEY `id_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nota_fiscal`
--

INSERT INTO `nota_fiscal` (`codigo_nota`, `data_emissao`, `codigo_pedido`, `valor`, `id_empresa`) VALUES
(1, '2020-07-25', 1, '73.80', 1),
(2, '2020-07-25', 2, '10.50', 1),
(3, '2020-07-26', 3, '9.98', 1),
(4, '2020-07-27', 4, '73.00', 1),
(5, '2020-07-27', 5, '17.00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `codigo_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `data_pedido` date NOT NULL,
  `codigo_cliente` int(11) NOT NULL,
  PRIMARY KEY (`codigo_pedido`),
  KEY `codigo_cliente` (`codigo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`codigo_pedido`, `data_pedido`, `codigo_cliente`) VALUES
(1, '2020-07-25', 1),
(2, '2020-07-25', 2),
(3, '2020-07-26', 3),
(4, '2020-07-27', 4),
(5, '2020-07-27', 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido_item`
--

INSERT INTO `pedido_item` (`id_pedido_item`, `codigo_pedido`, `codigo_produto`, `quantidade_produtos`) VALUES
(1, 1, 2, 2),
(2, 1, 3, 2),
(3, 1, 4, 3),
(4, 2, 1, 3),
(5, 3, 5, 2),
(6, 4, 4, 5),
(7, 5, 1, 2),
(8, 5, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `codigo_produto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_funcionario` int(11) NOT NULL,
  `codigo_categoria` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `data_fabricacao` date NOT NULL,
  `valor_unitario` double(11,2) NOT NULL,
  `descricao` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`codigo_produto`),
  KEY `codigo_categoria` (`codigo_categoria`),
  KEY `codigo_funcionario` (`codigo_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codigo_produto`, `codigo_funcionario`, `codigo_categoria`, `nome`, `data_fabricacao`, `valor_unitario`, `descricao`) VALUES
(1, 1, 1, 'Biscoito com recheio de goiabada - Florzinha (100g)', '2020-07-25', 3.50, 'Biscoito com recheio de goiabada em formato de flor.'),
(2, 1, 2, 'Massa de bolo de chocolate', '2020-05-20', 5.00, 'Mistura para preparo de bolo de chocolate.'),
(3, 3, 3, 'Macarrão parafuso (500g)', '2020-07-18', 10.00, 'Massa caseira de macarrão parafuso.'),
(4, 3, 5, 'Pizza marguerita (460g)', '2020-06-05', 14.60, 'Massa pronta de pizza marguerita. Preparo rápido.'),
(5, 5, 4, 'Pão de forma (500g)', '2020-07-01', 4.99, 'Pão de forma caseiro.');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`id_telefone`, `ddd`, `telefone`) VALUES
(2, '(21)', '98534-4324'),
(3, '(21)', '99646-3462'),
(4, '(21)', '97523-3462'),
(5, '(21)', '2738-5356'),
(6, '(21)', '99443-4246');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `senha`) VALUES
(1, 'Troms1999', 'h7f8gh4387gfq8fg83g'),
(2, 'Proner', 'fh389rfh9q3f8hfh04fh8q04h'),
(3, 'Pgdoed', 'ane37eq387db32bd387'),
(4, 'Theatanthe', 'hd23hd23dh23dh2389h9'),
(5, 'Hornou', 'sh458h4s5e95s4t584sehf');

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
,`Valor unitário` double(11,2)
,`Categoria` varchar(40)
,`Descrição` varchar(1000)
,`Nome da empresa` varchar(50)
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
`Código do cliente` int(11)
,`Nome` varchar(20)
,`Sobrenome` varchar(40)
,`Produto` varchar(60)
,`Valor unitário` double(11,2)
,`Quantidade de produtos` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `v_quantidade_estoque`
-- (Veja abaixo para a view atual)
--
DROP VIEW IF EXISTS `v_quantidade_estoque`;
CREATE TABLE IF NOT EXISTS `v_quantidade_estoque` (
`nome` varchar(60)
,`quantidade_estoque` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `v_nota_fiscal`
--
DROP TABLE IF EXISTS `v_nota_fiscal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_nota_fiscal`  AS  select `nota_fiscal`.`codigo_nota` AS `Nota Fiscal de Venda a Consumidor`,`nota_fiscal`.`data_emissao` AS `Data de emissão`,`nota_fiscal`.`valor` AS `Valor total`,`cliente`.`nome` AS `Nome do cliente`,`cliente`.`sobrenome` AS `Sobrenome`,`endereco`.`endereco` AS `Endereço`,`endereco`.`numero` AS `nº`,`endereco`.`complemento` AS `Complemento`,`endereco`.`bairro` AS `Bairro`,`endereco`.`cidade` AS `Cidade`,`endereco`.`estado` AS `Estado`,`endereco`.`cep` AS `CEP`,`telefone`.`ddd` AS `DDD`,`telefone`.`telefone` AS `Telefone`,`pedido_item`.`quantidade_produtos` AS `Quantidade`,`produto`.`nome` AS `Produto`,`produto`.`valor_unitario` AS `Valor unitário`,`categoria`.`nome` AS `Categoria`,`produto`.`descricao` AS `Descrição`,`empresa`.`nome` AS `Nome da empresa`,`empresa`.`endereco` AS `.Endereço`,`empresa`.`numero` AS `.nº`,`empresa`.`complemento` AS `.Complemento`,`empresa`.`bairro` AS `.Bairro`,`empresa`.`cidade` AS `.Cidade`,`empresa`.`estado` AS `.Estado`,`empresa`.`cep` AS `.CEP`,`empresa`.`ddd` AS `.DDD`,`empresa`.`telefone` AS `.Telefone` from ((((((((`nota_fiscal` join `pedido` on((`nota_fiscal`.`codigo_pedido` = `pedido`.`codigo_pedido`))) join `cliente` on((`pedido`.`codigo_cliente` = `cliente`.`codigo_cliente`))) join `endereco` on((`cliente`.`id_endereco` = `endereco`.`id_endereco`))) join `telefone` on((`cliente`.`id_telefone` = `telefone`.`id_telefone`))) join `pedido_item` on((`pedido`.`codigo_pedido` = `pedido_item`.`codigo_pedido`))) join `produto` on((`pedido_item`.`codigo_produto` = `produto`.`codigo_produto`))) join `categoria` on((`produto`.`codigo_categoria` = `categoria`.`codigo_categoria`))) join `empresa` on((`nota_fiscal`.`id_empresa` = `empresa`.`id_empresa`))) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `v_pedido_quantidade`
--
DROP TABLE IF EXISTS `v_pedido_quantidade`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pedido_quantidade`  AS  select `pedido`.`codigo_cliente` AS `Código do cliente`,`cliente`.`nome` AS `Nome`,`cliente`.`sobrenome` AS `Sobrenome`,`produto`.`nome` AS `Produto`,`produto`.`valor_unitario` AS `Valor unitário`,`pedido_item`.`quantidade_produtos` AS `Quantidade de produtos` from (((`pedido_item` join `pedido` on((`pedido_item`.`codigo_pedido` = `pedido`.`codigo_pedido`))) join `cliente` on((`pedido`.`codigo_cliente` = `cliente`.`codigo_cliente`))) join `produto` on((`pedido_item`.`codigo_produto` = `produto`.`codigo_produto`))) group by `pedido_item`.`id_pedido_item` order by `pedido_item`.`codigo_pedido` ;

-- --------------------------------------------------------

--
-- Estrutura para vista `v_quantidade_estoque`
--
DROP TABLE IF EXISTS `v_quantidade_estoque`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_quantidade_estoque`  AS  select `produto`.`nome` AS `nome`,`estoque`.`quantidade_estoque` AS `quantidade_estoque` from (`estoque` join `produto` on((`estoque`.`codigo_produto` = `produto`.`codigo_produto`))) ;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_4` FOREIGN KEY (`id_telefone`) REFERENCES `telefone` (`id_telefone`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`codigo_produto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `nota_fiscal`
--
ALTER TABLE `nota_fiscal`
  ADD CONSTRAINT `nota_fiscal_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_fiscal_ibfk_3` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pedido_item`
--
ALTER TABLE `pedido_item`
  ADD CONSTRAINT `pedido_item_ibfk_1` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_item_ibfk_2` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`codigo_produto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`codigo_categoria`) REFERENCES `categoria` (`codigo_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`codigo_funcionario`) REFERENCES `funcionario` (`codigo_funcionario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
