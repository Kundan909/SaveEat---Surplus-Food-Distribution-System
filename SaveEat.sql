create database SaveEat;
use SaveEat;
-- 1. Food_Category: Types of food
CREATE TABLE Food_Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);
INSERT INTO Food_Category (category_id, category_name) VALUES
(1, 'Cooked Meals'),
(2, 'Bakery Items'),
(3, 'Fruits'),
(4, 'Vegetables'),
(5, 'Dairy Products'),
(6, 'Snacks'),
(7, 'Packaged Foods'),
(8, 'Beverages'),
(9, 'Frozen Items'),
(10, 'Grains & Pulses'),
(11, 'Sweets'),
(12, 'Breads'),
(13, 'Juices'),
(14, 'Ready-to-eat'),
(15, 'Dry Fruits'),
(16, 'Rice Items'),
(17, 'Non-Veg Items'),
(18, 'Salads'),
(19, 'Sauces & Dips'),
(20, 'Canned Foods');


-- 2. Vendor: Restaurants or food providers
CREATE TABLE Vendor (
    vendor_id INT PRIMARY KEY,
    vendor_name VARCHAR(100),
    contact_person VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50)
);
INSERT INTO Vendor (vendor_id, vendor_name, contact_person, phone, email, city, state) VALUES
(1, 'Hotel Taj', 'Raj Malhotra', '9876543210', 'raj@tajhotels.com', 'Mumbai', 'Maharashtra'),
(2, 'Domino’s Pizza', 'Meera Sharma', '9845612345', 'meera@dominos.in', 'Pune', 'Maharashtra'),
(3, 'Burger King', 'Ravi Kumar', '9812345678', 'ravi@bk.com', 'Delhi', 'Delhi'),
(4, 'Barbeque Nation', 'Priya Jain', '9823456789', 'priya@bbqnation.in', 'Bangalore', 'Karnataka'),
(5, 'Haldiram’s', 'Amit Tiwari', '9867543210', 'amit@haldiram.com', 'Nagpur', 'Maharashtra'),
(6, 'Marriott Hotel', 'Sunita Deshmukh', '9811122233', 'sunita@marriott.com', 'Mumbai', 'Maharashtra'),
(7, 'The Leela', 'Dev Patel', '9898989898', 'dev@leela.com', 'Chennai', 'Tamil Nadu'),
(8, 'Food Express', 'Anita Kapoor', '9776677885', 'anita@foodexpress.in', 'Kolkata', 'West Bengal'),
(9, 'Biryani Blues', 'Mohd. Salman', '9667788990', 'salman@biryani.com', 'Hyderabad', 'Telangana'),
(10, 'Hotel Oberoi', 'Nidhi Verma', '9955443322', 'nidhi@oberoi.com', 'Delhi', 'Delhi'),
(11, 'Wow! Momo', 'Vikram Singh', '9876078901', 'vikram@wowmomo.in', 'Ranchi', 'Jharkhand'),
(12, 'Starbucks India', 'Neha Batra', '9800112233', 'neha@starbucks.in', 'Gurgaon', 'Haryana'),
(13, 'Food Court Central', 'Manoj Yadav', '9123456789', 'manoj@fcc.in', 'Bhopal', 'Madhya Pradesh'),
(14, 'Pizza Hut', 'Pallavi Thakur', '9223344556', 'pallavi@pizzahut.in', 'Ahmedabad', 'Gujarat'),
(15, 'Tiffin Service', 'Dinesh Mehta', '9822233445', 'dinesh@tiffinwala.in', 'Nashik', 'Maharashtra'),
(16, 'Cafe Coffee Day', 'Sneha Iyer', '9898123456', 'sneha@ccd.in', 'Bangalore', 'Karnataka'),
(17, 'Subway India', 'Jitesh Rana', '9988776655', 'jitesh@subway.in', 'Mumbai', 'Maharashtra'),
(18, 'The Food Studio', 'Farah Qureshi', '9765432109', 'farah@tfs.in', 'Lucknow', 'Uttar Pradesh'),
(19, 'Green Bowl', 'Kritika Sen', '9811223344', 'kritika@greenbowl.in', 'Jaipur', 'Rajasthan'),
(20, 'Namaste India Foods', 'Deepak Chauhan', '9876567890', 'deepak@namastefoods.in', 'Patna', 'Bihar');

