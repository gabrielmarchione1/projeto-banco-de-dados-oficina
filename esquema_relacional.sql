-- criação do banco de dados para o cenário de Oficina
CREATE DATABASE workshop;
USE workshop;

-- criando tabela clientes
CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),
    cpf CHAR(11) NOT NULL,
    address VARCHAR(255),
    contact_number VARCHAR(11) NOT NULL,
    email VARCHAR(55),
    CONSTRAINT unique_cpf UNIQUE (cpf)
);

-- criando tabela veículos
CREATE TABLE vehicles (
	vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    brand VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    vehicle_year YEAR,
    license_plate CHAR(7) NOT NULL,
    chassis_number VARCHAR(17) NOT NULL,
    mileage FLOAT,
    CONSTRAINT unique_license_plate UNIQUE (license_plate),
    CONSTRAINT unique_chassis_number UNIQUE (chassis_number),
    CONSTRAINT fk_customer_vehicles FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- criando tabela mecânicos
CREATE TABLE mechanics (
	mechanic_id INT AUTO_INCREMENT PRIMARY KEY,
    mechanic_name VARCHAR(20) NOT NULL,
    specialization VARCHAR(45) NOT NULL
);

-- criando tabela serviços
CREATE TABLE services (
	service_id INT AUTO_INCREMENT PRIMARY KEY,
    mechanic_id INT NOT NULL,
    service_description VARCHAR(255),
    CONSTRAINT fk_mechanic_service FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id)
);

-- criando tabela oficinas
CREATE TABLE workshops (
	workshop_id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(55) NOT NULL,
    state VARCHAR(55) NOT NULL,
    postal_code CHAR(8),
    cnpj CHAR(14) NOT NULL,
    phone VARCHAR(11) NOT NULL,
    CONSTRAINT unique_cnpj UNIQUE (cnpj)
);

-- criando tabela agendamentos
CREATE TABLE appointments (
	appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    workshop_id INT NOT NULL,
    service_id INT NOT NULL,
    appointment_date_time DATETIME,
    problem_description VARCHAR(255),
    CONSTRAINT fk_customer_appointment FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_vehicle_appointment FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    CONSTRAINT fk_workshop_appointment FOREIGN KEY (workshop_id) REFERENCES workshops(workshop_id),
    CONSTRAINT fk_service_appointment FOREIGN KEY (service_id) REFERENCES services(service_id)
);

-- criando tabela faturamentos
CREATE TABLE biling (
	biling_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    total_amount FLOAT NOT NULL,
    payment_date DATE,
    CONSTRAINT fk_appointment_billing FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- verificando as constraints
SELECT * FROM information_schema.table_constraints
WHERE constraint_schema = 'workshop';

