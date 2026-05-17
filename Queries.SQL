
-- 1. SHOW ALL AIRPLANES
SELECT * FROM Airplane;

-- 2. TOTAL NUMBER OF AIRPLANES
SELECT COUNT(*) AS total_airplanes
FROM Airplane;

-- 3. AVERAGE AIRPLANE CAPACITY
SELECT AVG(capacity) AS average_capacity
FROM Airplane;

-- 4. HIGHEST TEST SCORE
SELECT MAX(score) AS highest_score
FROM Test_Event;

5. TOTAL HOURS SPENT TESTING
SELECT SUM(hours_spent) AS total_testing_hours
FROM Test_Event;

- 6. AIRPLANES CURRENTLY IN HANGARS
SELECT a.plane_no,h.hangar_no
FROM Airplane a
JOIN Airplane_Hangar_History ahh
ON a.plane_id = ahh.plane_id
JOIN Hangar h
ON ahh.hangar_id = h.hangar_id
WHERE ahh.out_datetime IS NULL;

-- 7. AIRPLANES WITH AIRLINE NAMES
SELECT a.plane_no,al.airline_name,a.capacity
FROM Airplane a
JOIN Airline al
ON a.airline_id = al.airline_id;

-- 8. TECHNICIANS AND THEIR EXPERTISE
SELECT t.technician_id, pm.model_name
FROM Technician_Expertise te
JOIN Technician t
ON te.technician_id = t.technician_id
JOIN Plane_Model pm
ON te.model_id = pm.model_id;

-- 9. CONTROLLERS NEEDING MEDICAL EXAM
SELECT *
FROM Traffic_Controller
WHERE recent_medical_exam <
CURDATE() - INTERVAL 1 YEAR;

-- 10. AIRPLANES UNDER MAINTENANCE
SELECT plane_no
FROM Airplane
WHERE status = 'Maintenance';

-- 11. TOTAL TESTS PER TECHNICIAN
SELECT technician_id, COUNT(*) AS total_tests
FROM Test_Event
GROUP BY technician_id;

-- 12. MONTHLY TEST STATISTICS
SELECT MONTH(test_date) AS month, COUNT(*) AS total_tests 
FROM Test_Event
GROUP BY MONTH(test_date);

-- 13. AVERAGE TEST SCORE
SELECT AVG(score) AS average_score FROM Test_Event;

-- 14. EMPLOYEES HIRED AFTER 2020
SELECT * FROM Employee WHERE hire_date > '2020-01-01';

-- 15. FLIGHT DESTINATIONS
SELECT departure_airport, destination_airport FROM Flight;