-- 3. NGO: Food receivers
CREATE TABLE NGO (
    ngo_id INT PRIMARY KEY,
    ngo_name VARCHAR(100),
    contact_person VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50)
);
INSERT INTO NGO (ngo_id, ngo_name, contact_person, phone, email, city, state) VALUES
(1, 'Feeding India', 'Rohit Khanna', '9990011223', 'rohit@feedingindia.org', 'Delhi', 'Delhi'),
(2, 'Robin Hood Army', 'Anjali Singh', '9988776655', 'anjali@robinhoodarmy.com', 'Mumbai', 'Maharashtra'),
(3, 'Goonj', 'Sandeep Kapoor', '9876543210', 'sandeep@goonj.org', 'Noida', 'Uttar Pradesh'),
(4, 'Akshaya Patra', 'Meghna Rathi', '9845612345', 'meghna@akshayapatra.org', 'Bangalore', 'Karnataka'),
(5, 'Roti Bank', 'Ajay Verma', '9812345678', 'ajay@rotibank.org', 'Nagpur', 'Maharashtra'),
(6, 'Uday Foundation', 'Poonam Das', '9867543210', 'poonam@udayfoundation.org', 'Delhi', 'Delhi'),
(7, 'Give India', 'Harsh Agarwal', '9811122233', 'harsh@giveindia.org', 'Mumbai', 'Maharashtra'),
(8, 'Seva Bharti', 'Ritu Nair', '9898989898', 'ritu@sevabharti.org', 'Chennai', 'Tamil Nadu'),
(9, 'Smile Foundation', 'Raj Joshi', '9776677885', 'raj@smilefoundation.in', 'Ahmedabad', 'Gujarat'),
(10, 'Food for Life', 'Ashok Pradhan', '9667788990', 'ashok@ffl.in', 'Hyderabad', 'Telangana'),
(11, 'Save the Hunger', 'Richa Sharma', '9955443322', 'richa@savethehunger.in', 'Bhopal', 'Madhya Pradesh'),
(12, 'Jan Aahar', 'Manish Rao', '9876078901', 'manish@janaahar.org', 'Kolkata', 'West Bengal'),
(13, 'Mission Anna', 'Sarita Jha', '9800112233', 'sarita@missionanna.in', 'Patna', 'Bihar'),
(14, 'Hope India', 'Yogesh Soni', '9123456789', 'yogesh@hopeindia.in', 'Ranchi', 'Jharkhand'),
(15, 'Helping Hands', 'Priya Bansal', '9223344556', 'priya@helpinghands.in', 'Gurgaon', 'Haryana'),
(16, 'Sahyog Trust', 'Neeraj Bhatia', '9822233445', 'neeraj@sahyogtrust.org', 'Indore', 'Madhya Pradesh'),
(17, 'Food Lifeline', 'Namita Chawla', '9898123456', 'namita@foodlifeline.in', 'Chandigarh', 'Punjab'),
(18, 'Annadaan NGO', 'Pritam Singh', '9988776655', 'pritam@annadaan.in', 'Raipur', 'Chhattisgarh'),
(19, 'Care India', 'Devika Pandey', '9765432109', 'devika@careindia.org', 'Lucknow', 'Uttar Pradesh'),
(20, 'Nourish Foundation', 'Rahul Dube', '9811223344', 'rahul@nourishfoundation.in', 'Jaipur', 'Rajasthan');


