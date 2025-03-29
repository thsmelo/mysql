CREATE DATABASE Empresas;
USE Empresas;

CREATE TABLE Funcionarios ( 
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL, 
    data_nascimento DATE NOT NULL, 
    salario DECIMAL(10,2) NOT NULL, 
    departamento_id INT NOT NULL, 
    cargo_id INT NOT NULL, 
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(id), 
    FOREIGN KEY (cargo_id) REFERENCES Cargos(id) 
);


CREATE TABLE Departamentos (
	id INT PRIMARY KEY auto_increment,
	NOME varchar (100) NOT NULL,
	nivel VARCHAR (50) NOT NULL
);


CREATE TABLE Cargos (
	id INT PRIMARY KEY auto_increment,
    nome VARCHAR (100) NOT NULL, 
    nivel VARCHAR (50) NOT NULL
    );
    
    
INSERT INTO Cargos (nome, nivel) VALUES 
    ('Analista', 'Pleno'),
    ('Gerente', 'Senior'),
    ('Assistente', 'Junior'),
    ('Coordenador', 'Senior'),
    ('Desenvolvedor', 'Plano');
    
    
    
INSERT INTO Funcionarios (nome, data_nascimento, salario, departamento_id, cargo_id) VALUES
    ('Ana Silva', '1985-06-15', 5500.00, 1, 5),
    ('Carlos Santos', '1990-03-22', 4800.00, 2, 1),
    ('Bruna Costa', '1987-12-10', 6000.00, 3, 2), 
	('Daniel Oliveira', '1992-08-05', 5200.00, 1, 5), 
	('Fernanda Lima', '1995-09-30', 4500.00, 2, 3), 
	('Gustavo Souza', '1980-01-25', 7000.00, 3, 2), 
	('Helena Martins', '1983-11-17', 5300.00, 1, 4), 
	('Igor Ferreira', '1991-07-08', 4900.00, 2, 1), 
	('Juliana Rocha', '1989-04-19', 5600.00, 3, 2), 
	('Lucas Mendes', '1993-06-23', 5100.00, 1, 5);




INSERT INTO Departamentos (NOME) 
VALUES ('TI'), ('RH'), ('Financeiro'), ('Marketing'), ('Vendas');


SELECT * FROM Departamentos;

-- 1 ENCONTRE O MAIOR  SALARIO;
SELECT MAX(salario) AS maior_funcionario FROM Funcionarios;



-- 2 ENCONTRE O MENOR SALARIO
SELECT MIN(salario) AS maior_salario FROM Funcionarios;



-- 3 QUAL A QUANTIDADE DE FUNCIONARIOS 
SELECT COUNT(*) AS quantidade_funcionarios FROM Funcionarios;



-- 4  FUNCIONARIOS NASCIDOS A PARTIR DE 1990 
SELECT * FROM Funcionarios WHERE data_nascimento >= '1990-01-01';




-- 5 ENCONTRE A MEDIA SALARIAL
SELECT AVG(salario) AS media_salarial FROM Funcionarios;


-- 6 EXTRAIA OS 3 PRIMEIROS CARACTERES DO NOME (SUBSTRING)
SELECT SUBSTRING(nome, 1, 6) AS primeiros_caracteres FROM Funcionarios;



-- JOIN
	select * 
	from Funcionarios f
	join Departamentos d ON f.departamento_id = d.id
	group by d.nome;



-- 7 CONTAR QUANTOS FUNCIONARIOS POR DEPARTAMENTO
	select count(f.id) AS qtFunc, d.nome AS Dep
	from Funcionarios f
	join Departamentos d ON f.departamento_id = d.id
	group by d.nome;
    
    
    
    
-- 8 CONTAR QUANTOS FUNCIONARIOS EXISTEM CARGO
    select * 
	from Funcionarios f
	join Cargos c ON f.cargo_id = c.id
    group by c.nome;
    
    
    
    select count(f.id) AS qtFunceCargo, c.nome AS Car
	from Funcionarios f
	join Cargos c ON f.cargo_id = c.id
    group by c.nome;
    
	
    








    