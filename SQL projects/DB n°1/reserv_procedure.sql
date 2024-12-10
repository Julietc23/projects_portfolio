DELIMITER $$

CREATE PROCEDURE AgregarReserva(
IN nombre_cliente VARCHAR(250),
IN descripcion_habitacion VARCHAR(250)
)
BEGIN
	DECLARE cliente INT;
    DECLARE habitacion INT;
    
    SELECT cliente_id INTO cliente
    FROM clientes
    WHERE nombre = nombre_cliente;
    
    SELECT habitacion_id INTO habitacion
    FROM habitaciones
    WHERE descripcion = descripcion_habitacion;
    
    INSERT INTO reservas (cliente_id, habitacion_id, fecha) VALUES (cliente, habitacion, NOW());

END $$

DELIMITER ;

CALL AgregarReserva('Guada', '1 Suite con Jacuzzi');
CALL AgregarReserva('Marcelo', '4 Suites, 1 habitación Doble y una Simple');
CALL AgregarReserva('Gaston', '2 Suites y 3 habitaciones, 5 baños');