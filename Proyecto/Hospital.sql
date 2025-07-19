CREATE TABLE Paciente(
id_paciente integer primary key,
nombre varchar2(50),
apellido_paterno varchar2(50),
apellido_materno varchar2(50),
fecha_nacimiento date,
sexo varchar2(10),
tipo_sangre varchar2(5),
telefono varchar2(20),
direccion varchar2(100),
email_paciente varchar2(30),
fecha_registro date
);

SELECT * FROM Paciente;

insert into Paciente(id_paciente, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, tipo_sangre, telefono, direccion,
email_paciente, fecha_registro)
values(1, 'Jesus', 'Lopez', 'Martinez', to_date('14-08-1998', 'DD-MM-YYYY'), 'Hombre', 'O+', '2287904321', 'Veracruz', 'jesusm@gmail.com',
to_date('2-01-2024', 'DD-MM-YYYY'));

insert into Paciente(id_paciente, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, tipo_sangre, telefono, direccion,
email_paciente, fecha_registro)
values(2, 'Lucia', 'Sanchez', 'Ruiz', to_date('6-02-1986', 'DD-MM-YYYY'), 'Mujer', 'O-', '2221679035', 'Puebla', 'ruizlucia@gmail.com',
to_date('9-07-2020', 'DD-MM-YYYY'));

insert into Paciente(id_paciente, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, tipo_sangre, telefono, direccion,
email_paciente, fecha_registro)
values(3, 'Mario', 'Torres', 'Montiel', to_date('25-12-1979', 'DD-MM-YYYY'), 'Hombre', 'A+', '5580547100', 'CDMX', 'mariotorres@gmail.com',
to_date('30-11-2009', 'DD-MM-YYYY'));

insert into Paciente(id_paciente, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, tipo_sangre, telefono, direccion,
email_paciente, fecha_registro)
values(4, 'Ximena', 'Aguilar', 'Manriquez', to_date('20-12-2002', 'DD-MM-YYYY'), 'Mujer', 'B-', '2460997450', 'Tlaxcala', 'ximeagui@gmail.com',
to_date('18-04-2022', 'DD-MM-YYYY'));

insert into Paciente(id_paciente, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, tipo_sangre, telefono, direccion,
email_paciente, fecha_registro)
values(5, 'Luis', 'Miguel', 'Vazquez', to_date('12-09-1992', 'DD-MM-YYYY'), 'Hombre', 'O+', '5526048214', 'CDMX', 'luismi@gmail.com',
to_date('1-03-2010', 'DD-MM-YYYY'));

--Paciente nuevo incertado.
insert into Paciente(id_paciente, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, tipo_sangre, telefono, direccion, email_paciente, fecha_registro)
values(6, 'Mariana', 'Soto', '', to_date('25/08/2000', 'DD/MM/YYYY'), 'F', 'A+', '4425558899', 'Queretaro', 'mariana@mail.com.', SYSDATE);

--Elimina todos los pacientes registrados antes del 2010-01-01
delete from Paciente where fecha_registro<to_date('01-01-2010', 'DD-MM-YYYY');

CREATE TABLE Doctor(
id_doctor integer primary key,
nombre varchar2(50),
apellido_paterno varchar2(50),
apellido_materno varchar2(50),
especialidad varchar2(30),
cedula_profesional varchar2(20),
telefono varchar2(20),
email varchar2(50),
fecha_contratacion date
);

SELECT * FROM Doctor;

insert into Doctor(id_doctor, nombre, apellido_paterno, apellido_materno, especialidad, cedula_profesional, telefono,
email, fecha_contratacion)
values(1, 'Alejandro', 'Luna', 'Molina', 'Cardiologia', 'ZK56421', '5559012788', 'lunam@hotmail.com', to_date('24_08_2004', 'DD-MM-YYYY'));

insert into Doctor(id_doctor, nombre, apellido_paterno, apellido_materno, especialidad, cedula_profesional, telefono,
email, fecha_contratacion)
values(2, 'Marcos', 'Hernandez', 'Garcia', 'Nutriologia', 'NQ96320', '5580652133', 'marcosg@hospital.com', to_date('4_10_2001', 'DD-MM-YYYY'));

