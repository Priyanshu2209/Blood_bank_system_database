-- insert into Donors table
INSERT ALL
INTO Donors VALUES (0001, 'John', 'Pershing', TO_DATE('1860-09-13', 'YYYY-MM-DD'), 58, 'Male', 1234567890, 'john.pershing@example.com', 'O+', 'No known medical conditions')
INTO Donors VALUES (0002, 'Douglas', 'Haig', TO_DATE('1861-06-19', 'YYYY-MM-DD'), 57, 'Male', 2345678901, 'douglas.haig@example.com', 'A+', 'No known medical conditions')
INTO Donors VALUES (0003, 'Ferdinand', 'Foch', TO_DATE('1851-10-02', 'YYYY-MM-DD'), 67, 'Male', 3456789012, 'ferdinand.foch@example.com', 'B+', 'No known medical conditions')
INTO Donors VALUES (0004, 'Paul', 'von Hindenburg', TO_DATE('1847-10-02', 'YYYY-MM-DD'), 71, 'Male', 4567890123, 'paul.hindenburg@example.com', 'AB+', 'No known medical conditions')
INTO Donors VALUES (0005, 'Philippe', 'Petain', TO_DATE('1856-04-24', 'YYYY-MM-DD'), 62, 'Male', 5678901234, 'philippe.petain@example.com', 'O-', 'No known medical conditions')
INTO Donors VALUES (0006, 'Joseph', 'Joffre', TO_DATE('1852-01-12', 'YYYY-MM-DD'), 66, 'Male', 6789012345, 'joseph.joffre@example.com', 'A-', 'No known medical conditions')
INTO Donors VALUES (0007, 'Aleksandr', 'Samsonov', TO_DATE('1859-11-02', 'YYYY-MM-DD'), 59, 'Male', 7890123456, 'aleksandr.samsonov@example.com', 'B-', 'No known medical conditions')
INTO Donors VALUES (0008, 'Luigi', 'Cadorna', TO_DATE('1850-09-04', 'YYYY-MM-DD'), 68, 'Male', 8901234567, 'luigi.cadorna@example.com', 'AB-', 'No known medical conditions')
INTO Donors VALUES (0009, 'Maximilian', 'von Prittwitz', TO_DATE('1848-11-27', 'YYYY-MM-DD'), 70, 'Male', 9012345678, 'aximilian.prittwitz@example.com', 'O+', 'No known medical conditions')
INTO Donors VALUES (0010, 'Maurice', 'Sarrail', TO_DATE('1856-04-06', 'YYYY-MM-DD'), 62, 'Male', 1234509876, 'aurice.sarrail@example.com', 'A+', 'No known medical conditions')
INTO Donors VALUES (0011, 'Alfred', 'von Schlieffen', TO_DATE('1833-02-28', 'YYYY-MM-DD'), 85, 'Male', 2345610987, 'alfred.schlieffen@example.com', 'B+', 'No known medical conditions')
INTO Donors VALUES (0012, 'Arthur', 'Currie', TO_DATE('1875-12-05', 'YYYY-MM-DD'), 43, 'Male', 3456721098, 'arthur.currie@example.com', 'AB+', 'No known medical conditions')
INTO Donors VALUES (0013, 'Radomir', 'Putnik', TO_DATE('1847-01-24', 'YYYY-MM-DD'), 71, 'Male', 4567832109, 'radomir.putnik@example.com', 'O-', 'No known medical conditions')
INTO Donors VALUES (0014, 'Enver', 'Pasha', TO_DATE('1881-11-22', 'YYYY-MM-DD'), 37, 'Male', 5678943210, 'enver.pasha@example.com', 'A-', 'No known medical conditions')
INTO Donors VALUES (0015, 'Mustafa', 'Kemal', TO_DATE('1881-05-19', 'YYYY-MM-DD'), 37, 'Male', 6789054321, 'ustafa.kemal@example.com', 'B-', 'No known medical conditions')
INTO Donors VALUES (0016, 'Erich', 'Ludendorff', TO_DATE('1865-04-09', 'YYYY-MM-DD'), 53, 'Male', 7890165432, 'erich.ludendorff@example.com', 'AB-', 'No known medical conditions')
INTO Donors VALUES (0017, 'Conrad', 'von Hotzendorf', TO_DATE('1852-11-11', 'YYYY-MM-DD'), 66, 'Male', 8901276543, 'conrad.hotzendorf@example.com', 'O+', 'No known medical conditions')
INTO Donors VALUES (0018, 'Ivan', 'Zhilinsky', TO_DATE('1870-02-26', 'YYYY-MM-DD'), 48, 'Male', 8901276543, 'ivan.zhilinsky@example.com', 'O+', 'No known medical conditions')
INTO Donors VALUES (0019, 'Nikolai', 'Ivanov', TO_DATE('1855-07-03', 'YYYY-MM-DD'), 63, 'Male', 9012345678, 'nikolai.ivanov@example.com', 'A+', 'No known medical conditions')
INTO Donors VALUES (0020, 'Alexei', 'Brusilov', TO_DATE('1853-08-19', 'YYYY-MM-DD'), 65, 'Male', 1234509876, 'alexei.brusilov@example.com', 'B+', 'No known medical conditions')
select * from dual;

