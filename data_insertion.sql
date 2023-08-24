USE workshop;
-- SHOW TABLES;

-- first_name, last_name, cpf, address, contact_number, email
INSERT INTO customers (first_name, last_name, cpf, address, contact_number, email) VALUES
			('Gabriel', 'Pereira', 56734987651, 'Rua Paiva santos, 256 - São Paulo/SP', 11934589631, 'gabpereira@xxmail.com'),
			('Roberto', 'Santos', 34764980987, 'Rua Abril dos Anjos, 101 - Osasco/SP', 11987689687, 'robertosan@xxmail.com'),
            ('João', 'Andrade', 27649987561, 'Rua Vital Drummond, 79 - São Paulo/SP', 11974598531, 'joaoandrade1@xxmail.com'),
            ('Carlos', 'Silva', 25879874669, 'Rua Percival Pereira, 79 - Rio de Janeiro/RJ', 21998498573, 'carlosilva23@xxmail.com'),
            ('Afonso', 'Oliveira', 99889971660, 'Rua Norberto, 88 - Belo Horizonte/MG', 31911298888, 'afonsooo@xxmail.com'),
            ('Amanda', 'Rocha', 09659874973, 'Rua Bondinho, 24 - Rio de Janeiro/RJ', 21908358009, 'amandarocha23@xxmail.com'),
            ('Ana', 'Silva', 12345678901, 'Rua das Flores, 123 - Osasco/SP', 11987654321, 'anasilva@xxmail.com'),
			('Pedro', 'Santos', 98765432109, 'Avenida dos Palmeiras, 45 - São Paulo/SP', 11944783333, 'pedrosantos@xxmail.com'),
			('Carla', 'Lima', 65432198703, 'Praça da Liberdade, 78 - Rio de Janeiro/RJ', 21997788985, 'carlalima@xxmail.com'),
			('Lucas', 'Oliveira', 45678912304, 'Rua Central, 789 - Belo Horizonte/MG', 31222222222, 'lucasoliveira@xxmail.com'),
			('Mariana', 'Ferreira', 78901234506, 'Avenida das Estrelas, 12 - Osasco/SP', 11987133837, 'marianaferreira@xxmail.com'),
			('Rafael', 'Almeida', 34567890123, 'Rua da Praia, 567 - São Paulo/SP', 11920699901, 'rafaalmeida@xxmail.com'),
			('Camila', 'Machado', 78901234567, 'Avenida da Montanha, 34 - Rio de Janeiro/RJ', 21987699051, 'camilamachado@xxmail.com'),
			('Gustavo', 'Fernandes', 23456789012, 'Rua das Árvores, 89 - Belo Horizonte/MG', 31918999337, 'gustavofernandes@xxmail.com'),
			('Isabela', 'Barros', 89012345678, 'Avenida do Parque, 56 - São Paulo/SP', 11977888365, 'isabelabarros@xxmail.com'),
			('Thiago', 'Pereira', 56789012345, 'Praça da Cidade, 23 - Osasco/SP', 11977491770, 'thiagopereira@xxmail.com');
            

-- customer_id, brand, model, vehicle_year, license_plate, chassis_number, mileage
INSERT INTO vehicles (customer_id, brand, model, vehicle_year, license_plate, chassis_number, mileage) VALUES
			(3, 'Chevrolet', 'Onix', 2020, 'RXK7T89', '7KH8543SC09UH65C4', 52000),
			(1, 'Ford', 'Fusion', 2017, 'IUT9Y81', '9JG5423SC09O097CH', 117000),
            (4, 'Honda', 'Fit', 2022, 'MLV0A52', '1HCV843SPO7UH00V7', 15000),
            (2, 'Peugeot', '208', 2018, 'SKU9V01', 'PO7U573S0O7YU60B9', 102000),
            (6, 'Honda', 'City', 2015, 'KIO8A33', 'PO7UH43S78UHC009X', 157000),
            (5, 'Nissan', 'March', 2020, 'AYV9K57', '3SC0573S0YU0060OY', 91000),
            (10, 'Toyota', 'Corolla', 2018, 'ABC1D23', 'DEF4G56H78IJK902L', 85000),
			(16, 'Ford', 'Focus', 2017, 'EFG2H34', 'IJK5L67M89NPO123R', 72000),
			(12, 'Chevrolet', 'Cruze', 2019, 'HIJ6K78', 'LMN9P01Q23RST456U', 56000),
			(7, 'Nissan', 'Sentra', 2016, 'UVW7X89', 'YZA2B34C56DEF789G', 98000),
			(15, 'Volkswagen', 'Golf', 2020, 'HJK3L45', 'MNO6P78Q90RST123U', 42000),
			(9, 'Hyundai', 'Elantra', 2017, 'VWX4Y56', 'ZAB7C89DEF012345G', 68000),
			(13, 'Kia', 'Soul', 2018, 'LMN5P67', 'UVW8X90YZA123456B', 59000),
			(14, 'Mazda', 'Mazda3', 2019, 'CDE6F78', 'GHI9J01K23LMN456P', 53000),
			(11, 'Subaru', 'Impreza', 2016, 'JKL7M89', 'PQR2S34T56UVW789X', 89000),
			(8, 'Audi', 'A4', 2021, 'FGH8J90', 'KLM1N23P45QRS678T', 28000);
            