insert into Doctor(id_doctor, nombre, apellido_paterno, apellido_materno, especialidad, cedula_profesional, telefono,
email, fecha_contratacion)
values(3, 'Marcela', 'Soler', 'Ramirez', 'Neurologia', 'HS91074', '5556942097', 'marce@hospital.com', to_date('29_04_2013', 'DD-MM-YYYY'));

insert into Doctor(id_doctor, nombre, apellido_paterno, apellido_materno, especialidad, cedula_profesional, telefono,
email, fecha_contratacion)
values(4, 'Antonia', 'Duran', 'Alarcon', 'Psiquiatria', 'MP70326', '5599356713', 'toniadur@hospital.com', to_date('5_07_1996', 'DD-MM-YYYY'));

insert into Doctor(id_doctor, nombre, apellido_paterno, apellido_materno, especialidad, cedula_profesional, telefono,
email, fecha_contratacion)
values(5, 'Sebastian', 'Oliva', 'Rios', 'Neumologia', 'TY23452', '5598765421', 'sebasol@hospital.com', to_date('19_12_1998', 'DD-MM-YYYY'));

--Doctor nuevo insertado.
insert into Doctor(id_doctor, nombre, apellido_paterno, apellido_materno, especialidad, cedula_profesional, telefono, email, fecha_contratacion)
values(6, 'Eduardo', 'Bravo', '', 'Traumatologia', 'TR12345', '5553332211', 'edub@hospital.com', SYSDATE);

CREATE TABLE Cita(
id_cita integer primary key,
fecha_hora date,
motivo varchar2(30),
id_paciente integer,
id_doctor integer,
observaciones clob,
foreign key (id_paciente) references Paciente(id_paciente),
foreign key (id_doctor) references Doctor(id_doctor)
);

SELECT * FROM Cita;

insert into Cita(id_cita, fecha_hora, motivo, id_paciente, id_doctor, observaciones)
Values(1, to_date('16_08_2024 9:30:00', 'DD-MM-YYYY HH:MI:SS'), 'Presion arterial', '1', '1', 'Paciente presenta hipotension'); 

insert into Cita(id_cita, fecha_hora, motivo, id_paciente, id_doctor, observaciones)
Values(2, to_date('13_01_2025 10:20:33', 'DD-MM-YYYY HH24:MI:SS'), 'Dieta para bajar de peso', '2', '2', 'Paciente consume mucho colesterol');

insert into Cita(id_cita, fecha_hora, motivo, id_paciente, id_doctor, observaciones)
Values(3, to_date('26_10_2022 12:40:00', 'DD-MM-YYYY HH24:MI:SS'), 'Examen neurologico', '3', '3', 'Paciente muestra resultados positivos');

insert into Cita(id_cita, fecha_hora, motivo, id_paciente, id_doctor, observaciones)
Values(4, to_date('10_07_2025 8:00:00', 'DD-MM-YYYY HH24:MI:SS'), 'Terapia psicologica', '4', '4', 'Sintomas de depresion y ansiedad');

insert into Cita(id_cita, fecha_hora, motivo, id_paciente, id_doctor, observaciones)
Values(5, to_date('18_12_2018 7:30:10', 'DD-MM-YYYY HH24:MI:SS'), 'Chequeo medico', '5', '5', 'Sintomas de EPOC');

--Cita nueva registrada.
insert into Cita(id_cita, fecha_hora, motivo, id_paciente, id_doctor, observaciones)
Values(6, to_date('21_07_2025 09:00:00', 'DD-MM-YYYY HH24:MI:SS'), 'Lesion deportiva', '6', '6', 'Sin observaciones');


CREATE TABLE Consulta(
id_consulta integer primary key,
id_cita integer,
diagnostico clob,
tratamiento clob,
receta clob,
fecha date,
foreign key (id_cita) references Cita(id_cita)
);

SELECT * FROM Consulta;

insert into Consulta(id_consulta, id_cita, diagnostico, tratamiento, receta, fecha)
values(100, 1, 'Hipotension arterial cronica.', 'Recomendacion de aumento de la ingesta de liquidos, dieta rica en sal moderada y evitar cambios posturales bruscos.', 'Losartan Potasico 50 mg, 1 comprimido diario.', to_date('20-08-2024', 'DD-MM-YYYY'));

