set autocommit on;


-- display senior employees' first name
select e.e_id,e.e_fname ||' '|| e.e_lname as Fullname, e.reportto, m.e_fname,m.position from employees e join employees m on e.reportto= m.e_id;

-- display employee name who does not report to any senior employee
select e.e_id,e.e_fname ||' '|| e.e_lname as Fullname from employees e left join employees m on e.reportto= m.e_id where e.reportto is null;

-- create view which shows list the donors along with branch and who attended that donor
CREATE VIEW Donor_Details AS
SELECT 
    d.d_id, 
    d.d_fname, 
    d.d_lname, 
    d.DOB, 
    d.age, 
    d.gender, 
    d.d_contact, 
    d.d_email, 
    d.d_bloodtype, 
    d.Medical_description, 
    b.b_name, 
    e.e_fname || ' ' || e.e_lname AS employee_name,
    don.donation_date
FROM 
    Donors d
JOIN Donation don ON d.d_id = don.d_id
JOIN Employees e ON don.e_id = e.e_id
JOIN Branches b ON don.b_id = b.b_id;

SELECT * FROM Donor_Details;

--latest donation handeled by which employee
SELECT 
    d.d_id, 
    d.d_fname, 
    d.d_lname, 
    d.DOB, 
    d.age, 
    d.gender,  
    d.d_bloodtype,  
    e.e_fname || ' ' || e.e_lname AS employee_name,
    don.donation_date
FROM 
    Donors d
JOIN Donation don ON d.d_id = don.d_id
JOIN Employees e ON don.e_id = e.e_id
JOIN Branches b ON don.b_id = b.b_id
WHERE don.donation_date = (SELECT MAX(donation_date) FROM Donation d2 WHERE d2.d_id = d.d_id);

-- Get the total amount of blood donated by each donor
SELECT 
    d.d_id, 
    d.d_fname, 
    d.d_lname, 
    SUM(don.bloodAmount) AS total_blood_amount
FROM 
    Donors d
JOIN Donation don ON d.d_id = don.d_id
GROUP BY d.d_id, d.d_fname, d.d_lname;

-- create a view which shows the List all orders along with the hospital name, branch name, and order status.
CREATE  VIEW Order_info AS
SELECT 
    o.o_id, 
    h.h_name, 
    b.b_name, 
    o.status, 
    o.requested_date
FROM 
    Orders o
JOIN Hospitals h ON o.h_id = h.h_id
JOIN Order_details od ON o.o_id = od.o_id
JOIN Branches b ON od.b_id = b.b_id;

--drop view Order_info;
SELECT * FROM Order_info;

--Find the total quantity of each blood type requested by hospitals.

SELECT 
    od.bloodType, 
    SUM(od.quantity) AS total_quantity
FROM 
    Order_details od
GROUP BY od.bloodType
having SUM(od.quantity) > 1000;


--Get the contact details of all employees who work at a specific branch
CREATE VIEW Branch_Employee_Contacts AS
SELECT 
    e.e_id, 
    e.e_fname, 
    e.e_lname, 
    e.e_contact, 
    e.e_email, 
    b.b_name
FROM 
    Employees e
JOIN Branches b ON e.b_id = b.b_id;

SELECT * FROM Branch_Employee_Contacts WHERE b_name = 'Downtown Branch';


--Find the average amount of blood donated by each blood type
SELECT 
    d.d_bloodtype, 
    AVG(don.bloodAmount) AS avg_blood_amount
FROM 
    Donors d
JOIN Donation don ON d.d_id = don.d_id
GROUP BY d.d_bloodtype;

--Get the number of donations made by each branch.

SELECT 
    b.b_name, 
    COUNT(don.don_id) AS num_donations
FROM 
    Branches b
JOIN Donation don ON b.b_id = don.b_id
GROUP BY b.b_name;

--List the number of orders placed by each hospital.
SELECT 
    h.h_name, 
    COUNT(o.o_id) AS num_orders
FROM 
    Hospitals h
JOIN Orders o ON h.h_id = o.h_id
GROUP BY h.h_name;

--Find the number of donors for each blood type
SELECT 
    d.d_bloodtype, 
    COUNT(d.d_id) AS num_donors
FROM 
    Donors d
GROUP BY d.d_bloodtype;


--update the contact number of a donor with ID 1001
UPDATE Donors 
SET d_contact = 9876543210 
WHERE d_id = 1001;

--rename the DOB column to Date_of_Birth in the Donors table
ALTER TABLE Donors 
RENAME COLUMN DOB TO Date_of_Birth;







