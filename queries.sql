USE workshop;

-- Qual o faturamento total da oficina da cidade de São Paulo?
SELECT city, SUM(total_amount) AS faturamento
FROM biling bil
INNER JOIN appointments app ON bil.appointment_id = app.appointment_id
INNER JOIN workshops wor ON wor.workshop_id = app.workshop_id
WHERE city = 'São Paulo';

-- Quais carros atendidos tiveram problemas no motor? Quem é o dono desses veículos?
SELECT cus.customer_id, CONCAT(first_name,' ',last_name) AS nome_do_dono, veh.vehicle_id, brand, model, vehicle_year, problem_description 
FROM appointments app
INNER JOIN vehicles veh ON veh.vehicle_id = app.vehicle_id
INNER JOIN customers cus ON cus.customer_id = app.customer_id
WHERE problem_description LIKE '%motor%';

-- Quais são os serviços mais frequentes solicitados pelos clientes?
SELECT ser.service_id, service_description, COUNT(*) AS serviços_prestados
FROM services ser
INNER JOIN appointments app ON ser.service_id = app.service_id
GROUP BY ser.service_id, service_description;

-- Qual foi o mecânico que mais prestou serviço?
SELECT mec.mechanic_id, mechanic_name, COUNT(*) AS número_serviços
FROM appointments app
INNER JOIN services ser ON app.service_id = ser.service_id
INNER JOIN mechanics mec ON ser.mechanic_id = mec.mechanic_id
GROUP BY mec.mechanic_id
ORDER BY número_serviços DESC;

-- Quais são os clientes que residem no estado de SP
SELECT *
FROM customers
WHERE address LIKE '%SP';

-- Quantos carros foram atendidos na oficina até o momento?
SELECT COUNT(*) AS números_de_carros
FROM vehicles;

-- Qual é a média de quilometragem dos carros atendidos?
SELECT AVG(mileage) AS média_quilometragem
FROM vehicles;

-- Quais foram os clientes que já pagaram mil reais ou mais em um serviço?
SELECT cus.customer_id, first_name, last_name, cpf, total_amount
FROM appointments app
INNER JOIN customers cus ON app.customer_id = cus.customer_id
INNER JOIN biling bil ON app.appointment_id = bil.appointment_id
WHERE total_amount >= 1000; 

-- Quantas revisões forma feitas nas oficinas do estado de SP?
SELECT wor.workshop_id, state AS região_oficina, problem_description, COUNT(*) AS Qtd_serviços
FROM appointments app
INNER JOIN customers cus ON app.customer_id = cus.customer_id
INNER JOIN workshops wor ON app.workshop_id = wor.workshop_id
WHERE state = 'São Paulo'
GROUP BY wor.workshop_id, city, problem_description 
HAVING problem_description LIKE '%revisão%';

-- Faturamento total por oficina
SELECT city, SUM(total_amount) AS faturamento
FROM biling bil
INNER JOIN appointments app ON bil.appointment_id = app.appointment_id
INNER JOIN workshops wor ON wor.workshop_id = app.workshop_id
GROUP BY city;