insert into Consulta(id_consulta, id_cita, diagnostico, tratamiento, receta, fecha)
values(119, 2, 'Hipercolesterolemia', 'Dieta baja en grasas, rica en vitaminas y actividad fisica regular', 'Atorvastatina 20mg una vez al dia.', to_date('15-01-2025', 'DD-MM-YYYY'));

insert into Consulta(id_consulta, id_cita, diagnostico, tratamiento, receta, fecha)
values(135, 3, 'Neuropatia periferica', 'Terapia física y manejo del dolor', 'Memantina 10mg tres veces al día, Suplemento Nervio Ciatico 1 capsula al dia.', to_date('30-10-2022', 'DD-MM-YYYY'));

insert into Consulta(id_consulta, id_cita, diagnostico, tratamiento, receta, fecha)
values(124, 4, 'Trastorno mixto de ansiedad y depresion', 'Psicoterapia cognitivo-conductual y monitoreo mensual', 'Sertralina 50mg una vez al dia.', to_date('11-07-2025', 'DD-MM-YYYY'));

insert into Consulta(id_consulta, id_cita, diagnostico, tratamiento, receta, fecha)
values(158, 5, 'EPOC (Enfermedad Pulmonar Obstructiva Crónica)', 'Suspension total del tabaco y uso de inhaladores broncodilatadores', 'Salbutamol inhalador 100mcg cada 6 horas si hay dificultad respiratoria.', to_date('21-12-2018', 'DD-MM-YYYY'));

--Consulta agregada necesaria para registrar una nueva preescripcion.
insert into Consulta(id_consulta, id_cita, diagnostico, tratamiento, receta, fecha)
values(661, 6, 'Lesion deportiva', 'Absoluto reposo y toma de amoxicilina', 'Amoxicilina, con dosis 500mg, frecuencia cada 8 horas, duración 7 días.', to_date('22-07-2025', 'DD-MM-YYYY'));

CREATE TABLE Medicamento(
id_medicamento integer primary key,
nombre varchar2(50),
descripción varchar2(100),
laboratorio varchar2(50),
presentación varchar2(50),
stock_actual number 
);

SELECT * FROM Medicamento;

insert into Medicamento(id_medicamento, nombre, descripción, laboratorio, presentación, stock_actual)
values(1, 'Losartan Potasico', 'Antihipotensivo', 'Pfizer', 'Caja con 30 tabletas de 50 mg', 80); 

insert into Medicamento(id_medicamento, nombre, descripción, laboratorio, presentación, stock_actual)
values(2, 'Atorvastatina', 'Reduce el colesterol', 'Sanofi', 'Caja con 30 tabletas de 20 mg', 35);

insert into Medicamento(id_medicamento, nombre, descripción, laboratorio, presentación, stock_actual)
values(3, 'Memantina', 'Mejora la función cognitiva', 'Merz Pharma', 'Caja con 28 tabletas de 10 mg', 60);

insert into Medicamento(id_medicamento, nombre, descripción, laboratorio, presentación, stock_actual)
values(4, 'Sertlalina', 'Antidepresivo ISRS', 'Pfizer', 'Caja con 15 tabletas de 50 mg', 120);

insert into Medicamento(id_medicamento, nombre, descripción, laboratorio, presentación, stock_actual)
values(5, 'Salbutamol', 'Inhalador', 'Zambon', 'Caja con 1 inhalador de 100 mg', 20);

--Medicamento nuevo insertado.
insert into Medicamento(id_medicamento, nombre, descripción, laboratorio, presentación, stock_actual)
values(6, 'Amoxicilina', 'Antibiotico', 'Sanofi', 'Capsulas', 150); 

delete from Medicamento where stock_actual=300; --Borra el medicamento Ibuprofeno solo si su stock_actual es exactamente 300

