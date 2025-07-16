use ProjectTravel;
-- 1. Administrator (independent)
INSERT INTO Administrator (CNIC, Name, DOB, Email, Role, PasswordHash, Phone, Gender, Nationality)
VALUES 
('42101-1234567-1', 'Ali Raza', '1985-07-12', 'ali.raza@ptadmin.com', 'SuperAdmin', 'pass123', '03001234567', 'Male', 'Pakistani'),
('35201-2345678-2', 'Sara Ahmed', '1990-03-24', 'sara.ahmed@ptadmin.com', 'Manager', 'pass456', '03122334455', 'Female', 'Pakistani'),
('61101-8765432-3', 'Kamran Malik', '1982-11-05', 'kamran.malik@ptadmin.com', 'AdminSupport', 'pass789', '03451112233', 'Male', 'Pakistani'),
('37406-9988776-4', 'Nida Farooq', '1988-09-14', 'nida.farooq@ptadmin.com', 'HRAdmin', 'nida2024', '03019996677', 'Female', 'Pakistani'),
('42301-5647382-5', 'Imran Shah', '1979-01-30', 'imran.shah@ptadmin.com', 'OpsLead', 'imranpass', '03215557788', 'Male', 'Pakistani');
-- 2. Guide Personal Info (independent)
INSERT INTO GuidePersonalInfo (CNIC, DOB, Nationality, Gender)
VALUES
('42101-5674321-9', '1985-03-10', 'Pakistani', 'Male'),
('52312-6823597-6', '1992-07-22', 'Pakistani', 'Female'),
('31445-9812274-0', '1989-12-15', 'Pakistani', 'Male'),
('78234-6719485-8', '1981-04-09', 'Pakistani', 'Female'),
('46329-1562987-0', '1995-06-05', 'Pakistani', 'Male'),
('56378-5926378-1', '1987-09-17', 'Pakistani', 'Female'),
('65123-2049312-4', '1990-02-11', 'Pakistani', 'Male'),
('27195-3482013-5', '1993-11-30', 'Pakistani', 'Female'),
('89231-1059321-0', '1984-01-25', 'Pakistani', 'Male'),
('18247-7281094-7', '1991-08-18', 'Pakistani', 'Female');
-- 3. Operator (Independent)
INSERT INTO Operator (CNIC, Name, DOB, Email, Phone, Gender, Nationality, OStatus, RegisterDate, PasswordHash, Rating, CompanyName)
VALUES
('42101-5674321-9', 'Imran Khan', '1980-03-12', 'imran@adventuretours.com', '03012345678', 'Male', 'Pakistani', 'Active', '2022-01-15', 'hashedpassword1', 4, 'Adventure Tours'),
('52312-6823597-6', 'Sarah Ali', '1990-07-22', 'sarah@exploreworld.com', '03123456789', 'Female', 'Pakistani', 'Active', '2021-03-08', 'hashedpassword2', 5, 'Explore World'),
('31445-9812274-0', 'Ali Aslam', '1985-05-15', 'ali@holidayspack.com', '03215678901', 'Male', 'Pakistani', 'Inactive', '2019-05-25', 'hashedpassword3', 3, 'Holidays Pack'),
('78234-6719485-8', 'Ayesha Khan', '1992-09-07', 'ayesha@luxurytravels.com', '03314567890', 'Female', 'Pakistani', 'Active', '2020-07-11', 'hashedpassword4', 4, 'Luxury Travels'),
('46329-1562987-0', 'Zahid Mehmood', '1983-04-10', 'zahid@wildexpeditions.com', '03456789012', 'Male', 'Pakistani', 'Active', '2018-11-23', 'hashedpassword5', 4, 'Wild Expeditions'),
('56378-5926378-1', 'Farah Shah', '1987-09-17', 'farah@culturaljourneys.com', '03567890123', 'Female', 'Pakistani', 'Active', '2017-09-15', 'hashedpassword6', 4, 'Cultural Journeys'),
('65123-2049312-4', 'Tariq Jameel', '1994-02-12', 'tariq@pilgrimagetrips.com', '03678901234', 'Male', 'Pakistani', 'Active', '2022-05-01', 'hashedpassword7', 5, 'Pilgrimage Trips'),
('27195-3482013-5', 'Shazia Baloch', '1991-06-25', 'shazia@ecoexplore.com', '03789012345', 'Female', 'Pakistani', 'Active', '2019-02-18', 'hashedpassword8', 3, 'Eco Explore'),
('89231-1059321-0', 'Hassan Raza', '1988-08-30', 'hassan@mountaintrailz.com', '03890123456', 'Male', 'Pakistani', 'Inactive', '2020-06-10', 'hashedpassword9', 3, 'Mountain Trailz'),
('18247-7281094-7', 'Mehmood Akhtar', '1995-01-20', 'mehmood@wateradventures.com', '03901234567', 'Male', 'Pakistani', 'Active', '2021-12-12', 'hashedpassword10', 4, 'Water Adventures'),
('45329-9920121-0', 'Nadia Khan', '1986-11-10', 'nadia@adventurerealm.com', '04012345678', 'Female', 'Pakistani', 'Active', '2020-04-15', 'hashedpassword11', 5, 'Adventure Realm'),
('67453-5124938-4', 'Bilal Tariq', '1993-01-17', 'bilal@turkeytours.com', '04123456789', 'Male', 'Pakistani', 'Active', '2022-07-05', 'hashedpassword12', 3, 'Turkey Tours'),
('92135-6082384-3', 'Sana Ali', '1989-04-25', 'sana@globetrotters.com', '04234567890', 'Female', 'Pakistani', 'Active', '2021-10-01', 'hashedpassword13', 4, 'Globetrotters'),
('29384-1028394-1', 'Asim Malik', '1985-06-05', 'asim@seaexpedition.com', '04345678901', 'Male', 'Pakistani', 'Active', '2019-08-30', 'hashedpassword14', 5, 'Sea Expedition'),
('18475-7583942-2', 'Amina Khan', '1992-12-14', 'amina@historicaljourneys.com', '04456789012', 'Female', 'Pakistani', 'Inactive', '2022-03-17', 'hashedpassword15', 4, 'Historical Journeys');

-- 4. CancellationPolicy (Independent)
INSERT INTO CancellationPolicy (RefundPercent, Validity, Description)
VALUES
(100, 7, 'Full refund if cancellation occurs 7 or more days before departure.'),
(50, 3, '50% refund if cancellation occurs 3-6 days before departure.'),
(0, 1, 'No refund if cancellation occurs 1-2 days before departure.'),
(75, 5, '75% refund if cancellation occurs 5-6 days before departure.'),
(90, 10, '90% refund if cancellation occurs 10 or more days before departure.');

