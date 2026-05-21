-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3206
-- Tempo de geração: 21/05/2026 às 23:07
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
-- Banco de dados: `sistemaacademico`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `RGM` varchar(20) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Data_de_Nascimento` varchar(10) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Endereco` varchar(150) DEFAULT NULL,
  `Municipio` varchar(50) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`RGM`, `Nome`, `Data_de_Nascimento`, `CPF`, `Email`, `Endereco`, `Municipio`, `UF`, `Celular`) VALUES
('0000000000000000', 'jhgbnmlohgvbnkigfcv', '22/02/4444', '567.890.987-65', '', '', '', 'SP', '(  )     -    '),
('1111111111', 'gcvdcvbghtrdfcvgtrdf', '09/09/0909', '567.898.787-64', '', '', '', 'SP', '(  )     -    '),
('23456754', 'tgbnjuytfgvbhuytfgvb', '09/09/2008', '456.543.456-76', 'fvbhjuytfgbnhuytfg', 'ghnmkuuyghjkiutygh', 'uyghjko7tygh', 'SP', '(11)88567-8998'),
('4567654345', 'mhgfdcvhjuytfgvb', '24/04/7777', '678.987.654-56', 'tghuouyhjiouh', 'jhgbnjiuhygbnmjuyhb', 'gbnmkiujhnm,kliuyhbn', 'SP', '(11)09907-6555'),
('567898765', 'juyghjuytfvbhf', '22/02/2007', '678.998.766-78', 'jhghbnmkuyghb', 'uyghnjkoiuhgjiuygvb', 'uytghjkiuygfvbn', 'SP', '(11)56789-8765'),
('666666666', 'fvbghbnmiok', '22/03/1999', '888.888.888-88', 'gqasdxswerfg', 'dwertjklioopolk', 'uiuyjh,koknbvd', 'SP', '(11)99659-4749'),
('987654345', 'fvbghbnmiok', '22/03/1999', '345.678.908-79', 'gqasdxswerfg', 'dwertjklioopolk', 'uiuyjh,koknbvd', 'SP', '(11)99659-4749'),
('999999999', 'fvbghbnmiok', '22/03/1999', '767.898.764-45', 'gqasdxswerfg', 'dwertjklioopolk', 'uiuyjh,koknbvd', 'SP', '(11)99659-4749');

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `RGM` varchar(20) NOT NULL,
  `Curso` varchar(100) NOT NULL,
  `Campus` varchar(50) NOT NULL,
  `Periodo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`RGM`, `Curso`, `Campus`, `Periodo`) VALUES
('4567654345', 'Análise e Desenvolvimento de Sistemas', 'Tatuapé', 'Matutino'),
('567898765', 'Ciência da Computação', 'Carrão', 'Matutino'),
('666666666', 'Engenharia de Software', 'Carrão', 'Matutino'),
('987654345', 'Ciência da Computação', 'Carrão', 'Matutino');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas_e_faltas`
--

CREATE TABLE `notas_e_faltas` (
  `id_nota` int(11) NOT NULL,
  `RGM` varchar(20) NOT NULL,
  `Disciplina` varchar(100) NOT NULL,
  `Semestre` varchar(10) NOT NULL,
  `Nota` decimal(4,2) DEFAULT NULL,
  `Faltas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notas_e_faltas`
--

INSERT INTO `notas_e_faltas` (`id_nota`, `RGM`, `Disciplina`, `Semestre`, `Nota`, `Faltas`) VALUES
(2, '567898765', 'Programação Orientada a Objetos', '2026-1', 3.00, 23),
(3, '567898765', 'Programação Orientada a Objetos', '2026-1', 34.00, 3),
(5, '999999999', 'Programação Orientada a Objetos', '2026-1', 2.00, 32);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`RGM`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`RGM`);

--
-- Índices de tabela `notas_e_faltas`
--
ALTER TABLE `notas_e_faltas`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `RGM` (`RGM`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `notas_e_faltas`
--
ALTER TABLE `notas_e_faltas`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`RGM`) REFERENCES `aluno` (`RGM`) ON DELETE CASCADE;

--
-- Restrições para tabelas `notas_e_faltas`
--
ALTER TABLE `notas_e_faltas`
  ADD CONSTRAINT `notas_e_faltas_ibfk_1` FOREIGN KEY (`RGM`) REFERENCES `aluno` (`RGM`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
