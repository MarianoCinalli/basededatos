-- Obtener el promedio y la desviacion estandar para las transferencias emitidas por un usuario.

SELECT
    usuarios.username AS "nombre_usuario",
    AVG(transferencias.cant_monedas) AS "promedio_de_monedas_transferidas",
    stddev(transferencias.cant_monedas) AS "desviacion_estandar_de_monedas_transferidas"
FROM usuario_emite_transferencia
INNER JOIN usuarios ON usuarios.username = usuario_emite_transferencia.username
INNER JOIN transferencias ON transferencias.id_transferencia = usuario_emite_transferencia.id_transferencia
GROUP BY usuarios.username;