-- 5. Traveler (Independent)
INSERT INTO Traveler (CNIC, Name, DOB, Email, Phone, Gender, Nationality, TStatus, RegisterDate, PasswordHash)
VALUES
('42011-2586731-9', 'Sara Ali', '1992-02-15', 'sara.ali@example.com', '03010011223', 'Female', 'Pakistani', 'Active', '2023-01-05', 'hashedpassword1'),
('42011-2586732-7', 'Ahmed Khan', '1987-03-25', 'ahmed.khan@example.com', '03010011224', 'Male', 'Pakistani', 'Active', '2023-02-14', 'hashedpassword2'),
('42011-2586733-5', 'Fatima Zahra', '1995-06-10', 'fatima.zahra@example.com', '03010011225', 'Female', 'Pakistani', 'Active', '2023-03-20', 'hashedpassword3'),
('42011-2586734-3', 'Bilal Iqbal', '1990-07-22', 'bilal.iqbal@example.com', '03010011226', 'Male', 'Pakistani', 'Inactive', '2023-04-25', 'hashedpassword4'),
('42011-2586735-1', 'Mehwish Chaudhry', '1993-01-30', 'mehwish.chaudhry@example.com', '03010011227', 'Female', 'Pakistani', 'Active', '2023-05-13', 'hashedpassword5'),
('42011-2586736-0', 'Usman Raza', '1989-09-05', 'usman.raza@example.com', '03010011228', 'Male', 'Pakistani', 'Active', '2023-06-10', 'hashedpassword6'),
('42011-2586737-8', 'Ayesha Noor', '1997-12-25', 'ayesha.noor@example.com', '03010011229', 'Female', 'Pakistani', 'Active', '2023-07-15', 'hashedpassword7'),
('42011-2586738-6', 'Nashit Ali', '1991-11-18', 'nashit.ali@example.com', '03010011230', 'Male', 'Pakistani', 'Inactive', '2023-08-20', 'hashedpassword8'),
('42011-2586739-4', 'Zainab Bukhari', '1994-05-19', 'zainab.bukhari@example.com', '03010011231', 'Female', 'Pakistani', 'Active', '2023-09-11', 'hashedpassword9'),
('42011-2586740-2', 'Osman Tariq', '1996-08-29', 'osman.tariq@example.com', '03010011232', 'Male', 'Pakistani', 'Inactive', '2023-10-03', 'hashedpassword10'),
('42011-2586741-0', 'Rimsha Khalid', '1992-04-12', 'rimsha.khalid@example.com', '03010011233', 'Female', 'Pakistani', 'Active', '2023-10-25', 'hashedpassword11'),
('42011-2586742-8', 'Faizan Iqbal', '1993-10-16', 'faizan.iqbal@example.com', '03010011234', 'Male', 'Pakistani', 'Inactive', '2023-11-17', 'hashedpassword12'),
('42011-2586743-6', 'Maira Khan', '1998-02-01', 'maira.khan@example.com', '03010011235', 'Female', 'Pakistani', 'Active', '2023-12-05', 'hashedpassword13'),
('42011-2586744-4', 'Nabeel Ahmad', '1994-12-21', 'nabeel.ahmad@example.com', '03010011236', 'Male', 'Pakistani', 'Active', '2024-01-13', 'hashedpassword14'),
('42011-2586745-2', 'Sania Malik', '1988-03-30', 'sania.malik@example.com', '03010011237', 'Female', 'Pakistani', 'Inactive', '2024-02-01', 'hashedpassword15'),
('42011-2586746-0', 'Ali Hassan', '1990-06-05', 'ali.hassan@example.com', '03010011238', 'Male', 'Pakistani', 'Active', '2024-03-01', 'hashedpassword16'),
('42011-2586747-9', 'Fariha Rauf', '1995-09-18', 'fariha.rauf@example.com', '03010011239', 'Female', 'Pakistani', 'Active', '2024-04-22', 'hashedpassword17'),
('42011-2586748-7', 'Zeeshan Qureshi', '1992-10-29', 'zeeshan.qureshi@example.com', '03010011240', 'Male', 'Pakistani', 'Inactive', '2024-05-16', 'hashedpassword18'),
('42011-2586749-5', 'Sumbul Shah', '1991-04-14', 'sumbul.shah@example.com', '03010011241', 'Female', 'Pakistani', 'Active', '2024-06-02', 'hashedpassword19'),
('42011-2586750-3', 'Hassan Aslam', '1993-08-08', 'hassan.aslam@example.com', '03010011242', 'Male', 'Pakistani', 'Active', '2024-07-12', 'hashedpassword20'),
('42011-2586751-1', 'Raheel Tariq', '1990-11-10', 'raheel.tariq@example.com', '03010011243', 'Male', 'Pakistani', 'Inactive', '2024-08-15', 'hashedpassword21'),
('42011-2586752-9', 'Sana Saleem', '1992-09-27', 'sana.saleem@example.com', '03010011244', 'Female', 'Pakistani', 'Active', '2024-09-09', 'hashedpassword22'),
('42011-2586753-7', 'Shanaya Akhtar', '1996-01-13', 'shanaya.akhtar@example.com', '03010011245', 'Female', 'Pakistani', 'Inactive', '2024-10-02', 'hashedpassword23'),
('42011-2586754-5', 'Tariq Saeed', '1991-12-01', 'tariq.saeed@example.com', '03010011246', 'Male', 'Pakistani', 'Active', '2024-11-05', 'hashedpassword24'),
('42011-2586755-3', 'Uzma Nazir', '1993-07-11', 'uzma.nazir@example.com', '03010011247', 'Female', 'Pakistani', 'Active', '2024-12-06', 'hashedpassword25'),
('42011-2586756-1', 'Shahid Raza', '1989-03-25', 'shahid.raza@example.com', '03010011248', 'Male', 'Pakistani', 'Inactive', '2025-01-18', 'hashedpassword26'),
('42011-2586757-9', 'Samina Arshad', '1992-10-18', 'samina.arshad@example.com', '03010011249', 'Female', 'Pakistani', 'Active', '2025-02-20', 'hashedpassword27'),
('42011-2586758-7', 'Fawad Hassan', '1990-05-22', 'fawad.hassan@example.com', '03010011250', 'Male', 'Pakistani', 'Inactive', '2025-03-21', 'hashedpassword28'),
('42011-2586759-5', 'Ayesha Tariq', '1996-12-30', 'ayesha.tariq@example.com', '03010011251', 'Female', 'Pakistani', 'Active', '2025-04-13', 'hashedpassword29'),
('42011-2586760-3', 'Rizwan Bukhari', '1991-08-02', 'rizwan.bukhari@example.com', '03010011252', 'Male', 'Pakistani', 'Active', '2025-05-10', 'hashedpassword30'),
('42011-2586761-1', 'Maryam Ali', '1994-11-23', 'maryam.ali@example.com', '03010011253', 'Female', 'Pakistani', 'Inactive', '2025-06-05', 'hashedpassword31'),
('42011-2586762-9', 'Jameel Ahmed', '1990-03-11', 'jameel.ahmed@example.com', '03010011254', 'Male', 'Pakistani', 'Active', '2025-07-17', 'hashedpassword32'),
('42011-2586763-7', 'Zara Siddiqui', '1995-04-03', 'zara.siddiqui@example.com', '03010011255', 'Female', 'Pakistani', 'Inactive', '2025-08-28', 'hashedpassword33'),
('42011-2586764-5', 'Hassan Rauf', '1989-07-09', 'hassan.rauf@example.com', '03010011256', 'Male', 'Pakistani', 'Active', '2025-09-20', 'hashedpassword34'),
('42011-2586765-3', 'Nida Aslam', '1992-11-12', 'nida.aslam@example.com', '03010011257', 'Female', 'Pakistani', 'Inactive', '2025-10-15', 'hashedpassword35'),
('42011-2586766-1', 'Kamran Shah', '1994-12-04', 'kamran.shah@example.com', '03010011258', 'Male', 'Pakistani', 'Active', '2025-11-01', 'hashedpassword36'),
('42011-2586767-9', 'Areeba Mirza', '1991-06-26', 'areeba.mirza@example.com', '03010011259', 'Female', 'Pakistani', 'Inactive', '2025-12-10', 'hashedpassword37'),
('42011-2586768-7', 'Salman Javed', '1993-05-14', 'salman.javed@example.com', '03010011260', 'Male', 'Pakistani', 'Active', '2026-01-25', 'hashedpassword38'),
('42011-2586769-5', 'Mahira Usman', '1996-03-20', 'mahira.usman@example.com', '03010011261', 'Female', 'Pakistani', 'Inactive', '2026-02-15', 'hashedpassword39'),
('42011-2586770-3', 'Shahzad Younas', '1990-10-07', 'shahzad.younas@example.com', '03010011262', 'Male', 'Pakistani', 'Active', '2026-03-11', 'hashedpassword40');

-- Trip category ( Administrator)
INSERT INTO TripCategory (CatType, Description, AdminId)
VALUES 
('Adventure', 'Outdoor activities like hiking, rock climbing, etc.', 51),
('Cultural', 'Trips focused on exploring cultural heritage and history.', 52),
('Religious', 'Pilgrimages and visits to religious sites.', 53),
('Luxury', 'High-end travel with premium accommodations and services.', 54),
('EcoTourism', 'Trips focused on environmental conservation and sustainable tourism.', 55),
('Beach', 'Relaxing beach vacations and coastal explorations.', 51),
('Mountain', 'Trekking, mountaineering, and exploring mountainous regions.', 52),
('Family', 'Family-oriented trips with activities for all ages.', 53),
('Romantic', 'Trips designed for couples with intimate settings.', 54),
('Wildlife Safari', 'Trips focused on exploring wildlife and nature reserves.', 55);

