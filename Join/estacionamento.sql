-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/09/2025 às 02:24
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `andar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 55, 'Térreo'),
(2, 42, '1º Andar'),
(3, 38, '2º Andar'),
(4, 48, '3º Andar'),
(5, 32, '4º Andar'),
(6, 22, '5º Andar'),
(7, 28, 'Subsolo 1'),
(8, 26, 'Subsolo 2'),
(9, 18, 'Subsolo 3'),
(10, 65, 'Cobertura');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('01234567890', '1998-05-09 00:00:00', 'Sofia Martins'),
('12345678901', '1988-02-14 00:00:00', 'Lucas Ferreira'),
('23456789012', '1992-10-30 00:00:00', 'Mariana Lima'),
('34567890123', '1975-07-08 00:00:00', 'Felipe Santos'),
('45678901234', '1990-12-19 00:00:00', 'Carla Mendes'),
('56789012345', '1983-03-27 00:00:00', 'Rafael Alves'),
('67890123456', '1995-06-21 00:00:00', 'Patrícia Gomes'),
('78901234567', '1987-11-05 00:00:00', 'Tiago Rocha'),
('89012345678', '1991-01-12 00:00:00', 'Vanessa Costa'),
('90123456789', '1985-09-17 00:00:00', 'Eduardo Lima');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horsaida` time NOT NULL,
  `dtsaida` date NOT NULL,
  `horentrada` time NOT NULL,
  `dtentrada` date NOT NULL,
  `placa` int(11) NOT NULL,
  `codlugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horsaida`, `dtsaida`, `horentrada`, `dtentrada`, `placa`, `codlugar`) VALUES
(1, '09:45:00', '2025-09-01', '07:30:00', '2025-09-01', 1, 1),
(2, '10:30:00', '2025-09-01', '08:15:00', '2025-09-01', 2, 2),
(3, '13:20:00', '2025-09-01', '09:00:00', '2025-09-01', 3, 3),
(4, '15:10:00', '2025-09-01', '11:45:00', '2025-09-01', 4, 4),
(5, '17:05:00', '2025-09-01', '12:30:00', '2025-09-01', 5, 5),
(6, '18:40:00', '2025-09-01', '13:50:00', '2025-09-01', 6, 6),
(7, '19:50:00', '2025-09-01', '15:10:00', '2025-09-01', 7, 7),
(8, '20:30:00', '2025-09-01', '16:00:00', '2025-09-01', 8, 8),
(9, '21:55:00', '2025-09-01', '17:20:00', '2025-09-01', 9, 9),
(10, '23:15:00', '2025-09-01', '18:40:00', '2025-09-01', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Mazda 3'),
(2, 'Mitsubishi Lancer'),
(3, 'Kia Cerato'),
(4, 'Hyundai Elantra'),
(5, 'Toyota Yaris'),
(6, 'Chevrolet Cruze'),
(7, 'Volkswagen Polo'),
(8, 'Nissan Sentra'),
(9, 'Honda Fit'),
(10, 'Ford Fiesta');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` int(11) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `codModelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`) VALUES
(1, 'Azul', '12345678901', 1),
(2, 'Prata', '23456789012', 2),
(3, 'Vermelho', '34567890123', 3),
(4, 'Preto', '45678901234', 4),
(5, 'Cinza', '56789012345', 5),
(6, 'Amarelo', '67890123456', 6),
(7, 'Verde', '78901234567', 7),
(8, 'Branco', '89012345678', 8),
(9, 'Laranja', '90123456789', 9),
(10, 'Roxo', '01234567890', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `placa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
