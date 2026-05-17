
INSERT INTO Airline (airline_name, country)
VALUES
('Turkish Airlines', 'Turkey'),
('Pegasus Airlines', 'Turkey'),
('Qatar Airways', 'Qatar'),
('Lufthansa', 'Germany');

INSERT INTO Plane_Model
(model_name, manufacturer, max_range)
VALUES
('Boeing 737', 'Boeing', 5600),
('Airbus A320', 'Airbus', 6100),
('Boeing 777', 'Boeing', 15600),
('Airbus A350', 'Airbus', 15000);

INSERT INTO Airplane
(plane_no, model_id, airline_id,
 capacity, manufacture_year, status)
VALUES
('TC-100', 1, 1, 180, 2018, 'Active'),
('TC-101', 2, 2, 200, 2020, 'Active'),
('QT-500', 3, 3, 350, 2019, 'Maintenance'),
('LH-777', 4, 4, 320, 2021, 'Active');

INSERT INTO Hangar
(hangar_no, location, capacity)
VALUES
('H1', 'North Zone', 5),
('H2', 'South Zone', 7),
('H3', 'East Zone', 4);

INSERT INTO Airplane_Hangar_History
(plane_id, hangar_id, in_datetime, out_datetime)
VALUES
(1, 1, '2026-05-01 08:00:00', NULL),
(2, 2, '2026-05-02 10:00:00', NULL),
(3, 3, '2026-05-03 12:00:00', '2026-05-05 14:00:00');


INSERT INTO Employee
(ssn, first_name, last_name, phone,
 salary, union_membership_no, hire_date)
VALUES
('1001', 'Ali', 'Demir', '5551111', 6000, 'UN001', '2020-01-10'),
('1002', 'Ayse', 'Kara', '5552222', 7500, 'UN002', '2019-03-15'),
('1003', 'John', 'Smith', '5553333', 8000, 'UN003', '2021-06-20'),
('1004', 'Maria', 'Lopez', '5554444', 7200, 'UN004', '2018-09-11'),
('1005', 'Omar', 'Hassan', '5555555', 6700, 'UN005', '2022-02-01');

INSERT INTO Technician
(ssn, specialization_level)
VALUES
('1001', 'Senior'),
('1003', 'Intermediate'),
('1005', 'Expert');

INSERT INTO Traffic_Controller
(ssn, recent_medical_exam)
VALUES
('1002', '2026-01-10'),
('1004', '2025-11-20');


INSERT INTO Test
(test_name, max_score, frequency_days)
VALUES
('Engine Inspection', 100, 180),
('Safety Inspection', 100, 365),
('Electrical Systems Test', 100, 90),
('Hydraulic Test', 100, 120);


INSERT INTO Test_Event
(plane_id, technician_id, test_id,
 test_date, hours_spent, score)
VALUES
(1, 1, 1, '2026-05-01', 5.5, 92),
(1, 1, 2, '2026-05-02', 4.0, 88),
(2, 2, 1, '2026-05-03', 6.0, 95),
(3, 3, 3, '2026-05-04', 3.5, 90),
(4, 1, 4, '2026-05-05', 7.0, 97);

INSERT INTO Technician_Expertise
(technician_id, model_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

INSERT INTO Flight
(plane_id, departure_airport,
 destination_airport,
 departure_time, arrival_time)
VALUES
(1, 'Ercan Airport', 'Istanbul Airport',
'2026-05-10 08:00:00',
'2026-05-10 10:00:00'),

(2, 'Ercan Airport', 'Doha Airport',
'2026-05-11 09:00:00',
'2026-05-11 13:00:00'),

(3, 'Ercan Airport', 'Berlin Airport',
'2026-05-12 07:00:00',
'2026-05-12 12:00:00');