-- Trip (operator, category)
INSERT INTO Trip (Title, Destination, StartDate, EndDate, BasicPrice, Capacity, TripStatus, CategoryID, OperatorID)
VALUES
('Adventure in the Himalayas', 'Nepal', '2025-06-01', '2025-06-15', 1500, 20, 'Active', 3, 338),
('Cultural Heritage of Egypt', 'Egypt', '2025-07-01', '2025-07-10', 1200, 15, 'Active', 4, 339),
('Religious Pilgrimage to Mecca', 'Saudi Arabia', '2025-08-01', '2025-08-14', 3000, 30, 'Active', 5, 340),
('Luxury Beach Getaway', 'Maldives', '2025-06-10', '2025-06-20', 5000, 10, 'Active', 6, 341),
('Eco-Friendly Safari Adventure', 'Kenya', '2025-05-15', '2025-05-30', 2200, 12, 'Active', 7, 342),
('Relaxing Beach Vacation', 'Thailand', '2025-06-05', '2025-06-15', 1800, 25, 'Active', 8, 343),
('Mountain Trekking Expedition', 'Switzerland', '2025-09-01', '2025-09-10', 2500, 15, 'Active', 9, 344),
('Family Fun at Disney', 'USA', '2025-07-10', '2025-07-20', 3500, 20, 'Active', 10, 345),
('Romantic Getaway in Paris', 'France', '2025-06-20', '2025-06-30', 4000, 8, 'Active', 11, 346),
('Wildlife Safari in Tanzania', 'Tanzania', '2025-05-20', '2025-06-05', 3000, 18, 'Active', 12, 347),
('Historical Journey to Rome', 'Italy', '2025-08-15', '2025-08-25', 2200, 12, 'Active', 3, 348),
('Mountain Biking in the Alps', 'France', '2025-07-15', '2025-07-22', 1600, 10, 'Active', 4, 349),
('Pilgrimage to Varanasi', 'India', '2025-06-01', '2025-06-10', 1800, 20, 'Active', 5, 350),
('Luxury Cruise to the Caribbean', 'Caribbean', '2025-06-25', '2025-07-05', 4500, 50, 'Active', 6, 351),
('EcoTourism in Costa Rica', 'Costa Rica', '2025-08-01', '2025-08-15', 2200, 18, 'Active', 7, 352),
('Trekking in the Rockies', 'Canada', '2025-09-05', '2025-09-15', 1700, 12, 'Active', 8, 338),
('Family Vacation in Dubai', 'UAE', '2025-07-05', '2025-07-12', 2800, 25, 'Active', 9, 339),
('Romantic Getaway in Santorini', 'Greece', '2025-05-10', '2025-05-20', 3500, 10, 'Active', 10, 340),
('Wildlife Adventure in Botswana', 'Botswana', '2025-06-01', '2025-06-15', 3000, 16, 'Active', 11, 341),
('Luxury Cruise in the Mediterranean', 'Mediterranean', '2025-07-01', '2025-07-15', 5000, 20, 'Active', 12, 342),
('Pilgrimage to Jerusalem', 'Israel', '2025-06-20', '2025-06-30', 3200, 15, 'Active', 3, 343),
('Cultural Tour of Greece', 'Greece', '2025-08-10', '2025-08-20', 2500, 18, 'Active', 4, 344),
('Beach Holiday in Bali', 'Indonesia', '2025-07-05', '2025-07-12', 1800, 30, 'Active', 5, 345),
('Trekking in the Andes', 'Peru', '2025-08-15', '2025-08-25', 2200, 12, 'Active', 6, 346),
('Family Ski Trip to Aspen', 'USA', '2025-12-10', '2025-12-20', 3500, 20, 'Active', 7, 347),
('Luxury Desert Safari in Dubai', 'UAE', '2025-07-10', '2025-07-17', 4000, 8, 'Active', 8, 348),
('Eco-Friendly Trekking in Nepal', 'Nepal', '2025-09-01', '2025-09-10', 2000, 15, 'Active', 9, 349),
('Pilgrimage Tour of Bodh Gaya', 'India', '2025-06-25', '2025-07-05', 2100, 12, 'Active', 10, 350),
('Safari in Kruger National Park', 'South Africa', '2025-07-01', '2025-07-15', 2500, 18, 'Active', 11, 351),
('Cultural Journey through Japan', 'Japan', '2025-08-01', '2025-08-12', 2300, 15, 'Active', 12, 352),
('Luxury Travel in Switzerland', 'Switzerland', '2025-09-10', '2025-09-20', 4500, 8, 'Active', 3, 338),
('Historical Tour of Egypt', 'Egypt', '2025-06-15', '2025-06-25', 2700, 12, 'Active', 4, 339),
('Mountaineering in the Alps', 'Switzerland', '2025-07-20', '2025-07-30', 2800, 10, 'Active', 5, 340),
('Beach Resort Stay in Fiji', 'Fiji', '2025-06-01', '2025-06-10', 2400, 20, 'Active', 6, 341),
('Pilgrimage Tour to Lourdes', 'France', '2025-09-01', '2025-09-10', 2800, 15, 'Active', 7, 342);


-- TripDescriptions for various trips