CREATE TABLE Prescripcion(
id_prescripcion integer primary key,
id_consulta integer,
id_medicamento integer,
dosis varchar2(50),
duracion_dias number,
frecuencia varchar2(50),
foreign key (id_consulta) references Consulta(id_consulta),
foreign key (id_medicamento) references Medicamento(id_medicamento)
);

SELECT * FROM Prescripcion;

insert into Prescripcion(id_prescripcion, id_consulta, id_medicamento, dosis, duracion_dias, frecuencia)
values(619, 100, 1, '1 comprimido de 50 mg cada 24 horas', 30, 'Diariamente por un mes');

insert into Prescripcion(id_prescripcion, id_consulta, id_medicamento, dosis, duracion_dias, frecuencia)
values(175, 119, 2, '1 pastilla de 20mg cada 8 horas', 90, 'Tomar diariamente durante 3 meses');

insert into Prescripcion(id_prescripcion, id_consulta, id_medicamento, dosis, duracion_dias, frecuencia)
values(703, 135, 3, '2 pastillas cada 8 horas', 2, '3 veces al dia durante 2 dias');

insert into Prescripcion(id_prescripcion, id_consulta, id_medicamento, dosis, duracion_dias, frecuencia)
values(511, 124, 4, '1 capsula cada 12 horas', 120, 'Tomar 2 veces al dia durante 4 meses');

insert into Prescripcion(id_prescripcion, id_consulta, id_medicamento, dosis, duracion_dias, frecuencia)
values(840, 158, 5, 'Inhalar una toma cada 6 horas', 30, '4 veces al día por un mes');

--Preescripcion nueva registrada.
insert into Prescripcion(id_prescripcion, id_consulta, id_medicamento, dosis, duracion_dias, frecuencia)
values(660, 661, 6, '500mg', 7, 'cada 8 horas');

delete from Prescripcion where duracion_dias<3; --Elimina todas las prescripciones medicas que tengan duracion menor a 3 dias
 
update Prescripcion set duracion_dias=2 where id_prescripcion=703; --Cambio de duracion para insertar delete

CREATE TABLE Habitacion( 
id_habitacion integer primary key,
tipo_habitacion varchar2(50),
piso number,
estatus varchar2(30)
);

SELECT * FROM Habitacion;

insert into Habitacion(id_habitacion, tipo_habitacion, piso, estatus)
values(223, 'Individiual', 3, 'DISPONIBLE');

insert into Habitacion(id_habitacion, tipo_habitacion, piso, estatus)
values(277, 'Sala de Terapia Intensiva', 3, 'OCUPADO');

insert into Habitacion(id_habitacion, tipo_habitacion, piso, estatus)
values(128, 'Habitaciones de Aislamiento', 2, 'MANTENIMIENTO');

insert into Habitacion(id_habitacion, tipo_habitacion, piso, estatus)
values(305, 'Doble y Semiprivada', 4, 'DISPONIBLE');

insert into Habitacion(id_habitacion, tipo_habitacion, piso, estatus)
values(404, 'Suite Privada', 5, 'MANTENIMIENTO');

delete from Habitacion where estatus='MANTENIMIENTO'; --Borra todas las habitaciones con estatus 'Mantenimiento'

update Habitacion set estatus='MANTENIMIENTO' where id_habitacion=128; --Cambiar estatus a mantenimiento para ejecutar comando
update Habitacion set estatus='MANTENIMIENTO' where id_habitacion=404;

CREATE TABLE Cirugia(
id_cirugia integer primary key,
tipo_cirugia varchar2(50),
fecha_cirugia date,
id_paciente integer,
id_doctor integer,
duracion_minutos number,
notas_medicas clob,
foreign key(id_paciente) references Paciente(id_paciente),
foreign key(id_doctor) references Doctor(id_doctor)
);

SELECT * FROM Cirugia;

insert into Cirugia(id_cirugia, tipo_cirugia, fecha_cirugia, id_paciente, id_doctor, duracion_minutos, notas_medicas)
values(107, 'Cirugia de aneurismas', to_date('30-03-2023','DD-MM-YYYY'), '1', '1', 40, 'Reparacion endovascular exitosa');

