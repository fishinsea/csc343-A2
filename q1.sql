SET search_path TO bnb, public;
CREATE OR REPLACE VIEW requests AS 
SELECT
        traveler.travelerid, email, extract(year FROM startdate) as year,
        COUNT(requestid) numRequests
FROM traveler 
INNER JOIN bookingrequest
        ON traveler.travelerId = bookingrequest.travelerid
GROUP BY traveler.travelerid, email, year;

CREATE OR REPLACE VIEW bookings AS 
SELECT
        traveler.travelerid, email, extract(year FROM startdate) as year,
        COUNT(listingid) numBooking
FROM traveler
INNER JOIN booking
        ON traveler.travelerId = booking.travelerId
GROUP BY traveler.travelerid, email, year;

SELECT 
		requests.travelerid, requests.email, requests.year,
        numRequests, numBooking
FROM requests 
FULL OUTER JOIN bookings
		ON requests.travelerId = bookings.travelerId
		AND requests.year = bookings.year
ORDER BY requests.year DESC;

--SELECT * FROM travelers
--WHERE year >= extract(year FROM CURRENT_DATE) - 10;