INSERT INTO TripDescription (TripId, DayNo, Location, TripTime, Description)
VALUES
(2, 1, 'Cairo', '10:00:00', 'Arrival in Cairo, a visit to the famous Egyptian Museum and the Pyramids of Giza for an awe-inspiring experience.'),
(2, 2, 'Luxor', '07:30:00', 'Early morning departure to Luxor, visit the Valley of the Kings and Karnak Temple to explore ancient Egyptian history.'),
(2, 3, 'Aswan', '09:00:00', 'Board a cruise to Aswan, visit the Temple of Philae, and enjoy the Nile River cruise experience.'),
(2, 4, 'Abu Simbel', '05:00:00', 'Early morning excursion to Abu Simbel to witness the impressive temples of Ramses II and his queen Nefertari.'),
(2, 5, 'Cairo', '14:00:00', 'Return to Cairo, explore Islamic Cairo, and visit the famous Khan El Khalili Bazaar for souvenirs and local crafts.'),
(3, 1, 'Mecca', '06:00:00', 'Arrival in Mecca, prepare for the Hajj pilgrimage with a tour of the Masjid al-Haram and the Kaaba.'),
(3, 2, 'Mecca', '07:00:00', 'Perform the Tawaf around the Kaaba and offer prayers at the Masjid al-Haram.'),
(3, 3, 'Arafat', '08:00:00', 'Travel to Arafat for the day of Arafat, where pilgrims pray and seek forgiveness in preparation for the next rituals.'),
(3, 4, 'Mina', '10:00:00', 'Proceed to Mina for the symbolic stoning of the Devil and the sacrifice of an animal in accordance with tradition.'),
(3, 5, 'Mecca', '11:00:00', 'Return to Mecca for the final Tawaf of Hajj and a spiritual reflection after completing the pilgrimage rituals.'),
(4, 1, 'Maldives', '09:00:00', 'Arrive in the Maldives, check in to the luxury resort, and relax on the white sandy beaches with crystal-clear water.'),
(4, 2, 'Maldives', '11:00:00', 'Enjoy a guided snorkeling tour of the coral reefs, followed by a romantic sunset cruise on a traditional Maldivian boat.'),
(4, 3, 'Maldives', '07:30:00', 'Take a private seaplane ride for a scenic view of the atolls and indulge in a spa treatment by the ocean.'),
(4, 4, 'Maldives', '10:00:00', 'Spend the day exploring the underwater world through a glass-bottom boat or scuba diving.'),
(4, 5, 'Maldives', '09:30:00', 'Enjoy a leisurely breakfast by the beach followed by a day of relaxation and swimming in the tranquil waters.'),
(5, 1, 'Nairobi', '10:00:00', 'Arrive in Nairobi, take a guided city tour, and visit the Giraffe Center to see endangered giraffes up close.'),
(5, 2, 'Amboseli National Park', '07:00:00', 'Drive to Amboseli National Park for a morning safari, where you will see elephants and enjoy a view of Mount Kilimanjaro.'),
(5, 3, 'Amboseli National Park', '06:30:00', 'Early morning game drive in Amboseli, followed by a visit to a Maasai village to learn about their culture.'),
(5, 4, 'Masai Mara', '10:00:00', 'Transfer to Masai Mara for a full day of safari in one of Africas most famous wildlife reserves.'),
(5, 5, 'Masai Mara', '06:00:00', 'Morning game drive in Masai Mara, seeking the Big Five—lion, elephant, buffalo, leopard, and rhino.'),
(6, 1, 'Phuket', '09:00:00', 'Arrive in Phuket, relax at your beach resort, and enjoy the stunning coastal views.'),
(6, 2, 'Phi Phi Islands', '08:00:00', 'Take a boat trip to Phi Phi Islands, snorkeling in crystal-clear waters and exploring hidden coves.'),
(6, 3, 'Koh Samui', '10:00:00', 'Transfer to Koh Samui, visit the Big Buddha Temple, and relax at a luxurious beachfront restaurant.'),
(6, 4, 'Koh Samui', '07:30:00', 'Morning yoga session on the beach followed by a visit to a local market for fresh fruits and Thai street food.'),
(6, 5, 'Bangkok', '16:00:00', 'Visit the Grand Palace and Wat Arun, and enjoy the vibrant nightlife of Bangkoks famous Khao San Road.'),
(7, 1, 'Zurich', '10:00:00', 'Arrive in Zurich, explore the city, visit Lake Zurich, and enjoy Swiss chocolates and fondue.'),
(7, 2, 'Lucerne', '08:00:00', 'Travel to Lucerne, walk along the Chapel Bridge, and visit the Lion Monument.'),
(7, 3, 'Mount Pilatus', '09:00:00', 'Take a cable car to the summit of Mount Pilatus for panoramic views of the Swiss Alps.'),
(7, 4, 'Interlaken', '12:00:00', 'Arrive in Interlaken, engage in paragliding over the beautiful Swiss countryside and mountains.'),
(7, 5, 'Grindelwald', '07:00:00', 'Travel to Grindelwald, enjoy a scenic train ride and hike to the Eiger Glacier.'),
(8, 1, 'Orlando', '10:00:00', 'Arrive in Orlando, visit Walt Disney World Resort for an introduction to the parks and characters.'),
(8, 2, 'Orlando', '09:00:00', 'Spend the day at Magic Kingdom, enjoying attractions like Space Mountain and the Pirates of the Caribbean.'),
(8, 3, 'Orlando', '11:00:00', 'Explore EPCOT, visiting pavilions dedicated to different countries and experiencing various global cuisines.'),
(8, 4, 'Orlando', '08:00:00', 'Visit Disneys Animal Kingdom, take a safari through the savannah, and enjoy a river ride through the jungle.'),
(8, 5, 'Orlando', '10:00:00', 'Explore Universal Studios, experiencing the thrill rides like the Wizarding World of Harry Potter.'),
(9, 1, 'Paris', '10:00:00', 'Arrive in Paris, take a guided tour of the Eiffel Tower and enjoy lunch at a café with a view of the Seine River.'),
(9, 2, 'Paris', '09:00:00', 'Visit the Louvre Museum, home to art masterpieces like the Mona Lisa and the Venus de Milo.'),
(9, 3, 'Paris', '08:00:00', 'Explore Montmartre, walk up to the Sacré-Cœur Basilica for panoramic views of the city.'),
(9, 4, 'Paris', '10:00:00', 'Visit the Champs-Élysées, take photos at the Arc de Triomphe, and enjoy a delicious pastry at a local bakery.'),
(9, 5, 'Paris', '07:30:00', 'Enjoy a Seine River cruise and see the landmarks illuminated at night from the water.'),
(10, 1, 'Zanzibar', '08:30:00', 'Arrive in Zanzibar, explore the historic Stone Town, and enjoy the local spice plantations tour.'),
(10, 2, 'Zanzibar', '07:30:00', 'Visit the beautiful white sand beaches of Nungwi, enjoy snorkeling in the crystal-clear waters.'),
(10, 3, 'Zanzibar', '09:00:00', 'Experience a traditional dhow sailing tour, followed by a seafood lunch on the coast.'),
(10, 4, 'Zanzibar', '10:00:00', 'Visit the Jozani Forest to observe the unique red colobus monkeys and stroll through the mangrove swamps.'),
(10, 5, 'Zanzibar', '11:30:00', 'Relax at the beach, indulge in local dishes, and enjoy a cultural dance performance in the evening.'),
(11, 1, 'Rome', '10:00:00', 'Arrive in Rome, visit the Colosseum and Roman Forum to immerse in ancient history.'),
(11, 2, 'Rome', '09:00:00', 'Tour the Vatican Museums, admire the Sistine Chapel, and explore St. Peters Basilica.'),
(11, 3, 'Rome', '08:00:00', 'Stroll through Piazza Navona, visit the Pantheon, and throw a coin into the Trevi Fountain.'),
(11, 4, 'Rome', '07:30:00', 'Take a morning walk through the Trastevere neighborhood, and enjoy traditional Italian breakfast in a local café.'),
(11, 5, 'Rome', '11:00:00', 'Visit the Castel Sant Angelo and explore the Castel Sant Angelo museum for panoramic city views.'),
(12, 1, 'Kyoto', '09:00:00', 'Explore the Fushimi Inari Shrine, famous for its thousands of red torii gates. This iconic sight offers a spiritual experience and a great photo opportunity.'),
(12, 2, 'Kyoto', '08:00:00', 'Visit the Kinkaku-ji (Golden Pavilion), known for its stunning Zen garden and its breathtaking golden exterior. The temple’s serene atmosphere is perfect for reflection and relaxation.'),
(13, 1, 'Osaka', '10:00:00', 'Visit the Osaka Castle, offering panoramic views of the city and an insight into Japan’s history. The castle grounds provide a peaceful escape from the city buzz.'),
(13, 2, 'Osaka', '09:30:00', 'Explore Dotonbori Street for vibrant nightlife and delicious street food. This area offers an unforgettable sensory experience with neon lights and unique local cuisine.'),
(14, 1, 'Sydney', '08:30:00', 'Climb the Sydney Harbour Bridge for breathtaking views of the harbor and the Opera House. This adventure combines fitness with an iconic sightseeing opportunity.'),
(14, 2, 'Sydney', '10:00:00', 'Take a ferry to Manly Beach for a relaxing day by the ocean. The ferry ride offers picturesque views of the harbor, and Manly Beach is perfect for sunbathing and surfing.'),
(15, 1, 'New York', '07:30:00', 'Visit the Empire State Building’s observation deck to see the city’s skyline. It provides a unique perspective of New York, especially at sunrise or sunset.'),
(15, 2, 'New York', '09:00:00', 'Stroll through Central Park, enjoy the green spaces, and perhaps rent a bike or row a boat. This peaceful retreat offers nature amid the hustle and bustle of the city.'),
(16, 1, 'Paris', '08:30:00', 'Take a river cruise along the Seine to see landmarks like Notre-Dame and the Eiffel Tower from the water. The cruise provides a romantic view of Paris’ historic architecture.'),
(16, 2, 'Paris', '09:00:00', 'Visit the Louvre Museum and marvel at masterpieces like the Mona Lisa. This iconic museum offers a cultural and artistic experience unparalleled worldwide.'),
(17, 1, 'Rome', '10:00:00', 'Explore the Colosseum, one of the greatest symbols of Roman history. Standing inside the amphitheater gives a glimpse of ancient gladiatorial combat and Roman entertainment.'),
(17, 2, 'Rome', '11:00:00', 'Take a walk through the Roman Forum to witness the remnants of a once-thriving political and social center. It’s a fascinating historical journey.'),
(18, 1, 'Dubai', '08:00:00', 'Visit the Burj Khalifa, the tallest building in the world, for panoramic views. The observation deck offers an unparalleled experience of Dubai’s modern skyline.'),
(18, 2, 'Dubai', '09:30:00', 'Explore the Dubai Mall, one of the largest shopping malls globally, with unique attractions such as an indoor aquarium. It’s a perfect spot for both shopping and entertainment.'),
(19, 1, 'Istanbul', '10:30:00', 'Visit the Hagia Sophia to witness a blend of Byzantine architecture and Islamic artistry. It’s one of the world’s most impressive and historically significant buildings.'),
(19, 2, 'Istanbul', '09:00:00', 'Tour the Grand Bazaar, a bustling market with over 4,000 shops. The bazaar’s vibrant atmosphere and variety of goods make it a must-see cultural experience.'),
(20, 1, 'Santorini', '10:00:00', 'Admire the sunset at Oia, one of the most famous sunset views in the world. This natural spectacle is accompanied by white-washed buildings and beautiful Mediterranean waters.'),
(20, 2, 'Santorini', '08:00:00', 'Relax on the black sand beaches of Kamari. The unique volcanic sand and crystal-clear waters provide a serene escape.'),
(21, 1, 'Prague', '09:30:00', 'Explore Prague Castle, one of the largest ancient castles in the world. It offers an intriguing mix of history, culture, and stunning views of the city.'),
(21, 2, 'Prague', '11:00:00', 'Walk across Charles Bridge, a 14th-century bridge adorned with statues of saints. It provides one of the most picturesque views of Prague’s old town.'),
(22, 1, 'Copenhagen', '09:00:00', 'Visit Nyhavn, Copenhagen’s colorful harbor, for a scenic walk along the canal. This area is known for its vibrant architecture and bustling cafés.'),
(22, 2, 'Copenhagen', '10:30:00', 'Explore the Tivoli Gardens, one of the oldest amusement parks in the world. It offers classic rides, gardens, and evening lights that create a magical atmosphere.'),
(23, 1, 'Vienna', '08:00:00', 'Visit the Schönbrunn Palace, a UNESCO World Heritage site with magnificent gardens. It provides an insight into imperial Austrian life and royal history.'),
(23, 2, 'Vienna', '09:30:00', 'Enjoy a classical concert in one of Vienna’s historic concert halls. The city is known for its classical music legacy, making it an ideal destination for music lovers.'),
(24, 1, 'Barcelona', '10:00:00', 'Visit La Sagrada Familia, Antoni Gaudí’s masterpiece. Its unique architecture and towering spires make it an iconic symbol of Barcelona and modernist art.'),
(24, 2, 'Barcelona', '08:00:00', 'Stroll down La Rambla, a lively street in the heart of the city. The street offers street performances, shops, and cafes, making it an essential part of the Barcelona experience.'),
(25, 1, 'Amsterdam', '09:00:00', 'Take a canal cruise to see Amsterdam’s picturesque bridges and historic buildings from the water. The boat ride offers a unique and scenic perspective of the city.'),
(25, 2, 'Amsterdam', '10:30:00', 'Visit the Van Gogh Museum, home to the largest collection of Van Gogh’s paintings. It provides a deep dive into the artist’s life and masterpieces.'),
(26, 1, 'Stockholm', '08:30:00', 'Explore the Vasa Museum, which houses a 17th-century warship. It’s an incredible testament to Sweden’s naval history and maritime engineering.'),
(26, 2, 'Stockholm', '09:30:00', 'Visit Gamla Stan, Stockholm’s old town, and wander through narrow medieval streets. This area is rich in history, with charming cafes and boutique shops.'),
(27, 1, 'Budapest', '09:00:00', 'Take a cruise on the Danube River to see the iconic landmarks of Budapest, including the Parliament Building. The city’s stunning architecture is best seen from the water.'),
(27, 2, 'Budapest', '10:30:00', 'Relax at the Széchenyi Thermal Baths, one of the largest spa complexes in Europe. The thermal waters offer a rejuvenating experience in a historic setting.'),
(28, 1, 'Berlin', '09:00:00', 'Visit the Berlin Wall Memorial to learn about the city’s Cold War history. It’s a poignant reminder of the divisions that once separated East and West Berlin.'),
(28, 2, 'Berlin', '10:00:00', 'Explore the Brandenburg Gate, an iconic neoclassical monument. It represents the reunification of Germany and is a symbol of peace and unity.'),
(29, 1, 'London', '08:00:00', 'Visit the Tower of London to learn about its rich history, including its role as a royal palace and prison. The Crown Jewels are also housed here, making it a must-see.'),
(29, 2, 'London', '09:30:00', 'Take a ride on the London Eye for a bird’s eye view of the city. This giant Ferris wheel offers unique views of landmarks such as the Houses of Parliament and Big Ben.'),
(30, 1, 'Edinburgh', '08:00:00', 'Explore Edinburgh Castle, perched on a volcanic rock. It offers stunning views of the city and fascinating exhibits on Scottish history.'),
(30, 2, 'Edinburgh', '10:00:00', 'Stroll down the Royal Mile, a historic street lined with shops, restaurants, and landmarks. It’s perfect for soaking up the atmosphere of the Scottish capital.'),
(31, 1, 'Oslo', '09:00:00', 'Visit the Viking Ship Museum to see well-preserved Viking ships and artifacts. This museum offers a fascinating look into Norway’s Viking past.'),
(31, 2, 'Oslo', '08:30:00', 'Walk through the Vigeland Sculpture Park, showcasing over 200 bronze and granite sculptures. It’s an artistic and tranquil escape within the city.'),
(32, 1, 'Zurich', '10:00:00', 'Take a boat ride on Lake Zurich and enjoy panoramic views of the city and surrounding mountains. The serene lake provides a peaceful contrast to the bustling city.'),
(32, 2, 'Zurich', '09:00:00', 'Visit the Swiss National Museum to learn about Swiss cultural history. The museum’s exhibits offer a deep dive into Swiss traditions, art, and history.'),
(33, 1, 'Helsinki', '08:30:00', 'Visit the Suomenlinna Fortress, a UNESCO World Heritage site. The fortress offers panoramic views and a fascinating history of Finland’s military past.'),
(33, 2, 'Helsinki', '09:30:00', 'Explore the modern architecture of the city, including the stunning Temppeliaukio Church, built into solid rock. Helsinki is a city that blends design with nature.'),
(34, 1, 'Hong Kong', '10:00:00', 'Take the Ngong Ping 360 cable car for stunning views of the Lantau Island and the Big Buddha. The ride offers a scenic experience with panoramic vistas.'),
(34, 2, 'Hong Kong', '09:30:00', 'Visit Victoria Peak for breathtaking views of the city skyline. It’s a perfect spot to take in the hustle and bustle of one of the world’s most dynamic cities.'),
(35, 1, 'Seoul', '10:00:00', 'Explore Gyeongbokgung Palace, the largest of Seoul’s Five Grand Palaces. The architectural beauty and historical significance make it a must-see.'),
(35, 2, 'Seoul', '09:30:00', 'Walk through Bukchon Hanok Village to see traditional Korean houses. The picturesque streets offer a glimpse into Seoul’s past, blending history and modernity.'),
(36, 1, 'Tokyo', '09:00:00', 'Visit the Meiji Shrine, located in a tranquil forested area. It’s one of Tokyo’s most important shrines and offers a peaceful retreat from the city bustle.'),
(36, 2, 'Tokyo', '10:00:00', 'Take a trip to Shibuya Crossing, one of the busiest intersections in the world. It’s a cultural symbol of Tokyo’s vibrant energy and fast-paced lifestyle.')