-- mechanic_id, mechanic_name, specialization
INSERT INTO mechanics (mechanic_name, specialization) VALUES
			('Jacinto', 'Motor'),
			('Kleber', 'Transmissão'),
            ('Pedro', 'Trocar óleo'),
            ('Rafael', 'Freio'),
            ('Sylvio', 'Mecânico Geral'),
            ('Filipe', 'Pintura');
            
-- mechanic_id, service_description
INSERT INTO services (mechanic_id, service_description) VALUES
			(1, 'Reparar motor'),
			(2, 'Arrumar câmbio'),
            (3, 'Troca de óleo'),
            (4, 'Trocar ou reparar disco do freio'),
            (5, 'Revisão'),
            (6, 'Pintura');
            
-- address, city, state, postal_code, cnpj, phone
INSERT INTO workshops (address, city, state, postal_code, cnpj, phone) VALUES
			('Rua santa teresina, 898', 'São Paulo', 'São Paulo', 02986549, 19846090097587, 11986615477),
			('Rua paula andrade, 118', 'Osasco', 'São Paulo', 79876589, 98409890198512, 11976117489),
            ('Rua comandante sampaio, 27', 'Rio de Janeiro', 'Rio de Janeiro', 98606591, 20968090777590, 21922615369),
            ('Rua são joao, 41', 'Belo Horizonte', 'Minas Gerais', 67856511, 75946011198090, 31922215158);
     
-- customer_id, vehicle_id, workshop_id, servise_id, appointment_date_time, problem_description
INSERT INTO appointments (customer_id, vehicle_id, workshop_id, service_id, appointment_date_time, problem_description) VALUES
			(2, 4, 2, 3, '2023-05-21 14:30:00', 'Necessita trocar o óleo'),
			(1, 2, 1, 5, '2023-05-23 16:45:00', 'Fazer revisão no carro'),
            (3, 1, 1, 1, '2023-05-25 12:30:00', 'Reparar motor que superaqueceu'),
            (4, 3, 3, 2, '2023-05-26 10:00:00', 'Arrumar câmbio'),
            (6, 5, 3, 4, '2023-05-27 09:30:00', 'Trocar disco do freio que quebrou'),
            (5, 6, 4, 5, '2023-05-27 16:00:00', 'Necessita fazer revisão'),            
            (9, 12, 3, 2, '2023-05-28 13:30:00', 'Arrumar câmbio'),
			(8, 16, 1, 5, '2023-05-28 16:45:00', 'Fazer revisão no carro'),
            (7, 10, 2, 1, '2023-05-29 12:30:00', 'Reparar motor que superaqueceu'),
            (13, 13, 3, 2, '2023-05-30 10:00:00', 'Arrumar câmbio'),
            (10, 7, 4, 4, '2023-05-31 09:30:00', 'Trocar disco do freio que quebrou'),
            (15, 11, 1, 5, '2023-06-02 11:00:00', 'Necessita fazer revisão'),
            (11, 15, 2, 3, '2023-06-02 16:00:00', 'Necessita trocar o óleo'),
			(16, 8, 2, 4, '2023-06-03 09:30:00', 'Trocar disco do freio que quebrou'),
			(12, 14, 1, 1, '2023-06-04 12:45:00', 'Reparar motor que superaqueceu'),
            (14, 16, 4, 3, '2023-06-06 10:00:00', 'Necessita trocar o óleo');

-- appointment_id, total_amount, payment_date
INSERT INTO biling (appointment_id, total_amount, payment_date) VALUES
			(1, 200, '2023-05-21'),
            (2, 1000, '2023-05-23'),
            (3, 2500, '2023-05-25'),
            (4, 200, '2023-05-26'),
            (5, 800, '2023-05-27'),
            (6, 1500, '2023-05-27'),
            (7, 2000, '2023-05-28'),
            (8, 500, '2023-05-28'),
            (9, 1700, '2023-05-29'),
            (10, 350, '2023-05-30'),
            (11, 600, '2023-05-31'),
            (12, 2500, '2023-06-02'),
            (13, 3500, '2023-06-02'),
            (14, 1000, '2023-06-03'),
            (15, 2000, '2023-06-04'),
            (16, 300, '2023-06-06');