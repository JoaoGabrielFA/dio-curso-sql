CREATE TABLE viagens.usuarios (
	id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Email do usuário',
    endereco VARCHAR(50) NOT NULL COMMENT 'Endereço do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário');
    
INSERT INTO usuarios (id, nome, email, rua, numero, cidade, estado, data_nascimento) VALUES 
	(1, 'João Gabriel de Freiras Antunes', 'teste@teste.com', 'Rua Rio Grande', '1260', 'Alvorada', 'RS', '2002-01-15'),
	(2, 'Maria Helena da Silva', 'maria.silva@example.com', 'Avenida Brasil', '890', 'Rio de Janeiro', 'RJ', '1995-03-22'),
	(3, 'Carlos Eduardo Oliveira', 'carlos.oliveira@example.com', 'Rua das Flores', '500', 'Belo Horizonte', 'MG', '1988-07-30'),
	(4, 'Ana Paula Mendes', 'ana.mendes@example.com', 'Praça das Águas', '230', 'Curitiba', 'PR', '2000-11-05'),
	(5, 'Ricardo Souza Pereira', 'ricardo.pereira@example.com', 'Rua Nova Esperança', '111', 'Salvador', 'BA', '1992-09-10');

UPDATE usuarios SET email = 'joao@email.com' WHERE id = 1;

SELECT * FROM usuarios;

DELETE FROM usuarios WHERE id >= 1;

ALTER TABLE usuarios MODIFY COLUMN endereco varchar(100);

ALTER TABLE usuarios MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);

SHOW COLUMNS FROM usuarios;

ALTER TABLE usuarios 
	ADD rua VARCHAR(100),
	ADD numero VARCHAR(100),
	ADD cidade VARCHAR(100),
	ADD estado VARCHAR(100);
    
ALTER TABLE usuarios DROP COLUMN endereco;