commit;


-- insert into branch table
INSERT ALL
INTO Branches VALUES (8801, 'Head Office', '123 Main St, New York', 10001, 1234567890, 'headoffice@example.com')
INTO Branches VALUES (8802, 'Downtown Branch', '456 Elm St, Chicago', 60601, 9876543210, 'downtown@example.com')
INTO Branches VALUES (8803, 'Uptown Branch', '789 Oak St, San Francisco', 94117, 5551234567, 'uptown@example.com')
INTO Branches VALUES (8804, 'Suburban Branch', '321 Maple St, Los Angeles', 90001, 8765432109, 'suburban@example.com')
INTO Branches VALUES (8805, 'Rural Branch', '901 Pine St, Houston', 77001, 3456789012, 'rural@example.com')
SELECT * FROM DUAL;

commit;


-- insert into employees table
INSERT ALL
INTO Employees VALUES (1001, 'John', 'Doe', 1234567890, 'john.doe@example.com', NULL, 8801,'Sr.Doctor',50000)
INTO Employees VALUES (1002, 'Jane', 'Smith', 9876543210, 'jane.smith@example.com', 1001, 8801,'Jr.Doctor',30000)
INTO Employees VALUES (1003, 'Bob', 'Johnson', 5551234567, 'bob.johnson@example.com', 1002, 8801,'nurse',15000)
INTO Employees VALUES (1004, 'Alice', 'Williams', 8765432109, 'alice.williams@example.com', 1002, 8802,'Jr.Doctor',25000)
INTO Employees VALUES (1005, 'Mike', 'Brown', 3456789012, 'ike.brown@example.com', 1002, 8802,'nurse',15000)
INTO Employees VALUES (1006, 'Emily', 'Davis', 5678901234, 'emily.davis@example.com', 1004, 8803,'nurse',12000)
INTO Employees VALUES (1007, 'Sarah', 'Miller', 9012345678, 'arah.miller@example.com', 1003, 8803,'nurse',10000)
INTO Employees VALUES (1008, 'Kevin', 'Wilson', 2345678901, 'kevin.wilson@example.com', 1004, 8804,'nurse',12500)
INTO Employees VALUES (1009, 'Lisa', 'Moore', 4567890123, 'lisa.moore@example.com', 1002, 8804,'nurse',15400)
INTO Employees VALUES (1010, 'Tom', 'Taylor', 7890123456, 'tom.taylor@example.com', 1004, 8805,'nurse',10500)
SELECT * FROM DUAL;

commit;


