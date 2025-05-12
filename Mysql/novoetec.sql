-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/05/2025 às 14:06
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Limpeza'),
(2, 'carnes'),
(3, 'embalagens'),
(4, 'eletroeletronicos'),
(5, 'bebidas'),
(6, 'perfumaria'),
(7, 'congelados'),
(8, 'laticínios'),
(9, 'hortifruti'),
(10, 'enlatados');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`) VALUES
(1, 'Sabão em pó', 25.00, 4, 'OMO', 1),
(2, 'mussarela', 50.00, 100, 'seara', 2),
(3, 'Detergente Neutro', 8.90, 50, 'Ypê', 1),
(4, 'Sabão em Pó', 12.50, 30, 'OMO', 1),
(5, 'Picanha Bovina', 89.90, 20, 'Friboi', 2),
(6, 'Peito de Frango', 15.00, 100, 'Seara', 2),
(7, 'Saco Plástico 50L', 4.99, 200, 'Melhoramentos', 3),
(8, 'Caixa de Papelão', 2.50, 150, 'Santa Clara', 3),
(9, 'Fone Bluetooth', 120.00, 30, 'Philips', 4),
(10, 'Carregador USB-C', 25.00, 80, 'Samsung', 4),
(11, 'Refrigerante 2L', 8.50, 120, 'Coca-Cola', 5),
(12, 'Água Mineral 500ml', 2.00, 200, 'Crystal', 5),
(13, 'Perfume Florais', 149.90, 15, 'Natura', 6),
(14, 'Desodorante Roll-On', 14.00, 50, 'Rexona', 6),
(15, 'Pizza Calabresa', 22.90, 40, 'Sadia', 7),
(16, 'Lasanha de Frango', 18.50, 35, 'Perdigão', 7),
(17, 'Queijo Minas', 25.00, 60, 'Itambé', 8),
(18, 'Iogurte Natural', 3.50, 90, 'Nestlé', 8),
(19, 'Maçã Fuji (kg)', 7.90, 150, 'Fazenda São Paulo', 9),
(20, 'Alface Crespa', 2.50, 100, 'Horta Feliz', 9),
(21, 'Atum em Óleo', 10.00, 80, 'Gomes da Costa', 10),
(22, 'Milho em Conserva', 6.50, 120, 'Quero', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
