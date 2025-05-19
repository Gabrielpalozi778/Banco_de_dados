-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/05/2025 às 14:07
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
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

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
(2, 'Laticínios'),
(3, 'Frios'),
(4, 'Enlatados'),
(5, 'Carnes'),
(6, 'Hortifrut'),
(7, 'Perfumaria'),
(8, 'Bebidas'),
(9, 'Eletroeletrônicos'),
(10, 'Congelados'),
(11, 'Embalagens');

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
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(3, 'Detergente Neutro', 8.90, 50, 'Ypê', 1, 'un'),
(4, 'Sabão em Pó', 12.50, 30, 'OMO', 1, 'un'),
(5, 'Picanha Bovina', 89.90, 20, 'Friboi', 2, 'kg'),
(6, 'Peito de Frango', 15.00, 100, 'Seara', 2, 'kg'),
(7, 'Saco Plástico 50L', 4.99, 200, 'Melhoramentos', 3, 'un'),
(8, 'Caixa de Papelão', 2.50, 150, 'Santa Clara', 3, 'un'),
(9, 'Fone Bluetooth', 120.00, 30, 'Philips', 4, 'un'),
(10, 'Carregador USB-C', 25.00, 80, 'Samsung', 4, 'un'),
(11, 'Refrigerante 2L', 8.50, 120, 'Coca-Cola', 5, 'lt'),
(12, 'Água Mineral 500ml', 2.00, 200, 'Crystal', 5, 'lt'),
(13, 'Perfume Florais', 149.90, 15, 'Natura', 6, 'un'),
(14, 'Desodorante Roll-On', 14.00, 50, 'Rexona', 6, 'un'),
(15, 'Pizza Calabresa', 22.90, 40, 'Sadia', 7, 'kg'),
(16, 'Lasanha de Frango', 18.50, 35, 'Perdigão', 7, 'kg'),
(17, 'Queijo Minas', 25.00, 60, 'Itambé', 8, 'un'),
(18, 'Iogurte Natural', 3.50, 90, 'Nestlé', 8, 'un'),
(19, 'Maçã Fuji (kg)', 7.90, 150, 'Fazenda São Paulo', 9, 'kg'),
(20, 'Alface Crespa', 2.50, 100, 'Horta Feliz', 9, 'kg'),
(21, 'Atum em Óleo', 10.00, 80, 'Gomes da Costa', 10, 'un'),
(22, 'Milho em Conserva', 6.50, 120, 'Quero', 10, 'un');

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
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
