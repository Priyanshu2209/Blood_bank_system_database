drop table Donation;
 drop table Donors; 
 drop table Employees;
 drop table Order_details;
 drop table Orders;
 drop table Hospitals;
 drop table Branches;

set autocommit on;

CREATE TABLE Donors
(
    d_id NUMBER(4) PRIMARY KEY,
    d_fname VARCHAR2(25) NOT NULL,
    d_lname VARCHAR2(25) NOT NULL,
    DOB DATE NOT NULL,
    age NUMBER(2) NOT NULL,
    gender VARCHAR2(15) NOT NULL,
    d_contact NUMBER(11) NOT NULL,
    d_email VARCHAR2(50) NOT NULL,
    d_bloodtype VARCHAR2(25) NOT NULL,
    Medical_description VARCHAR2(200) NOT NULL
);


CREATE TABLE Branches
(
    b_id NUMBER(4) PRIMARY KEY,
    b_name VARCHAR2(100) NOT NULL,
    b_address VARCHAR2(100) NOT NULL,
    pin NUMBER(6),
    b_contact NUMBER(11) NOT NULL,
    b_email VARCHAR2(50) NOT NULL
);


CREATE TABLE Employees
(
    e_id NUMBER(4) PRIMARY KEY,
    e_fname VARCHAR2(25) NOT NULL,
    e_lname VARCHAR2(25) NOT NULL,
    e_contact NUMBER(11) NOT NULL,
    e_email VARCHAR2(50) NOT NULL,
    reportTo NUMBER(4),
    b_id NUMBER(4),
    position varchar(30),
    salary number(10,2),
    CONSTRAINT fk_employee_report FOREIGN KEY (reportTo) REFERENCES Employees (e_id),
    CONSTRAINT fk_employee_branch FOREIGN KEY (b_id) REFERENCES Branches (b_id)
);

CREATE TABLE Donation
(
    don_id NUMBER(4) PRIMARY KEY,
    d_id NUMBER(4) NOT NULL,
    e_id NUMBER(4) NOT NULL,
    b_id NUMBER(4) NOT NULL,
    bloodAmount NUMBER(4) NOT NULL,
    donation_date DATE NOT NULL,
    expire_date DATE NOT NULL,
    CONSTRAINT fk_donation_donor FOREIGN KEY (d_id) REFERENCES Donors (d_id),
    CONSTRAINT fk_donation_employee FOREIGN KEY (e_id) REFERENCES Employees (e_id),
    CONSTRAINT fk_donation_branch FOREIGN KEY (b_id) REFERENCES Branches (b_id)
);


CREATE TABLE Hospitals
(
    h_id NUMBER(4) PRIMARY KEY,
    h_name VARCHAR2(25) NOT NULL,
    h_address VARCHAR2(25) NOT NULL,
    pin number(6),
    h_contact NUMBER(11) NOT NULL,
    h_email varchar2(50) 
);


CREATE TABLE Orders
(
    o_id NUMBER(4) PRIMARY KEY,
    h_id NUMBER(4) NOT NULL,
    status VARCHAR2(50) NOT NULL,
    requested_date DATE NOT NULL,
    CONSTRAINT fk_order_hospital FOREIGN KEY (h_id) REFERENCES Hospitals (h_id)
);

CREATE TABLE Order_details
(
    od_id NUMBER(4) PRIMARY KEY,
    b_id NUMBER(4) NOT NULL,
    o_id NUMBER(4) NOT NULL,
    quantity NUMBER(4) NOT NULL,
    bloodType VARCHAR2(4) NOT NULL,
    CONSTRAINT fk_orderdetails_branch FOREIGN KEY (b_id) REFERENCES Branches (b_id),
    CONSTRAINT fk_orderdetails_order FOREIGN KEY (o_id) REFERENCES Orders (o_id)
);