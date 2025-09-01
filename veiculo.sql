-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2025 às 14:06
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
-- Banco de dados: `estaciona2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `codmodelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codmodelo`) VALUES
('AAA1111', 'Red', '11111111111', 1),
('BBB2222', 'Blue', '22222222222', 2),
('CCC3333', 'Black', '33333333333', 3),
('DDD4444', 'White', '44444444444', 4),
('EEE5555', 'Dark-Green', '55555555555', 5),
('FFF6666', 'Yellow', '66666666666', 6),
('GGG7777', 'Gray', '77777777777', 7),
('HHH8888', 'Silver', '88888888888', 8),
('III9999', 'Blue', '99999999999', 9),
('JJJ0000', 'Red', '00000000000', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente2` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