-- 4. Donation: Records of food donations
CREATE TABLE Donation (
    donation_id INT PRIMARY KEY,
    vendor_id INT,
    ngo_id INT,
    category_id INT,
    quantity_kg DECIMAL(10,2),
    donation_date DATE,
    status VARCHAR(20),  -- e.g., Pending, Accepted, Delivered, Rejected
    remarks TEXT,
    FOREIGN KEY (vendor_id) REFERENCES Vendor(vendor_id),
    FOREIGN KEY (ngo_id) REFERENCES NGO(ngo_id),
    FOREIGN KEY (category_id) REFERENCES Food_Category(category_id)
);
INSERT INTO Donation (donation_id, vendor_id, category_id, food_description, quantity_kg, pickup_time, status) VALUES
(1, 1, 1, 'Paneer Butter Masala and Rice', 15.0, '2025-07-08 14:30:00', 'Scheduled'),
(2, 2, 2, 'Leftover Garlic Bread and Pizza', 8.0, '2025-07-08 12:00:00', 'Picked'),
(3, 3, 6, 'Unused burger buns and fries', 10.0, '2025-07-08 18:00:00', 'Scheduled'),
(4, 4, 1, 'Excess Chicken Biryani', 20.0, '2025-07-08 16:00:00', 'Delivered'),
(5, 5, 5, 'Packaged lassi and paneer', 12.0, '2025-07-08 15:45:00', 'Scheduled'),
(6, 6, 3, 'Fresh cut fruits', 9.5, '2025-07-08 13:00:00', 'Pending'),
(7, 7, 4, 'Vegetable curry and chapati', 14.0, '2025-07-08 11:30:00', 'Delivered'),
(8, 8, 7, 'Packaged ready-to-eat meals', 17.5, '2025-07-08 10:00:00', 'Picked'),
(9, 9, 1, 'Leftover Hyderabadi Biryani', 25.0, '2025-07-08 19:30:00', 'Delivered'),
(10, 10, 6, 'Snacks and soft drinks', 13.0, '2025-07-08 17:15:00', 'Pending'),
(11, 11, 2, 'Veg momos and chutney', 7.0, '2025-07-08 09:45:00', 'Scheduled'),
(12, 12, 13, 'Cold coffee and sandwich packs', 10.0, '2025-07-08 11:00:00', 'Scheduled'),
(13, 13, 8, 'Juices and beverages', 18.0, '2025-07-08 12:15:00', 'Delivered'),
(14, 14, 1, 'Vegetarian pizza slices', 16.0, '2025-07-08 14:00:00', 'Scheduled'),
(15, 15, 4, 'Dry sabzi with rice', 6.0, '2025-07-08 10:30:00', 'Delivered'),
(16, 16, 6, 'Chips and cookies', 5.5, '2025-07-08 09:30:00', 'Picked'),
(17, 17, 1, 'Sandwiches and salads', 13.0, '2025-07-08 18:45:00', 'Scheduled'),
(18, 18, 10, 'Wheat grains and dal packs', 19.0, '2025-07-08 20:00:00', 'Delivered'),
(19, 19, 3, 'Excess apples and bananas', 8.0, '2025-07-08 13:30:00', 'Pending'),
(20, 20, 5, 'Milk packets and butter', 10.0, '2025-07-08 15:00:00', 'Scheduled');



-- 5. Delivery_Agent: Optional - handles delivery
CREATE TABLE Delivery_Agent (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    vehicle_number VARCHAR(20)
    );
INSERT INTO Delivery_Agent (agent_id, agent_name, phone, city, vehicle_number) VALUES
(1, 'Ramesh Kumar', '9876543210', 'Mumbai', 'MH01AB1234'),
(2, 'Suresh Yadav', '9812345678', 'Pune', 'MH12XY3456'),
(3, 'Anita Singh', '9845612345', 'Delhi', 'DL05QR6789'),
(4, 'Kavita Nair', '9823456789', 'Bangalore', 'KA01ZX1122'),
(5, 'Mohit Rana', '9867543210', 'Nagpur', 'MH31GH5678'),
(6, 'Prerna Joshi', '9811122233', 'Mumbai', 'MH02BN9012'),
(7, 'Rohit Mehta', '9898989898', 'Chennai', 'TN03ST4567'),
(8, 'Rita Paul', '9776677885', 'Kolkata', 'WB20DD9090'),
(9, 'Aman Verma', '9667788990', 'Hyderabad', 'TS11MK1010'),
(10, 'Deepika Thakur', '9955443322', 'Delhi', 'DL01YZ3344'),
(11, 'Nikhil Shetty', '9876078901', 'Bangalore', 'KA02HN5544'),
(12, 'Sneha Sharma', '9800112233', 'Lucknow', 'UP32WE8899'),
(13, 'Ajay Sinha', '9123456789', 'Patna', 'BR01RR1234'),
(14, 'Ravindra Iyer', '9223344556', 'Ahmedabad', 'GJ18PA0099'),
(15, 'Jyoti Saxena', '9822233445', 'Nashik', 'MH15JD2233'),
(16, 'Farhan Ali', '9898123456', 'Bhopal', 'MP09TR1122'),
(17, 'Jaya Roy', '9988776655', 'Ranchi', 'JH10YU6677'),
(18, 'Manoj Tripathi', '9765432109', 'Raipur', 'CG04AA9988'),
(19, 'Neeraj Verma', '9811223344', 'Jaipur', 'RJ14KL2233'),
(20, 'Aarti Gupta', '9876567890', 'Gurgaon', 'HR26MQ4567');