insert into Cirugia(id_cirugia, tipo_cirugia, fecha_cirugia, id_paciente, id_doctor, duracion_minutos, notas_medicas)
values(175, 'Tratamiento de la Úlcera Gástrica', to_date('18-06-2025','DD-MM-YYYY'), '2', '2', 35, 'Se necesito aplicar una gastrectomía parcial para remover la ulcera');

insert into Cirugia(id_cirugia, tipo_cirugia, fecha_cirugia, id_paciente, id_doctor, duracion_minutos, notas_medicas)
values(212, 'Cirugia funcional para el Parkinson (ECP)', to_date('2-09-2020','DD-MM-YYYY'), '3', '3', 320, 'Aplicamos electrodos en areas del cerebro y el paciente respondio a los impulsos');

insert into Cirugia(id_cirugia, tipo_cirugia, fecha_cirugia, id_paciente, id_doctor, duracion_minutos, notas_medicas)
values(381, 'Rinoplastia', to_date('11-07-2024','DD-MM-YYYY'), '4', '4', 146, 'Las fosas nasales del paciente se reacomodaron y se cambio la forma de la nariz');

insert into Cirugia(id_cirugia, tipo_cirugia, fecha_cirugia, id_paciente, id_doctor, duracion_minutos, notas_medicas)
values(456, 'Cirugia de pulmon afectado por tabaquismo', to_date('9-05-2022','DD-MM-YYYY'), '5', '5', 290, 'Fue necesaria una segmentectomia para remover el tejido dañado');

--Cirugia insertada para poder actualizar datos 
insert into Cirugia(id_cirugia, tipo_cirugia, fecha_cirugia, id_paciente, id_doctor, duracion_minutos, notas_medicas)
values(663, 'Cirugia de Reconstruccion de ligamentos', to_date('10-05-2027','DD-MM-YYYY'), '6', '6', 180, 'Fue necesaria para reparar un ligamento roto');


CREATE TABLE Factura(
id_factura integer primary key,
fecha_factura date,
id_paciente integer,
monto_total number(10, 2),
metodo_pago varchar2(50),
estatus_pago varchar2(50),
foreign key (id_paciente) references Paciente(id_paciente)
);

SELECT * FROM Factura;

insert into Factura(id_factura, fecha_factura, id_paciente, monto_total, metodo_pago, estatus_pago)
values(089, to_date('2-04-2023','DD-MM-YYYY'), '1', 150000, 'Transferencia electronica', 'PENDIENTE');

insert into Factura(id_factura, fecha_factura, id_paciente, monto_total, metodo_pago, estatus_pago)
values(423, to_date('24-06-2025','DD-MM-YYYY'), '2', 205000, 'Pago con tarjeta', 'CANCELADA');

insert into Factura(id_factura, fecha_factura, id_paciente, monto_total, metodo_pago, estatus_pago)
values(056, to_date('10-09-2020','DD-MM-YYYY'), '3', 168000, 'Pago con tarjeta', 'PAGADO');

insert into Factura(id_factura, fecha_factura, id_paciente, monto_total, metodo_pago, estatus_pago)
values(270, to_date('13-07-2024','DD-MM-YYYY'), '4', 82000, 'Efectivo', 'PENDIENTE');

insert into Factura(id_factura, fecha_factura, id_paciente, monto_total, metodo_pago, estatus_pago)
values(069, to_date('16-05-2022','DD-MM-YYYY'), '5', 193000, 'Transferencia electronica', 'CANCELADA');

delete from Factura where estatus_pago='CANCELADA'; --Elimina las facturas cuyo estado_pago sea Cancelada.

Update Factura set estatus_pago='CANCELADA' where id_factura=423; --Actualización de estatus_pago para ejecutar la instrucción
Update Factura set estatus_pago='CANCELADA' where id_factura=069;

CREATE TABLE Proveedor(
id_proveedor integer primary key,
nombre_empresa varchar2(30),
contacto_telefono varchar2(20),
direccion varchar2(100),
email_proveedor varchar2(100)
);

SELECT * FROM Proveedor;

insert into Proveedor(id_proveedor, nombre_empresa, contacto_telefono, direccion, email_proveedor)
values(1, 'Hospital Angeles del sur', '5552252910', 'Calle Roma Nte, avenida Cuauhtemoc', 'angelessur2@hospital.com');