-- Booking (Trip, Admin, Operator)
INSERT INTO Booking (Price, BookingDate, InquiryDate, NumOfPerson, Status, AdminId, OperatorId, CancelPolicy, TripId)
VALUES
(1600.00, '2025-04-10', '2025-04-05', 2, 'Confirmed', 51, 338, 51, 2),
(2000.00, '2025-04-11', '2025-04-06', 4, 'Pending', 52, 339, 52, 3),
(1800.00, '2025-04-12', '2025-04-07', 3, 'Confirmed', 53, 340, 53, 4),
(2200.00, '2025-04-13', '2025-04-08', 6, 'Cancelled', 54, 341, 54, 5),
(2500.00, '2025-04-14', '2025-04-09', 5, 'Confirmed', 55, 342, 55, 6),
(2800.00, '2025-04-15', '2025-04-10', 2, 'Confirmed', 51, 343, 51, 7),
(3200.00, '2025-04-16', '2025-04-11', 8, 'Confirmed', 52, 344, 52, 8),
(3500.00, '2025-04-17', '2025-04-12', 4, 'Pending', 53, 345, 53, 9),
(1500.00, '2025-04-18', '2025-04-13', 3, 'Cancelled', 54, 346, 54, 10),
(1700.00, '2025-04-19', '2025-04-14', 6, 'Confirmed', 55, 347, 55, 11),
(3000.00, '2025-04-20', '2025-04-15', 7, 'Pending', 51, 348, 51, 12),
(2000.00, '2025-04-21', '2025-04-16', 2, 'Confirmed', 52, 349, 52, 13),
(2400.00, '2025-04-22', '2025-04-17', 5, 'Cancelled', 53, 350, 53, 14),
(2800.00, '2025-04-23', '2025-04-18', 3, 'Pending', 54, 351, 54, 15),
(2600.00, '2025-04-24', '2025-04-19', 4, 'Confirmed', 55, 352, 55, 16),
(2200.00, '2025-04-25', '2025-04-20', 3, 'Cancelled', 51, 338, 51, 17),
(1500.00, '2025-04-26', '2025-04-21', 7, 'Confirmed', 52, 339, 52, 18),
(1700.00, '2025-04-27', '2025-04-22', 6, 'Pending', 53, 340, 53, 19),
(1900.00, '2025-04-28', '2025-04-23', 5, 'Confirmed', 54, 341, 54, 20),
(2100.00, '2025-04-29', '2025-04-24', 4, 'Cancelled', 55, 342, 55, 21),
(2500.00, '2025-04-30', '2025-04-25', 3, 'Confirmed', 51, 343, 51, 22),
(2800.00, '2025-05-01', '2025-04-26', 2, 'Pending', 52, 344, 52, 23),
(3000.00, '2025-05-02', '2025-04-27', 6, 'Cancelled', 53, 345, 53, 24),
(3200.00, '2025-05-03', '2025-04-28', 4, 'Confirmed', 54, 346, 54, 25),
(3400.00, '2025-05-04', '2025-04-29', 8, 'Pending', 55, 347, 55, 26),
(3600.00, '2025-05-05', '2025-04-30', 5, 'Confirmed', 51, 348, 51, 27),
(3800.00, '2025-05-06', '2025-05-01', 3, 'Cancelled', 52, 349, 52, 28),
(4000.00, '2025-05-07', '2025-05-02', 2, 'Confirmed', 53, 350, 53, 29),
(4200.00, '2025-05-08', '2025-05-03', 6, 'Pending', 54, 351, 54, 30),
(4400.00, '2025-05-09', '2025-05-04', 5, 'Confirmed', 55, 352, 55, 31),
(4600.00, '2025-05-10', '2025-05-05', 4, 'Cancelled', 51, 338, 51, 32),
(4800.00, '2025-05-11', '2025-05-06', 3, 'Confirmed', 52, 339, 52, 33),
(5000.00, '2025-05-12', '2025-05-07', 2, 'Pending', 53, 340, 53, 34),
(5200.00, '2025-05-13', '2025-05-08', 6, 'Cancelled', 54, 341, 54, 35),
(5400.00, '2025-05-14', '2025-05-09', 4, 'Confirmed', 55, 342, 55, 36),
(5500.00, '2025-05-15', '2025-05-10', 7, 'Pending', 51, 343, 51, 2),
(5600.00, '2025-05-16', '2025-05-11', 3, 'Confirmed', 52, 344, 52, 3),
(5700.00, '2025-05-17', '2025-05-12', 5, 'Cancelled', 53, 345, 53, 4),
(5800.00, '2025-05-18', '2025-05-13', 2, 'Confirmed', 54, 346, 54, 5);