-- 6. Delivery: Links donations with delivery agents
CREATE TABLE Delivery (
    delivery_id INT PRIMARY KEY,
    donation_id INT,
    agent_id INT,
    pickup_time DATETIME,
    delivery_time DATETIME,
    status VARCHAR(20), -- e.g., Assigned, In Transit, Delivered
    FOREIGN KEY (donation_id) REFERENCES Donation(donation_id),
    FOREIGN KEY (agent_id) REFERENCES Delivery_Agent(agent_id)
);
INSERT INTO Delivery (delivery_id, donation_id, agent_id, ngo_id, delivery_time, status) VALUES
(1, 1, 1, 1, '2025-07-08 15:00:00', 'Delivered'),
(2, 2, 2, 2, '2025-07-08 12:45:00', 'Delivered'),
(3, 3, 3, 3, '2025-07-08 18:30:00', 'In Transit'),
(4, 4, 4, 4, '2025-07-08 16:45:00', 'Delivered'),
(5, 5, 5, 5, '2025-07-08 16:10:00', 'Pending'),
(6, 6, 6, 6, '2025-07-08 13:30:00', 'Delivered'),
(7, 7, 7, 7, '2025-07-08 12:00:00', 'Delivered'),
(8, 8, 8, 8, '2025-07-08 10:45:00', 'Delivered'),
(9, 9, 9, 9, '2025-07-08 20:00:00', 'In Transit'),
(10, 10, 10, 10, '2025-07-08 18:00:00', 'Delivered'),
(11, 11, 11, 11, '2025-07-08 10:30:00', 'Delivered'),
(12, 12, 12, 12, '2025-07-08 11:15:00', 'Delivered'),
(13, 13, 13, 13, '2025-07-08 13:00:00', 'Pending'),
(14, 14, 14, 14, '2025-07-08 14:30:00', 'Delivered'),
(15, 15, 15, 15, '2025-07-08 11:15:00', 'Pending'),
(16, 16, 16, 16, '2025-07-08 10:00:00', 'Delivered'),
(17, 17, 17, 17, '2025-07-08 19:00:00', 'In Transit'),
(18, 18, 18, 18, '2025-07-08 20:15:00', 'Delivered'),
(19, 19, 19, 19, '2025-07-08 14:00:00', 'Pending'),
(20, 20, 20, 20, '2025-07-08 16:30:00', 'Scheduled');



-- 7. Donation_Status_Log: Track status changes
CREATE TABLE Donation_Status_Log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    donation_id INT,
    status_before VARCHAR(20),
    status_after VARCHAR(20),
    changed_on DATETIME,
    remarks TEXT,
    FOREIGN KEY (donation_id) REFERENCES Donation(donation_id)
);
INSERT INTO Donation_Status_Log (log_id, donation_id, status_before, status_after, changed_on, remarks) VALUES
(1, 1, 'Pending', 'Scheduled', '2025-07-08 13:00:00', 'Donation scheduled for pickup'),
(2, 2, 'Scheduled', 'Picked', '2025-07-08 12:20:00', 'Picked by agent'),
(3, 3, 'Scheduled', 'In Transit', '2025-07-08 18:05:00', 'Agent en route'),
(4, 4, 'Picked', 'Delivered', '2025-07-08 16:40:00', 'Delivered successfully'),
(5, 5, 'Scheduled', 'Pending', '2025-07-08 16:00:00', 'Awaiting agent'),
(6, 6, 'Scheduled', 'Delivered', '2025-07-08 13:20:00', 'Direct drop'),
(7, 7, 'Scheduled', 'Delivered', '2025-07-08 12:15:00', 'Delivered on time'),
(8, 8, 'Picked', 'Delivered', '2025-07-08 10:50:00', 'On schedule'),
(9, 9, 'Scheduled', 'In Transit', '2025-07-08 19:45:00', 'Running late'),
(10, 10, 'Pending', 'Delivered', '2025-07-08 18:05:00', 'Successful'),
(11, 11, 'Scheduled', 'Delivered', '2025-07-08 10:50:00', 'Reached NGO'),
(12, 12, 'Scheduled', 'Delivered', '2025-07-08 11:10:00', 'No issues'),
(13, 13, 'Delivered', 'Pending', '2025-07-08 13:10:00', 'Clarification required'),
(14, 14, 'Scheduled', 'Delivered', '2025-07-08 14:20:00', 'Early delivery'),
(15, 15, 'Scheduled', 'Pending', '2025-07-08 11:00:00', 'Awaiting packaging'),
(16, 16, 'Picked', 'Delivered', '2025-07-08 10:30:00', 'Done'),
(17, 17, 'Scheduled', 'In Transit', '2025-07-08 18:50:00', 'En route'),
(18, 18, 'Scheduled', 'Delivered', '2025-07-08 20:10:00', 'Clean handoff'),
(19, 19, 'Scheduled', 'Pending', '2025-07-08 13:35:00', 'Pickup failed'),
(20, 20, 'Scheduled', 'Scheduled', '2025-07-08 15:00:00', 'Confirmed');