-- insert into Donation table
INSERT ALL
INTO Donation VALUES (0101, 0001, 1001, 8801, 200, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'))
INTO Donation VALUES (0202, 0002, 1002, 8801, 250, TO_DATE('2024-02-20', 'YYYY-MM-DD'), TO_DATE('2024-04-20', 'YYYY-MM-DD'))
INTO Donation VALUES (0303, 0003, 1003, 8801, 500, TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'))
INTO Donation VALUES (0404, 0004, 1004, 8802, 100, TO_DATE('2024-01-18', 'YYYY-MM-DD'), TO_DATE('2024-03-18', 'YYYY-MM-DD'))
INTO Donation VALUES (0505, 0005, 1005, 8802, 200, TO_DATE('2024-02-22', 'YYYY-MM-DD'), TO_DATE('2024-04-22', 'YYYY-MM-DD'))
INTO Donation VALUES (0606, 0006, 1006, 8803, 250, TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'))
INTO Donation VALUES (0707, 0007, 1007, 8803, 500, TO_DATE('2024-01-25', 'YYYY-MM-DD'), TO_DATE('2024-03-25', 'YYYY-MM-DD'))
INTO Donation VALUES (0808, 0008, 1008, 8804, 100, TO_DATE('2024-02-27', 'YYYY-MM-DD'), TO_DATE('2024-04-27', 'YYYY-MM-DD'))
INTO Donation VALUES (0909, 0009, 1009, 8804, 200, TO_DATE('2024-03-17', 'YYYY-MM-DD'), TO_DATE('2024-05-17', 'YYYY-MM-DD'))
INTO Donation VALUES (1010, 0010, 1010, 8805, 250, TO_DATE('2024-01-30', 'YYYY-MM-DD'), TO_DATE('2024-03-30', 'YYYY-MM-DD'))
INTO Donation VALUES (0111, 0011, 1001, 8801, 500, TO_DATE('2024-02-28', 'YYYY-MM-DD'), TO_DATE('2024-04-28', 'YYYY-MM-DD'))
INTO Donation VALUES (0212, 0012, 1002, 8801, 100, TO_DATE('2024-03-19', 'YYYY-MM-DD'), TO_DATE('2024-05-19', 'YYYY-MM-DD'))
INTO Donation VALUES (0313, 0013, 1003, 8801, 200, TO_DATE('2024-01-12', 'YYYY-MM-DD'), TO_DATE('2024-03-12', 'YYYY-MM-DD'))
INTO Donation VALUES (0414, 0014, 1004, 8802, 250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-04-15', 'YYYY-MM-DD'))
INTO Donation VALUES (0515, 0015, 1005, 8802, 500, TO_DATE('2024-03-22', 'YYYY-MM-DD'), TO_DATE('2024-05-22', 'YYYY-MM-DD'))
INTO Donation VALUES (0616, 0016, 1006, 8803, 100, TO_DATE('2024-01-18', 'YYYY-MM-DD'), TO_DATE('2024-03-18', 'YYYY-MM-DD'))
INTO Donation VALUES (0717, 0017, 1007, 8803, 200, TO_DATE('2024-02-20', 'YYYY-MM-DD'), TO_DATE('2024-04-20', 'YYYY-MM-DD'))
INTO Donation VALUES (0818, 0018, 1008, 8804, 250, TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'))
INTO Donation VALUES (0919, 0019, 1009, 8804, 500, TO_DATE('2024-01-25', 'YYYY-MM-DD'), TO_DATE('2024-03-25', 'YYYY-MM-DD'))
INTO Donation VALUES (1020, 0020, 1010, 8805, 100, TO_DATE('2024-02-27', 'YYYY-MM-DD'), TO_DATE('2024-04-27', 'YYYY-MM-DD'))
INTO Donation VALUES (0121, 0001, 1001, 8801, 200, TO_DATE('2024-03-12', 'YYYY-MM-DD'), TO_DATE('2024-05-12', 'YYYY-MM-DD'))
INTO Donation VALUES (0222, 0002, 1002, 8801, 250, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'))
INTO Donation VALUES (0323, 0003, 1003, 8801, 500, TO_DATE('2024-02-20', 'YYYY-MM-DD'), TO_DATE('2024-04-20', 'YYYY-MM-DD'))
INTO Donation VALUES (0424, 0004, 1004, 8802, 100, TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'))
INTO Donation VALUES (0525, 0005, 1005, 8802, 200, TO_DATE('2024-01-18', 'YYYY-MM-DD'), TO_DATE('2024-03-18', 'YYYY-MM-DD'))
INTO Donation VALUES (0626, 0006, 1006, 8803, 250, TO_DATE('2024-02-22', 'YYYY-MM-DD'), TO_DATE('2024-04-22', 'YYYY-MM-DD'))
INTO Donation VALUES (0727, 0007, 1007, 8803, 500, TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'))
INTO Donation VALUES (0828, 0008, 1008, 8804, 100, TO_DATE('2024-01-25', 'YYYY-MM-DD'), TO_DATE('2024-03-25', 'YYYY-MM-DD'))
INTO Donation VALUES (0929, 0009, 1009, 8804, 200, TO_DATE('2024-02-27', 'YYYY-MM-DD'), TO_DATE('2024-04-27', 'YYYY-MM-DD'))
INTO Donation VALUES (1030, 0010, 1010, 8805, 250, TO_DATE('2024-03-17', 'YYYY-MM-DD'), TO_DATE('2024-05-17', 'YYYY-MM-DD'))
INTO Donation VALUES (0131, 0011, 1001, 8801, 500, TO_DATE('2024-01-30', 'YYYY-MM-DD'), TO_DATE('2024-03-30', 'YYYY-MM-DD'))
INTO Donation VALUES (0232, 0012, 1002, 8801, 100, TO_DATE('2024-02-28', 'YYYY-MM-DD'), TO_DATE('2024-04-28', 'YYYY-MM-DD'))
INTO Donation VALUES (0333, 0013, 1003, 8801, 200, TO_DATE('2024-03-19', 'YYYY-MM-DD'), TO_DATE('2024-05-19', 'YYYY-MM-DD'))
INTO Donation VALUES (0434, 0014, 1004, 8802, 250, TO_DATE('2024-01-12', 'YYYY-MM-DD'), TO_DATE('2024-03-12', 'YYYY-MM-DD'))
INTO Donation VALUES (0535, 0015, 1005, 8802, 500, TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-04-15', 'YYYY-MM-DD'))
SELECT * FROM DUAL;

commit;


--insert into Hospitals table

INSERT ALL
INTO Hospitals VALUES (6001, 'General Hospital', '123 Health St', 10001, 1234567890, 'general@example.com')
INTO Hospitals VALUES (6002, 'City Hospital', '456 Wellness Ave', 60601, 2345678901, 'city@example.com')
INTO Hospitals VALUES (6003, 'County Hospital', '789 Care Blvd', 94117, 3456789012, 'county@example.com')
INTO Hospitals VALUES (6004, 'Metro Hospital', '321 Recovery Rd', 90001, 4567890123, 'metro@example.com')
INTO Hospitals VALUES (6005, 'Regional Hospital', '654 Healing St', 77001, 5678901234, 'regional@example.com')
INTO Hospitals VALUES (6006, 'Community Hospital', '987 Treatment Ln', 30301, 6789012345, 'community@example.com')
INTO Hospitals VALUES (6007, 'St. Mary''s Hospital', '741 Compassion St', 80202, 7890123456, 'stmary@example.com')
INTO Hospitals VALUES (6008, 'St. John''s Hospital', '852 Charity Ave', 70112, 8901234567, 'stjohn@example.com')
INTO Hospitals VALUES (6009, 'Hope Hospital', '963 Support St', 60616, 9012345678, 'hope@example.com')
INTO Hospitals VALUES (6010, 'Faith Hospital', '147 Trust Blvd', 10013, 9123456789, 'faith@example.com')
SELECT * FROM DUAL;

commit;


--insert into orders table
INSERT ALL
INTO Orders VALUES (1501, 6001, 'Pending', TO_DATE('2024-01-10', 'YYYY-MM-DD'))
INTO Orders VALUES (1502, 6002, 'Approved', TO_DATE('2024-01-12', 'YYYY-MM-DD'))
INTO Orders VALUES (1503, 6003, 'Shipped', TO_DATE('2024-01-15', 'YYYY-MM-DD'))
INTO Orders VALUES (1504, 6004, 'Delivered', TO_DATE('2024-01-17', 'YYYY-MM-DD'))
INTO Orders VALUES (1505, 6005, 'Pending', TO_DATE('2024-01-20', 'YYYY-MM-DD'))
INTO Orders VALUES (1506, 6006, 'Approved', TO_DATE('2024-01-22', 'YYYY-MM-DD'))
INTO Orders VALUES (1507, 6007, 'Shipped', TO_DATE('2024-01-25', 'YYYY-MM-DD'))
INTO Orders VALUES (1508, 6008, 'Delivered', TO_DATE('2024-01-27', 'YYYY-MM-DD'))
INTO Orders VALUES (1509, 6009, 'Pending', TO_DATE('2024-01-30', 'YYYY-MM-DD'))
INTO Orders VALUES (1510, 6001, 'Approved', TO_DATE('2024-02-02', 'YYYY-MM-DD'))
INTO Orders VALUES (1511, 6010, 'Shipped', TO_DATE('2024-02-05', 'YYYY-MM-DD'))
INTO Orders VALUES (1512, 6002, 'Delivered', TO_DATE('2024-02-07', 'YYYY-MM-DD'))
INTO Orders VALUES (1513, 6004, 'Pending', TO_DATE('2024-02-10', 'YYYY-MM-DD'))
INTO Orders VALUES (1514, 6004, 'Approved', TO_DATE('2024-02-12', 'YYYY-MM-DD'))
INTO Orders VALUES (1515, 6001, 'Shipped', TO_DATE('2024-02-15', 'YYYY-MM-DD'))
INTO Orders VALUES (1516, 6006, 'Delivered', TO_DATE('2024-02-17', 'YYYY-MM-DD'))
INTO Orders VALUES (1517, 6007, 'Pending', TO_DATE('2024-02-20', 'YYYY-MM-DD'))
INTO Orders VALUES (1518, 6008, 'Approved', TO_DATE('2024-02-22', 'YYYY-MM-DD'))
INTO Orders VALUES (1519, 6009, 'Shipped', TO_DATE('2024-02-25', 'YYYY-MM-DD'))
INTO Orders VALUES (1520, 6010, 'Delivered', TO_DATE('2024-02-27', 'YYYY-MM-DD'))
INTO Orders VALUES (1521, 6005, 'Pending', TO_DATE('2024-03-01', 'YYYY-MM-DD'))
INTO Orders VALUES (1522, 6002, 'Approved', TO_DATE('2024-03-03', 'YYYY-MM-DD'))
INTO Orders VALUES (1523, 6003, 'Shipped', TO_DATE('2024-03-05', 'YYYY-MM-DD'))
INTO Orders VALUES (1524, 6004, 'Delivered', TO_DATE('2024-03-07', 'YYYY-MM-DD'))
INTO Orders VALUES (1525, 6001, 'Pending', TO_DATE('2024-03-10', 'YYYY-MM-DD'))
SELECT * FROM DUAL;

commit;


--insert into Order_details table
INSERT ALL
INTO Order_details VALUES (2501, 8801, 1501, 500, 'A+')
INTO Order_details VALUES (2502, 8802, 1502, 100, 'B+')
INTO Order_details VALUES (2503, 8803, 1503, 150, 'AB+')
INTO Order_details VALUES (2504, 8804, 1504, 200, 'O+')
INTO Order_details VALUES (2505, 8805, 1505, 250, 'A-')
INTO Order_details VALUES (2506, 8801, 1506, 500, 'B-')
INTO Order_details VALUES (2507, 8802, 1507, 100, 'AB-')
INTO Order_details VALUES (2508, 8803, 1508, 150, 'O-')
INTO Order_details VALUES (2509, 8804, 1509, 200, 'A+')
INTO Order_details VALUES (2510, 8805, 1510, 250, 'B+')
INTO Order_details VALUES (2511, 8801, 1511, 500, 'AB+')
INTO Order_details VALUES (2512, 8802, 1512, 100, 'O+')
INTO Order_details VALUES (2513, 8803, 1513, 150, 'A-')
INTO Order_details VALUES (2514, 8804, 1514, 200, 'B-')
INTO Order_details VALUES (2515, 8805, 1515, 250, 'AB-')
INTO Order_details VALUES (2516, 8801, 1516, 500, 'O-')
INTO Order_details VALUES (2517, 8802, 1517, 100, 'A+')
INTO Order_details VALUES (2518, 8803, 1518, 150, 'B+')
INTO Order_details VALUES (2519, 8804, 1519, 200, 'AB+')
INTO Order_details VALUES (2520, 8805, 1520, 250, 'O+')
INTO Order_details VALUES (2521, 8801, 1521, 500, 'A-')
INTO Order_details VALUES (2522, 8802, 1522, 100, 'B-')
INTO Order_details VALUES (2523, 8803, 1523, 150, 'AB-')
INTO Order_details VALUES (2524, 8804, 1524, 200, 'O-')
INTO Order_details VALUES (2525, 8805, 1525, 250, 'A+')
SELECT * FROM DUAL;

commit; 