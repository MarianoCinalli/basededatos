-- Obtener el promedio y la desviacion estandar para las transferencias emitidas por un usuario.

SELECT
    usuarios.username AS "nombre_usuario",
    AVG(transferencias.cant_monedas) AS "promedio_de_monedas_transferidas",
    stddev(transferencias.cant_monedas) AS "desviacion_estandar_de_monedas_transferidas"
FROM usuario_emite_transferencia
INNER JOIN usuarios ON usuarios.username = usuario_emite_transferencia.username
INNER JOIN transferencias ON transferencias.id_transferencia = usuario_emite_transferencia.id_transferencia
GROUP BY usuarios.username;

-- Obtener los usuarios que obtuvieron al menos 3 premios y la cantidad de posteos
-- que realizaron. Ordenar el listado por esta última cantidad en forma descendente.

SELECT  u.display_name, u.email, COUNT(u_po.id_post) AS "Cantidad de Post"
FROM usuarios u
INNER JOIN usuario_gana_premio u_pr ON u.username = u_pr.username
INNER JOIN usuario_genera_post u_po ON u_pr.username = u_po.username
GROUP BY u.display_name, u.email
HAVING COUNT (DISTINCT u_pr.nombre_premio) >= 3
ORDER BY 3 DESC;