-- Total Quantity Donated by Each Vendor
SELECT v.vendor_name, SUM(d.quantity_kg) AS total_donated_kg
FROM Donation d
JOIN Vendor v ON d.vendor_id = v.vendor_id
GROUP BY v.vendor_name
ORDER BY total_donated_kg DESC;

-- Number of Donations by Food Category
SELECT fc.category_name, COUNT(*) AS total_donations
FROM Donation d
JOIN Food_Category fc ON d.category_id = fc.category_id
GROUP BY fc.category_name
ORDER BY total_donations DESC;

-- Donations Scheduled for Pickup Today
SELECT *
FROM Donation
WHERE DATE(pickup_time) = CURDATE()
  AND status = 'Scheduled';

-- Delivered Donations with NGO Details
SELECT d.donation_id, v.vendor_name, n.ngo_name, del.delivery_time
FROM Delivery del
JOIN Donation d ON del.donation_id = d.donation_id
JOIN Vendor v ON d.vendor_id = v.vendor_id
JOIN NGO n ON del.ngo_id = n.ngo_id
WHERE del.status = 'Delivered';

-- Delivery Status Summary
SELECT status, COUNT(*) AS total
FROM Delivery
GROUP BY status;

-- Top 5 Vendors by Quantity Donated
SELECT v.vendor_name, SUM(d.quantity_kg) AS total_kg
FROM Donation d
JOIN Vendor v ON d.vendor_id = v.vendor_id
GROUP BY v.vendor_name
ORDER BY total_kg DESC
LIMIT 5;

-- List All Delivery Agents and Their Cities
SELECT agent_name, city
FROM Delivery_Agent;

-- All Pending Donations
SELECT *
FROM Donation
WHERE status = 'Pending';

-- Delivery Details with Agent Info
SELECT da.agent_name, da.vehicle_number, del.delivery_time, del.status
FROM Delivery del
JOIN Delivery_Agent da ON del.agent_id = da.agent_id;

-- Total Deliveries Done by Each Agent
SELECT da.agent_name, COUNT(*) AS total_deliveries
FROM Delivery del
JOIN Delivery_Agent da ON del.agent_id = da.agent_id
GROUP BY da.agent_name
ORDER BY total_deliveries DESC;

-- NGO-wise Food Received Summary
SELECT n.ngo_name, COUNT(del.delivery_id) AS total_deliveries,
       SUM(d.quantity_kg) AS total_food_received
FROM Delivery del
JOIN NGO n ON del.ngo_id = n.ngo_id
JOIN Donation d ON del.donation_id = d.donation_id
GROUP BY n.ngo_name;

-- Donations Per Day in Last 7 Days
SELECT DATE(pickup_time) AS donation_date,
       COUNT(*) AS total_donations
FROM Donation
WHERE pickup_time >= CURDATE() - INTERVAL 7 DAY
GROUP BY donation_date
ORDER BY donation_date DESC;

-- Category with Highest Quantity Donated
SELECT fc.category_name, SUM(d.quantity_kg) AS total_kg
FROM Donation d
JOIN Food_Category fc ON d.category_id = fc.category_id
GROUP BY fc.category_name
ORDER BY total_kg DESC
LIMIT 1;

-- Deliveries That Are Still Pending or In Transit
SELECT *
FROM Delivery
WHERE status IN ('Pending', 'In Transit');

-- Most Recent Donation Entry
SELECT *
FROM Donation
ORDER BY pickup_time DESC
LIMIT 1;