-- Travel history ( Traveler, booking )
INSERT INTO TravelHistory (TravelerID, BookingID)
VALUES
(51, 2),
(52, 3),
(53, 4),
(54, 5),
(55, 6),
(51, 7),
(52, 8),
(53, 9),
(54, 10),
(55, 11),
(51, 12),
(52, 13),
(53, 14),
(54, 15),
(55, 16),
(51, 17),
(52, 18),
(53, 19),
(54, 20),
(55, 21),
(51, 22),
(52, 23),
(53, 24),
(54, 25),
(55, 26),
(51, 27),
(52, 28),
(53, 29),
(54, 30),
(55, 31),
(51, 32),
(52, 33),
(53, 34),
(54, 35),
(55, 36),
(51, 37),
(52, 38),
(53, 39),
(54, 40);

-- Passes (admin , booking)
INSERT INTO Passes (BookingId, Type, Status, IssueDate, AdminId)
VALUES
(2, 'Single', 'Issued', '2025-05-01', 51),
(3, 'Group', 'Issued', '2025-05-02', 52),
(4, 'Single', 'Issued', '2025-05-03', 53),
(5, 'Single', 'Issued', '2025-05-04', 54),
(6, 'Group', 'Issued', '2025-05-05', 55),
(7, 'Single', 'Issued', '2025-05-06', 51),
(8, 'Group', 'Issued', '2025-05-07', 52),
(9, 'Single', 'Issued', '2025-05-08', 53),
(10, 'Single', 'Issued', '2025-05-09', 54),
(11, 'Group', 'Issued', '2025-05-10', 55),
(12, 'Single', 'Issued', '2025-05-11', 51),
(13, 'Group', 'Issued', '2025-05-12', 52),
(14, 'Single', 'Issued', '2025-05-13', 53),
(15, 'Group', 'Issued', '2025-05-14', 54),
(16, 'Single', 'Issued', '2025-05-15', 55),
(17, 'Group', 'Issued', '2025-05-16', 51),
(18, 'Single', 'Issued', '2025-05-17', 52),
(19, 'Single', 'Issued', '2025-05-18', 53),
(20, 'Group', 'Issued', '2025-05-19', 54),
(21, 'Single', 'Issued', '2025-05-20', 55),
(22, 'Group', 'Issued', '2025-05-21', 51),
(23, 'Single', 'Issued', '2025-05-22', 52),
(24, 'Group', 'Issued', '2025-05-23', 53),
(25, 'Single', 'Issued', '2025-05-24', 54),
(26, 'Single', 'Issued', '2025-05-25', 55),
(27, 'Group', 'Issued', '2025-05-26', 51),
(28, 'Single', 'Issued', '2025-05-27', 52),
(29, 'Single', 'Issued', '2025-05-28', 53),
(30, 'Group', 'Issued', '2025-05-29', 54),
(31, 'Single', 'Issued', '2025-05-30', 55),
(32, 'Group', 'Issued', '2025-05-31', 51),
(33, 'Single', 'Issued', '2025-06-01', 52),
(34, 'Single', 'Issued', '2025-06-02', 53),
(35, 'Group', 'Issued', '2025-06-03', 54),
(36, 'Single', 'Issued', '2025-06-04', 55),
(37, 'Group', 'Issued', '2025-06-05', 51),
(38, 'Single', 'Issued', '2025-06-06', 52),
(39, 'Group', 'Issued', '2025-06-07', 53),
(40, 'Single', 'Issued', '2025-06-08', 54);


-- Payment
INSERT INTO Payment (BookingID, Amount, PaymentDate, Status, Method)
VALUES
(2, 1600.00, '2025-04-11', 'Pending', 'Credit Card'),
(3, 1800.00, '2025-04-12', 'Confirmed', 'Bank Transfer'),
(4, 2200.00, '2025-04-13', 'Cancelled', 'Cash'),
(5, 2500.00, '2025-04-14', 'Confirmed', 'Debit Card'),
(6, 2800.00, '2025-04-15', 'Confirmed', 'PayPal'),
(7, 3200.00, '2025-04-16', 'Confirmed', 'Credit Card'),
(8, 3500.00, '2025-04-17', 'Pending', 'Bank Transfer'),
(9, 1500.00, '2025-04-18', 'Cancelled', 'Cash'),
(10, 1700.00, '2025-04-19', 'Confirmed', 'Debit Card'),
(11, 2000.00, '2025-04-20', 'Confirmed', 'PayPal'),
(12, 2200.00, '2025-04-21', 'Pending', 'Credit Card'),
(13, 2400.00, '2025-04-22', 'Cancelled', 'Bank Transfer'),
(14, 2800.00, '2025-04-23', 'Confirmed', 'Cash'),
(15, 2600.00, '2025-04-24', 'Confirmed', 'Debit Card'),
(16, 2200.00, '2025-04-25', 'Cancelled', 'PayPal'),
(17, 1500.00, '2025-04-26', 'Confirmed', 'Credit Card'),
(18, 1700.00, '2025-04-27', 'Pending', 'Bank Transfer'),
(19, 1900.00, '2025-04-28', 'Confirmed', 'Cash'),
(20, 2100.00, '2025-04-29', 'Cancelled', 'Debit Card'),
(21, 2500.00, '2025-04-30', 'Confirmed', 'PayPal'),
(22, 2800.00, '2025-05-01', 'Pending', 'Credit Card'),
(23, 3000.00, '2025-05-02', 'Cancelled', 'Bank Transfer'),
(24, 3200.00, '2025-05-03', 'Confirmed', 'Cash'),
(25, 3400.00, '2025-05-04', 'Pending', 'Debit Card'),
(26, 3600.00, '2025-05-05', 'Confirmed', 'PayPal'),
(27, 3800.00, '2025-05-06', 'Cancelled', 'Credit Card'),
(28, 4000.00, '2025-05-07', 'Confirmed', 'Bank Transfer'),
(29, 4200.00, '2025-05-08', 'Pending', 'Cash'),
(30, 4400.00, '2025-05-09', 'Confirmed', 'Debit Card'),
(31, 4600.00, '2025-05-10', 'Cancelled', 'PayPal'),
(32, 4800.00, '2025-05-11', 'Confirmed', 'Credit Card'),
(33, 5000.00, '2025-05-12', 'Pending', 'Bank Transfer'),
(34, 5200.00, '2025-05-13', 'Cancelled', 'Cash');

