TRUNCATE TABLE Traveler CASCADE;
TRUNCATE TABLE Homeowner CASCADE;
TRUNCATE TABLE Listing CASCADE;
TRUNCATE TABLE BookingRequest CASCADE;
TRUNCATE TABLE Booking CASCADE;
TRUNCATE TABLE HomeownerRating CASCADE;
TRUNCATE TABLE CityRegulation CASCADE;
TRUNCATE TABLE TravelerRating CASCADE;

INSERT INTO Traveler VALUES (1000, 'scraper', 'f1', null);
INSERT INTO Traveler VALUES (1001, 'n2', 'f2', 'fn2@domain.com');
INSERT INTO Traveler VALUES (1002, 'n3', 'f3', 'fn3@domain.com');
INSERT INTO Traveler VALUES (1003, 'n4', 'f4', 'fn3@domain.com');
INSERT INTO Traveler VALUES (1004, 'scraper', 'f4', 'fn4@domain.com');

INSERT INTO Homeowner VALUES (4000, 'hn1', 'hf1', 'hfn1@domain.com');
INSERT INTO Homeowner VALUES (4001, 'hn2', 'hf2', 'hfn2@domain.com');

INSERT INTO Listing VALUES (3000, 'condo', 2, 4, 'gym', 'c1', 4000);
INSERT INTO Listing VALUES (3001, 'house', 2, 4, 'gym', 'c2', 4001);

INSERT INTO BookingRequest VALUES (6000, 1000, 3000, '2016-10-05', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6001, 1000, 3000, '2016-10-16', 4, 1, 120);
INSERT INTO BookingRequest VALUES (6002, 1001, 3001, '2012-01-05', 10, 1, 75);
INSERT INTO BookingRequest VALUES (6003, 1003, 3000, '2012-01-05', 10, 1, 75);
INSERT INTO BookingRequest VALUES (6005, 1000, 3000, '2007-10-16', 4, 1, 120);
INSERT INTO BookingRequest VALUES (6010, 1001, 3001, '2002-01-05', 11, 1, 75);
INSERT INTO BookingRequest VALUES (6011, 1000, 3000, '2016-10-06', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6012, 1000, 3000, '2016-10-07', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6013, 1000, 3000, '2016-10-08', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6014, 1000, 3000, '2016-10-09', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6015, 1000, 3001, '2016-10-10', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6016, 1000, 3001, '2016-10-11', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6017, 1000, 3000, '2016-10-12', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6018, 1000, 3000, '2016-10-13', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6019, 1000, 3000, '2016-10-14', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6020, 1000, 3000, '2016-10-15', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6021, 1000, 3000, '2016-10-23', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6022, 1000, 3000, '2016-10-17', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6023, 1000, 3000, '2016-10-18', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6024, 1000, 3000, '2016-10-19', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6025, 1000, 3000, '2016-10-20', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6026, 1000, 3000, '2016-10-21', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6027, 1000, 3000, '2016-10-22', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6030, 1004, 3000, '2016-10-06', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6031, 1004, 3000, '2016-10-07', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6032, 1004, 3000, '2016-10-08', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6033, 1004, 3000, '2016-10-09', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6034, 1004, 3001, '2016-10-10', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6035, 1004, 3001, '2016-10-11', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6036, 1004, 3000, '2016-10-12', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6037, 1004, 3000, '2016-10-13', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6038, 1004, 3000, '2016-10-14', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6039, 1004, 3000, '2016-10-15', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6040, 1004, 3000, '2016-10-23', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6041, 1004, 3000, '2016-10-17', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6042, 1004, 3000, '2016-10-18', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6043, 1004, 3000, '2016-10-19', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6044, 1004, 3000, '2016-10-20', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6045, 1004, 3000, '2016-10-21', 2, 1, 100);
INSERT INTO BookingRequest VALUES (6046, 1004, 3000, '2016-10-22', 2, 1, 100);

INSERT INTO Booking VALUES (3000, '2016-10-05', 1003, 2, 1, 90);
INSERT INTO Booking VALUES (3001, '2016-01-05', 1001, 5, 1, 120);