-- Vendors with More than 1 Donation
SELECT vendor_id, COUNT(*) AS num_donations
FROM Donation
GROUP BY vendor_id
HAVING COUNT(*) > 1;

-- List NGOs Who Received More Than 2 Deliveries
SELECT n.ngo_name, COUNT(del.delivery_id) AS total
FROM Delivery del
JOIN NGO n ON del.ngo_id = n.ngo_id
GROUP BY n.ngo_name
HAVING total > 1;

-- Average Quantity Donated per Category
SELECT fc.category_name, AVG(d.quantity_kg) AS avg_quantity
FROM Donation d
JOIN Food_Category fc ON d.category_id = fc.category_id
GROUP BY fc.category_name;

-- Total Donations per City
SELECT v.city, COUNT(d.donation_id) AS total_donations
FROM Donation d
JOIN Vendor v ON d.vendor_id = v.vendor_id
GROUP BY v.city;

--  Deliveries Scheduled After a Specific Date
SELECT *
FROM Delivery
WHERE delivery_time > '2025-07-08 17:00:00';

-- Find All Vendors Who Have Never Donated
SELECT v.vendor_name
FROM Vendor v
LEFT JOIN Donation d ON v.vendor_id = d.vendor_id
WHERE d.donation_id IS NULL;

-- Identify NGOs That Haven’t Received Any Delivery
SELECT n.ngo_name
FROM NGO n
LEFT JOIN Delivery del ON n.ngo_id = del.ngo_id
WHERE del.delivery_id IS NULL;

-- Show Top 3 Cities with Highest Donation Quantity
SELECT v.city, SUM(d.quantity_kg) AS total_kg
FROM Donation d
JOIN Vendor v ON d.vendor_id = v.vendor_id
GROUP BY v.city
ORDER BY total_kg DESC
LIMIT 3;

-- Count of Scheduled Donations Grouped by Category
SELECT fc.category_name, COUNT(*) AS scheduled_donations
FROM Donation d
JOIN Food_Category fc ON d.category_id = fc.category_id
WHERE d.status = 'Scheduled'
GROUP BY fc.category_name;

-- Latest 5 Donations with NGO and Delivery Agent Info
SELECT d.donation_id, v.vendor_name, n.ngo_name, da.agent_name, del.delivery_time
FROM Delivery del
JOIN Donation d ON del.donation_id = d.donation_id
JOIN Vendor v ON d.vendor_id = v.vendor_id
JOIN NGO n ON del.ngo_id = n.ngo_id
JOIN Delivery_Agent da ON del.agent_id = da.agent_id
ORDER BY del.delivery_time DESC
LIMIT 5;

-- Count of Deliveries by Status for Each Agent
SELECT da.agent_name, del.status, COUNT(*) AS count
FROM Delivery del
JOIN Delivery_Agent da ON del.agent_id = da.agent_id
GROUP BY da.agent_name, del.status;

-- Donation Quantity Distribution Per Vendor
SELECT vendor_id, COUNT(*) AS total_donations,
       MIN(quantity_kg) AS min_kg,
       MAX(quantity_kg) AS max_kg,
       AVG(quantity_kg) AS avg_kg
FROM Donation
GROUP BY vendor_id;

-- Agents Assigned to More Than 2 Deliveries
SELECT agent_id, COUNT(*) AS total_assigned
FROM Delivery
GROUP BY agent_id
HAVING total_assigned > 2;

-- Date With Highest Number of Donations
SELECT DATE(pickup_time) AS donation_date, COUNT(*) AS total
FROM Donation
GROUP BY donation_date
ORDER BY total DESC
LIMIT 1;

-- Find Duplicate Phone Numbers in Vendor Table
SELECT phone, COUNT(*) AS count
FROM Vendor
GROUP BY phone
HAVING count > 1;

 -- Count of Donations per NGO
SELECT n.ngo_name, COUNT(del.delivery_id) AS total_donations_received
FROM Delivery del
JOIN NGO n ON del.ngo_id = n.ngo_id
GROUP BY n.ngo_name;

-- Category-wise Average Quantity and Total Donations
SELECT fc.category_name,
       COUNT(*) AS total_donations,
       ROUND(AVG(d.quantity_kg), 2) AS avg_quantity
FROM Donation d
JOIN Food_Category fc ON d.category_id = fc.category_id
GROUP BY fc.category_name;