--- Service provider
INSERT INTO ServiceProvider (Name, ContactNo, Email, Availability, Rating, ServiceType, ContactPerson, OperatorId)
VALUES
('Adventure Tours', '03011234567', 'info@adventuretours.com', 'Mon-Fri 9am-6pm', 4, 'Tour Operator', 'Imran Khan', 338),
('Explore World', '03112345678', 'contact@exploreworld.com', 'Mon-Sun 8am-8pm', 5, 'Travel Agency', 'Sarah Ali', 339),
('Holidays Pack', '03212345678', 'bookings@holidayspack.com', 'Tue-Sun 10am-7pm', 3, 'Tourism', 'Ali Aslam', 340),
('Luxury Travels', '03313456789', 'support@luxurytravels.com', 'Mon-Sat 10am-6pm', 4, 'Luxury Tours', 'Ayesha Khan', 341),
('Wild Expeditions', '03414567890', 'info@wildexpeditions.com', 'Mon-Sun 9am-7pm', 4, 'Adventure Tourism', 'Zahid Mehmood', 342),
('Cultural Journeys', '03515678901', 'info@culturaljourneys.com', 'Mon-Sat 8am-5pm', 4, 'Cultural Tours', 'Farah Shah', 343),
('Pilgrimage Trips', '03616789012', 'contact@pilgrimagetrips.com', 'Mon-Sun 8am-6pm', 5, 'Religious Tours', 'Tariq Jameel', 344),
('Eco Explore', '03717890123', 'hello@ecoexplore.com', 'Mon-Fri 10am-5pm', 3, 'Eco Tourism', 'Shazia Baloch', 345),
('Mountain Trailz', '03818901234', 'support@mountaintrailz.com', 'Mon-Sun 7am-6pm', 3, 'Trekking', 'Hassan Raza', 346),
('Water Adventures', '03920012345', 'info@wateradventures.com', 'Mon-Sun 9am-8pm', 4, 'Water Sports', 'Mehmood Akhtar', 347),
('Historical Journeys', '04456789012', 'contact@historicaljourneys.com', 'Mon-Sun 9am-6pm', 4, 'Historical Tours', 'Amina Khan', 348),
('Nature Walks', '05011234567', 'info@naturewalks.com', 'Mon-Fri 9am-5pm', 3, 'Nature Tours', 'Fahad Malik', 349),
('Mountain Adventures', '05122345678', 'support@mountainadventures.com', 'Tue-Sun 8am-6pm', 5, 'Climbing Expeditions', 'Ahmed Raza', 350),
('Desert Safaris', '05233456789', 'info@desertsafaris.com', 'Mon-Sat 10am-5pm', 4, 'Desert Tours', 'Khalid Shah', 351),
('Tropical Expeditions', '05344567890', 'info@tropicalexpeditions.com', 'Mon-Fri 9am-7pm', 5, 'Tropical Tours', 'Sana Ahmed', 352);


-- Services
INSERT INTO Services (ServiceType, Description, ServiceAccepted, Price, ProviderId)
VALUES
('Adventure Tours', 'Guided tours to the world’s most thrilling mountain ranges.', 1, 500, 3),
('Sustainable Tours', 'Eco-friendly tours focusing on wildlife and nature conservation.', 1, 300, 4),
('Trekking', 'Exciting trekking adventures across the Himalayas and beyond.', 1, 600, 5),
('Desert Safaris', 'Explore the vast deserts with professional guides and safety measures.', 1, 400, 6),
('Cultural Tours', 'Cultural exploration of ancient cities and traditions.', 1, 350, 7),
('Water Sports', 'Exciting water sports, including kayaking, jet skiing, and more.', 1, 250, 8),
('Wildlife Tours', 'Observe diverse wildlife in their natural habitat in a safe environment.', 1, 450, 9),
('Nature Walks', 'Guided walks through some of the world’s most scenic forests and parks.', 1, 200, 10),
('Religious Tours', 'Visit sacred sites for spiritual growth and reflection.', 1, 500, 11),
('Climbing Expeditions', 'Climb some of the highest peaks around the globe with professional guides.', 1, 700, 12),
('Luxury Tours', 'Indulge in luxury travel experiences tailored to your needs.', 1, 1500, 13),
('Tropical Tours', 'Explore the tropical rainforests with local guides.', 1, 600, 14),
('Snow Sports', 'Enjoy skiing, snowboarding, and other snow sports in world-class resorts.', 1, 550, 15),
('Safari Tours', 'Guided safaris to view Africa’s magnificent wildlife.', 1, 650, 16),
('Eco Tourism', 'Sustainable tourism focusing on nature and community-based projects.', 1, 450, 17);

-- OperatorAssignServicesToTraveler
INSERT INTO OperatorAssignServicesToTraveler (OperatorId, ServiceID, TravelerId, Status)
VALUES
(338, 2, 51, 'accepted'),
(339, 3, 52, 'accepted'),
(340, 4, 53, 'accepted'),
(341, 5, 54, 'accepted'),
(342, 6, 55, 'accepted'),
(343, 7, 56, 'accepted'),
(344, 8, 57, 'accepted'),
(345, 9, 58, 'accepted'),
(346, 10, 59, 'accepted'),
(347, 11, 60, 'accepted'),
(348, 12, 61, 'accepted'),
(349, 13, 62, 'accepted'),
(350, 14, 63, 'accepted'),
(351, 15, 64, 'accepted'),
(352, 16, 65, 'accepted'),
(338, 2, 66, 'accepted'),
(339, 3, 67, 'accepted'),
(340, 4, 68, 'accepted'),
(341, 5, 69, 'accepted'),
(342, 6, 70, 'accepted');


--- Hotel
INSERT INTO Hotel (ProviderId, BookedRooms, TotalRooms, PercentBooked)
VALUES
(3, 25, 50, 50.0),
(4, 15, 30, 50.0),
(5, 30, 60, 50.0),
(6, 20, 40, 50.0),
(7, 10, 20, 50.0),
(8, 18, 36, 50.0),
(9, 22, 44, 50.0),
(10, 28, 56, 50.0),
(11, 24, 48, 50.0),
(12, 12, 24, 50.0),
(13, 32, 64, 50.0),
(14, 26, 52, 50.0),
(15, 20, 40, 50.0),
(16, 30, 60, 50.0),
(17, 18, 36, 50.0);

-- Transport
INSERT INTO Transport (ProviderId, NumBusses, NumRoutes, BookingPerDay)
VALUES
(3, 10, 5, 150.0),   -- Holidays Pack
(4, 15, 7, 200.0),   -- Luxury Travels
(5, 20, 10, 250.0),  -- Wild Expeditions
(6, 12, 6, 180.0),   -- Cultural Journeys
(7, 8, 4, 120.0),   -- Pilgrimage Trips
(12, 10, 5, 150.0),   -- Historical Journeys
(5, 15, 7, 200.0),    -- Wild Expeditions
(10, 20, 10, 250.0),  -- Water Adventures
(6, 12, 6, 180.0),    -- Cultural Journeys
(15, 8, 4, 120.0);  

