SELECT * FROM usuarios u INNER JOIN reservas r ON u.id = r.id;
SELECT * FROM usuarios u LEFT JOIN reservas r ON u.id = r.id;
SELECT * FROM reservas r RIGHT JOIN destinos d ON r.id_destino = d.id;

SELECT * FROM destinos WHERE id NOT IN (SELECT id_destino FROM reservas);
SELECT * FROM usuarios WHERE id NOT IN (SELECT id_usuario FROM reservas);
SELECT nome, (SELECT COUNT(*) FROM reservas WHERE id_usuario = usuarios.id) AS total_reservas FROM usuarios;