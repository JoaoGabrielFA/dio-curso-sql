SELECT * FROM usuarios u INNER JOIN reservas r ON u.id = r.id;
SELECT * FROM usuarios u LEFT JOIN reservas r ON u.id = r.id;
SELECT * FROM reservas r RIGHT JOIN destinos d ON r.id_destino = d.id;

SELECT * FROM destinos WHERE id NOT IN (SELECT id_destino FROM reservas);
SELECT * FROM usuarios WHERE id NOT IN (SELECT id_usuario FROM reservas);

SELECT nome, (SELECT COUNT(*) FROM reservas WHERE id_usuario = usuarios.id) AS total_reservas FROM usuarios;
SELECT COUNT(*) AS total_usuarios FROM usuarios;
SELECT COUNT(*) AS total_usuarios_com_reserva FROM usuarios u INNER JOIN reservas r ON u.id = r.id_usuario;

SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS maior_idade_usuario FROM usuarios;

INSERT INTO reservas (id_usuario, id_destino) VALUES (1,3);

SELECT COUNT(*) AS quantidade_de_reservas, id_destino FROM reservas GROUP BY id_destino ORDER BY quantidade_de_reservas DESC;

CREATE INDEX idx_nome ON usuarios(nome);