-- Reviews
INSERT INTO Reviews (OperatorId, ProviderId, TravellerId, TripId, AdminId, TRating, ORating, PRating, ReviewDate, ApprovedFlag, ReviewText)
VALUES
(338, 3, 51, 2, 51, 5, 5, 4, '2025-04-01', 1, 'Excellent service! Highly recommend it.'),
(339, 4, 52, 3, 52, 4, 4, 3, '2025-04-02', 1, 'Very good experience, but the price could be lower.'),
(340, 5, 53, 4, 53, 3, 3, 3, '2025-04-03', 1, 'Good, but there were some delays in communication.'),
(341, 6, 54, 5, 54, 5, 4, 4, '2025-04-04', 1, 'Great customer support and timely service.'),
(342, 7, 55, 6, 55, 4, 4, 4, '2025-04-05', 1, 'Nice service, will use again for sure.'),
(343, 8, 56, 7, 51, 2, 2, 2, '2025-04-06', 0, 'Not satisfied, service was below expectations.'),
(344, 9, 57, 8, 52, 5, 5, 5, '2025-04-07', 1, 'Fantastic experience, exceeded my expectations.'),
(345, 10, 58, 9, 53, 3, 2, 3, '2025-04-08', 1, 'Service was decent, but not what I expected.'),
(346, 11, 59, 10, 54, 4, 4, 3, '2025-04-09', 1, 'Good overall, but room for improvement.'),
(347, 12, 60, 11, 55, 5, 5, 5, '2025-04-10', 1, 'Everything was perfect, highly recommended.'),
(348, 13, 61, 12, 51, 4, 4, 4, '2025-04-11', 1, 'Great value for money, would use again.'),
(349, 14, 62, 13, 52, 3, 3, 3, '2025-04-12', 0, 'Decent service, but had some issues with the delivery.'),
(350, 15, 63, 14, 53, 5, 5, 5, '2025-04-13', 1, 'Amazing service, will definitely come back!'),
(351, 16, 64, 15, 54, 4, 4, 4, '2025-04-14', 1, 'Good service but could improve on the response time.'),
(352, 17, 65, 16, 55, 2, 2, 2, '2025-04-15', 0, 'Service was okay but not great, wouldn’t use again.'),
(338, 3, 66, 17, 51, 5, 5, 5, '2025-04-16', 1, 'Exceptional service, would highly recommend!'),
(339, 4, 67, 18, 52, 4, 4, 3, '2025-04-17', 1, 'Good, but could be more efficient in certain areas.'),
(340, 5, 68, 19, 53, 3, 3, 3, '2025-04-18', 1, 'Satisfactory service but didn’t meet expectations.'),
(341, 6, 69, 20, 54, 5, 5, 5, '2025-04-19', 1, 'Absolutely amazing! I am very impressed.'),
(342, 7, 70, 21, 55, 4, 4, 4, '2025-04-20', 1, 'A solid experience, but there’s room for improvement.'),
(343, 8, 71, 22, 51, 2, 2, 2, '2025-04-21', 0, 'Not great. The service was slow and unprofessional.'),
(344, 9, 72, 23, 52, 5, 5, 5, '2025-04-22', 1, 'One of the best experiences I’ve had, will return soon!'),
(345, 10, 73, 24, 53, 3, 3, 3, '2025-04-23', 1, 'The service was okay, but communication was lacking.'),
(346, 11, 74, 25, 54, 4, 4, 4, '2025-04-24', 1, 'Really good, just a few small things could be better.'),
(347, 12, 75, 26, 55, 5, 5, 5, '2025-04-25', 1, 'Highly recommend, very satisfied with everything!'),
(348, 13, 76, 27, 51, 4, 4, 4, '2025-04-26', 1, 'Good service, but they need to improve on follow-ups.'),
(349, 14, 77, 28, 52, 3, 3, 3, '2025-04-27', 0, 'Service was okay, but had a few issues with the product quality.'),
(350, 15, 78, 29, 53, 5, 5, 5, '2025-04-28', 1, 'Wonderful experience, exceeded all expectations!'),
(351, 16, 79, 30, 54, 4, 4, 4, '2025-04-29', 1, 'Service was good, though I think there’s some room to grow.'),
(352, 17, 80, 31, 55, 2, 2, 2, '2025-04-30', 0, 'Disappointed with the service, not as expected.'),
(338, 3, 81, 32, 51, 5, 5, 5, '2025-05-01', 1, 'Fantastic service, couldn’t be happier!'),
(339, 4, 82, 33, 52, 3, 3, 3, '2025-05-02', 1, 'Good experience but definitely needs some improvements.'),
(340, 5, 83, 34, 53, 4, 4, 4, '2025-05-03', 1, 'Overall good service, but it took too long to complete.'),
(341, 6, 84, 35, 54, 5, 5, 5, '2025-05-04', 1, 'Impressive service, will definitely recommend!'),
(342, 7, 85, 36, 55, 4, 4, 4, '2025-05-05', 1, 'A positive experience, but there were some small issues.');

-- Traveler Preferences
INSERT INTO TravelerPreferences (TravelerId, PreferenceNo, PreferenceDescription)
VALUES
(51, 1, 'Window seat preference'),
(52, 1, 'Extra legroom request'),
(53, 1, 'Vegetarian meal'),
(54, 1, 'Front row seating'),
(55, 1, 'Special assistance required'),
(56, 1, 'Window seat preference'),
(57, 1, 'Aisle seat preference'),
(58, 1, 'Pet-friendly accommodation'),
(59, 1, 'Smoking area preference'),
(60, 1, 'Non-smoking room preference'),
(61, 1, 'First class upgrade'),
(62, 1, 'Late check-in preference'),
(63, 1, 'Room with a view'),
(64, 1, 'Accessible bathroom request'),
(65, 1, 'Halal meal'),
(66, 1, 'Extra pillows and blankets'),
(67, 1, 'Quiet zone seating'),
(68, 1, 'Pet-free room'),
(69, 1, 'High floor room'),
(70, 1, 'Low floor room'),
(71, 1, 'King-sized bed request'),
(72, 1, 'Connecting rooms for family'),
(73, 1, 'Allergy-friendly room'),
(74, 1, 'No-smoking hotel'),
(75, 1, 'Close to elevator preference'),
(76, 1, 'Ground-level room preference'),
(77, 1, 'Late check-out request'),
(78, 1, 'Early check-in request'),
(79, 1, 'Extended check-out'),
(80, 1, 'Specific hotel chain preference'),
(81, 1, 'Family-friendly room setup'),
(82, 1, 'Pet-sitting service request'),
(83, 1, 'Quiet neighborhood'),
(84, 1, 'Pool-side room preference'),
(85, 1, 'Gym access preference'),
(86, 1, 'Spa treatment preference'),
(87, 1, 'Free Wi-Fi request'),
(88, 1, 'Breakfast included'),
(89, 1, 'Late-night food delivery option'),
(90, 1, 'Childcare service request'),
(51, 2, 'Non-smoking room preference'),
(52, 2, 'Seating with extra space'),
(53, 2, 'No spicy food preference'),
(54, 2, 'Accessible room for mobility impairment'),
(55, 2, 'Room temperature control preference'),
(56, 2, 'Near business center preference'),
(57, 2, 'Early flight check-in preference'),
(58, 2, 'Free airport shuttle service'),
(59, 2, 'Luggage storage option'),
(60, 2, 'Booking for anniversary celebration'),
(61, 2, 'Room with kitchen facilities'),
(62, 2, 'Sustainable eco-friendly room'),
(63, 2, 'Personalized room service preferences'),
(64, 2, 'Car rental service request'),
(65, 2, 'Room with adjustable lighting'),
(66, 2, 'Complimentary bottled water request'),
(67, 2, 'Accessible public transportation nearby'),
(68, 2, 'Business room setup'),
(69, 2, 'Extra towels and toiletries request'),
(70, 2, 'Elevator access preference'),
(71, 2, 'Room with in-room safe request'),
(72, 2, 'Private beach access request'),
(73, 2, 'Family-friendly activities request'),
(74, 2, 'Express check-out preference'),
(75, 2, 'Vegetarian restaurant preference'),
(76, 2, 'Airport VIP lounge access'),
(77, 2, 'Special birthday package request'),
(78, 2, 'Personalized hotel gift request'),
(79, 2, 'Upgrade to premium suite request'),
(80, 2, 'No loud noises preference'),
(81, 2, 'Cultural experience request'),
(82, 2, 'Loyalty program membership'),
(83, 2, 'Special event celebration setup'),
(84, 2, 'Access to conference room facilities'),
(85, 2, 'Pet-free dining area request'),
(86, 2, 'Room cleaning at specific time'),
(87, 2, 'Discounted transportation voucher request'),
(88, 2, 'Tennis court reservation request'),
(89, 2, 'Guided city tour request'),
(90, 2, 'Health and wellness session request');

-- Guide
INSERT INTO Guide (ProviderId, CNIC, DestTravelled, TripsGuided)
VALUES
(3, '18247-7281094-7', 120, 25),
(4, '27195-3482013-5', 90, 18),
(5, '31445-9812274-0', 150, 30),
(6, '42101-5674321-9', 200, 40),
(7, '46329-1562987-0', 110, 22),
(8, '52312-6823597-6', 85, 20),
(9, '56378-5926378-1', 130, 27),
(10, '65123-2049312-4', 160, 33),
(11, '78234-6719485-8', 95, 19),
(12, '89231-1059321-0', 140, 28);


SELECT * FROM Administrator;
SELECT * FROM Traveler;
SELECT * FROM Operator;
SELECT * FROM TripCategory;
SELECT * FROM Trip;
SELECT * FROM TripDescription;
SELECT * FROM CancellationPolicy;
SELECT * FROM Booking;
SELECT * FROM TravelHistory;

SELECT * FROM TravelerPreferences;
SELECT * FROM Passes;
SELECT * FROM Payment;
SELECT * FROM ServiceProvider;
SELECT * FROM Services;
SELECT * FROM OperatorAssignServicesToTraveler;
SELECT * FROM Hotel;
SELECT * FROM Transport;
SELECT * FROM Reviews;
SELECT * FROM GuidePersonalInfo;
SELECT * FROM Guide;
