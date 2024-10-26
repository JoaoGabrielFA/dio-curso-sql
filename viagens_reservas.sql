CREATE TABLE viagens.reservas (
	id INT COMMENT 'Identificador único da reserva',
	id_usuario INT COMMENT 'Referência ao ID do usuário que fez a reserva',
	id_destino INT COMMENT 'Referência ao ID do destino da reserva',
	data DATE COMMENT 'Data da reserva',
	status VARCHAR(255) DEFAULT 'pendente' COMMENT 'Status da reserva (confirmada, pendente, cancelada, etc.)'
);

INSERT INTO reservas (id, id_usuario, id_destino, data, status) VALUES (4, 4, 4, '2024-12-24', 'pendente');

SELECT * FROM reservas;

ALTER TABLE reservas MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);
ALTER TABLE reservas DROP FOREIGN KEY fk_reservas_usuarios;
ALTER TABLE reservas ADD CONSTRAINT fk_reservas_usuarios FOREIGN KEY(id_usuario) REFERENCES usuarios (id) ON DELETE CASCADE;
ALTER TABLE reservas DROP FOREIGN KEY fk_reservas_destinos;
ALTER TABLE reservas ADD CONSTRAINT fk_reservas_destinos FOREIGN KEY(id_destino) REFERENCES reservas (id) ON DELETE CASCADE;

SHOW COLUMNS FROM reservas;