insert into Proveedor(id_proveedor, nombre_empresa, contacto_telefono, direccion, email_proveedor)
values(2, 'Hospital Cristo Rey', '5528751100', 'Avenida San Luis 655, villa centroamericana ', 'cristohealth00@hospital.com');

insert into Proveedor(id_proveedor, nombre_empresa, contacto_telefono, direccion, email_proveedor)
values(3, 'Hospital General La Trinidad', '5577883902', 'Bulevar Emiliano Zapata, Gustavo A Madero', 'trinidadunida20@hospital.com');

insert into Proveedor(id_proveedor, nombre_empresa, contacto_telefono, direccion, email_proveedor)
values(4, 'Hospital Buenavista', '5590316611', 'Sur 116 S/N, Venustiano Carranza', 'saludbuenavista10@hospital.com');

insert into Proveedor(id_proveedor, nombre_empresa, contacto_telefono, direccion, email_proveedor)
values(5, 'Hospital General Dr. Najera', '5553412394', 'Calle Ruiz Cortines, Del. Alvaro Obregon', 'generalnajera66@hospital.com');


SELECT * FROM Paciente;
SELECT * FROM Doctor;
SELECT * FROM Cita;
SELECT * FROM Consulta;
SELECT * FROM Medicamento;
SELECT * FROM Prescripcion;
SELECT * FROM Habitacion;
SELECT * FROM Cirugia;
SELECT * FROM Factura;
SELECT * FROM Proveedor;

UPDATE Medicamento SET stock_actual= stock_actual + 30 WHERE laboratorio = 'Sanofi';
UPDATE Habitacion SET estatus = 'OCUPADO' WHERE piso = 4;
UPDATE Paciente SET email_paciente = 'msoto@correo.com.' WHERE id_paciente = 3;
UPDATE Cirugia SET tipo_cirugia = 'Cirugía cardiovascular' WHERE id_paciente = 1;
UPDATE Cirugia SET duracion_minutos = duracion_minutos + 15 WHERE id_doctor = 6;

--SECCIÓN 3

--LÓGICOS (AND, OR, NOT)
SELECT * FROM Paciente WHERE tipo_sangre = 'O+' AND direccion LIKE '%CDMX%';
SELECT * FROM Doctor WHERE especialidad IN ('Cardiologia', 'Neurologia');
SELECT * FROM Cirugia WHERE tipo_cirugia != 'Apendicectomía';
SELECT * FROM Habitacion WHERE tipo = 'Individual' AND (piso = 1 OR piso = 2);
SELECT * FROM Medicamento WHERE stock_actual < 100 OR laboratorio = 'Genfar';

--ARITMÉTICOS
SELECT nombre, stock_actual, stock_actual + 10 AS Stock_mas_10 FROM Medicamento;
SELECT id_factura, monto_total, monto_Total * 1.16 AS Monto_Con_Iva FROM Factura;
SELECT id_cirugia, duracion_minutos + 5 AS Duracion_Mas_5 FROM Cirugia;
SELECT id_prescripcion, duracion_dias * 24 AS Duracion_Horas FROM Prescripcion;
SELECT id_factura, monto_total, monto_total * 0.90 AS Total_Con_Descuento FROM Factura;

--BETWEEN
SELECT * FROM Factura WHERE monto_total BETWEEN 2000 AND 7000;
SELECT * FROM Medicamento WHERE stock_actual BETWEEN 50 AND 300;
SELECT * FROM Cirugia WHERE fecha BETWEEN TO_DATE('2025-07-01', 'YYYY-MM-DD') AND TO_DATE('2025-07-31', 'YYYY-MM-DD');

--LIKE
SELECT * FROM Paciente WHERE nombre LIKE 'J%';
SELECT * FROM Doctor WHERE apellido_paterno LIKE '%z';
SELECT * FROM Cirugia WHERE tipo_cirugia LIKE '%Cardí%';

--IS NULL
SELECT * FROM Cita WHERE observaciones IS NULL;
SELECT * FROM Prescripcion WHERE dosis IS NULL;
 