-- Vendors Located in Same City as NGOs
SELECT DISTINCT v.vendor_name, v.city
FROM Vendor v
JOIN NGO n ON v.city = n.city;

-- Check If Any Donations Have NULL Pickup Time
SELECT *
FROM Donation
WHERE pickup_time IS NULL;

-- Donation and Delivery Gap in Minutes
SELECT d.donation_id, TIMESTAMPDIFF(MINUTE, d.pickup_time, del.delivery_time) AS delivery_gap_minutes
FROM Donation d
JOIN Delivery del ON d.donation_id = del.donation_id;

-- Find Agents Assigned to Deliver to NGOs in Different Cities
SELECT da.agent_name, n.ngo_name, n.city AS ngo_city
FROM Delivery del
JOIN Delivery_Agent da ON del.agent_id = da.agent_id
JOIN NGO n ON del.ngo_id = n.ngo_id
WHERE da.city <> n.city;

-- Vendors and Their Total Scheduled or Picked Donations
SELECT v.vendor_name,
       COUNT(*) AS total
FROM Donation d
JOIN Vendor v ON d.vendor_id = v.vendor_id
WHERE d.status IN ('Scheduled', 'Picked')
GROUP BY v.vendor_name;

-- Daily Donation Quantity Trend for This Week
SELECT DATE(pickup_time) AS donation_day,
       SUM(quantity_kg) AS total_kg
FROM Donation
WHERE pickup_time >= CURDATE() - INTERVAL 7 DAY
GROUP BY donation_day
ORDER BY donation_day;

-- Agents Who Delivered to More Than One NGO
SELECT agent_id, COUNT(DISTINCT ngo_id) AS ngo_count
FROM Delivery
GROUP BY agent_id
HAVING ngo_count > 1;

-- Most Frequent Category Donated Per Vendor
SELECT vendor_id, category_id, COUNT(*) AS frequency
FROM Donation
GROUP BY vendor_id, category_id
ORDER BY vendor_id, frequency DESC;

-- View to show pending and scheduled donations with vendor and category
CREATE VIEW Donation_Status_View AS
SELECT d.donation_id, v.vendor_name, fc.category_name, d.quantity_kg, d.status
FROM Donation d
JOIN Vendor v ON d.vendor_id = v.vendor_id
JOIN Food_Category fc ON d.category_id = fc.category_id
WHERE d.status IN ('Pending', 'Scheduled');

-- Trigger to log every new donation added
CREATE TABLE Donation_Log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    donation_id INT,
    log_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    action VARCHAR(50)
);

DELIMITER //
CREATE TRIGGER after_donation_insert
AFTER INSERT ON Donation
FOR EACH ROW
BEGIN
    INSERT INTO Donation_Log (donation_id, action)
    VALUES (NEW.donation_id, 'Donation Inserted');
END;
//
DELIMITER ;

-- Stored procedure to assign donation to available agent and NGO
DELIMITER //
CREATE PROCEDURE AssignDonation (
    IN donation_id INT,
    IN agent_id INT,
    IN ngo_id INT
)
BEGIN
    INSERT INTO Delivery (donation_id, agent_id, ngo_id, delivery_time, status)
    VALUES (donation_id, agent_id, ngo_id, NOW(), 'Scheduled');
END;
//
DELIMITER ;

START TRANSACTION;

UPDATE Donation
SET status = 'Picked'
WHERE donation_id = 8;

-- Suppose something goes wrong:
ROLLBACK;

-- If everything is okay:
-- COMMIT;


-- Unique constraint for phone number in Vendor table
ALTER TABLE Vendor
ADD CONSTRAINT unique_phone UNIQUE (phone);

-- Index to speed up donation search by category
CREATE INDEX idx_category ON Donation(category_id);


-- Function to calculate donation weight in grams
DELIMITER //
CREATE FUNCTION kg_to_grams(kg FLOAT)
RETURNS INT
DETERMINISTIC
BEGIN
  RETURN kg * 1000;
END;
//
DELIMITER ;

-- Example usage
SELECT donation_id, kg_to_grams(quantity_kg) AS grams
FROM Donation;

-- Weekly food donation trend
SELECT WEEK(pickup_time) AS week_number, SUM(quantity_kg) AS total_kg
FROM Donation
GROUP BY WEEK(pickup_time);


