CREATE TABLE viagens.destinos (
	id INT,
	nome VARCHAR(255) NOT NULL UNIQUE COMMENT 'Nome do destino',
	descricao VARCHAR(255) NOT NULL COMMENT 'Descrição do destino'
);

INSERT INTO destinos (id, nome, descricao) VALUES (1, 'Acapulco', 'Praia do Chaves');
INSERT INTO destinos (id, nome, descricao) VALUES (2, 'Ratanaba', 'Cidade perdida brasileira');
INSERT INTO destinos (id, nome, descricao) VALUES (6, 'Groenlandia', 'Muito frio :(');

SELECT * FROM destinos;

ALTER TABLE destinos MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);

SHOW COLUMNS FROM destinos;