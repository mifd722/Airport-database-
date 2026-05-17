 CREATE DATABASE airport_management;

USE airport_management; 
CREATE TABLE Airline (
    airline_id INT PRIMARY KEY AUTO_INCREMENT,
    airline_name VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE Plane_Model (
    model_id INT PRIMARY KEY AUTO_INCREMENT,
    model_name VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    max_range INT CHECK (max_range > 0)
);


CREATE TABLE Airplane (
    plane_id INT PRIMARY KEY AUTO_INCREMENT,
    plane_no VARCHAR(20) NOT NULL UNIQUE,
    model_id INT NOT NULL,
    airline_id INT NOT NULL,
    capacity INT CHECK (capacity > 0),
    manufacture_year YEAR,
    status VARCHAR(50) DEFAULT 'Active',

    FOREIGN KEY (model_id)
        REFERENCES Plane_Model(model_id),

    FOREIGN KEY (airline_id)
        REFERENCES Airline(airline_id)
);

CREATE TABLE Hangar (
    hangar_id INT PRIMARY KEY AUTO_INCREMENT,
    hangar_no VARCHAR(20) NOT NULL UNIQUE,
    location VARCHAR(100),
    capacity INT CHECK (capacity > 0)
);

CREATE TABLE Airplane_Hangar_History (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    plane_id INT NOT NULL,
    hangar_id INT NOT NULL,
    in_datetime DATETIME NOT NULL,
    out_datetime DATETIME,

    FOREIGN KEY (plane_id)
        REFERENCES Airplane(plane_id),

    FOREIGN KEY (hangar_id)
        REFERENCES Hangar(hangar_id)
);

CREATE TABLE Employee (
    ssn VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    salary DECIMAL(10,2),
    union_membership_no VARCHAR(50) UNIQUE,
    hire_date DATE
);

CREATE TABLE Technician (
    technician_id INT PRIMARY KEY AUTO_INCREMENT,
    ssn VARCHAR(20) UNIQUE,
    specialization_level VARCHAR(50),

    FOREIGN KEY (ssn)
        REFERENCES Employee(ssn)
);

CREATE TABLE Traffic_Controller (
    controller_id INT PRIMARY KEY AUTO_INCREMENT,
    ssn VARCHAR(20) UNIQUE,
    recent_medical_exam DATE,

    FOREIGN KEY (ssn)
        REFERENCES Employee(ssn)
);

CREATE TABLE Test (
    test_id INT PRIMARY KEY AUTO_INCREMENT,
    test_name VARCHAR(100) NOT NULL,
    max_score INT,
    frequency_days INT
);

CREATE TABLE Test_Event (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    plane_id INT NOT NULL,
    technician_id INT NOT NULL,
    test_id INT NOT NULL,
    test_date DATE,
    hours_spent DECIMAL(5,2),
    score INT,

    FOREIGN KEY (plane_id)
        REFERENCES Airplane(plane_id),

    FOREIGN KEY (technician_id)
        REFERENCES Technician(technician_id),

    FOREIGN KEY (test_id)
        REFERENCES Test(test_id)
);

CREATE TABLE Technician_Expertise (
    technician_id INT,
    model_id INT,

    PRIMARY KEY (technician_id, model_id),

    FOREIGN KEY (technician_id)
        REFERENCES Technician(technician_id),

    FOREIGN KEY (model_id)
        REFERENCES Plane_Model(model_id)
);

CREATE TABLE Flight (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    plane_id INT,
    departure_airport VARCHAR(100),
    destination_airport VARCHAR(100),
    departure_time DATETIME,
    arrival_time DATETIME,

    FOREIGN KEY (plane_id)
        REFERENCES Airplane(plane_id)
);
