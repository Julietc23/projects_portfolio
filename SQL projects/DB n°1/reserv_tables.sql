CREATE TABLE IF NOT EXISTS clientes (
	cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(250) NOT NULL,
    contacto VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS habitaciones (
	habitacion_id INT AUTO_INCREMENT PRIMARY KEY,
    n_personas VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS reservas (
	reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    habitacion_id INT,
	FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
	FOREIGN KEY (habitacion_id) REFERENCES habitaciones(habitacion_id) 
);