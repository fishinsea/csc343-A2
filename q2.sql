--DONE
SET search_path TO bnb, public;

CREATE OR REPLACE VIEW travreq AS 
	SELECT traveler.travelerid, COUNT(requestid) AS numreq 
	FROM traveler LEFT OUTER JOIN
		bookingrequest
		ON traveler.travelerid=bookingrequest.travelerid
	GROUP BY traveler.travelerid;
	
CREATE OR REPLACE VIEW avgreq AS 
	SELECT 10 * AVG(numreq) AS average FROM travreq;
	
CREATE OR REPLACE VIEW bookedtrav AS 
	SELECT booking.travelerid FROM traveler INNER JOIN booking ON traveler.travelerid=booking.travelerid;
	
CREATE OR REPLACE VIEW nobook AS 
	SELECT travelerid FROM traveler EXCEPT SELECT travelerid FROM bookedtrav;
	
CREATE OR REPLACE VIEW manyreq AS 
	SELECT travelerid FROM bookingrequest GROUP BY travelerid HAVING COUNT(requestid) > (SELECT average FROM avgreq);
	
CREATE OR REPLACE VIEW scraperid AS 
	SELECT travelerid FROM manyreq INTERSECT SELECT travelerid FROM nobook;
	
CREATE OR REPLACE VIEW scraper AS 
	SELECT traveler.travelerid, firstname || ' ' || surname AS name, email FROM traveler INNER JOIN scraperid on traveler.travelerid = scraperid.travelerid;

CREATE OR REPLACE VIEW scraper2 AS 
	SELECT scraper.travelerid, scraper.name, COALESCE(scraper.email, 'unknown') AS email FROM scraper;

CREATE OR REPLACE VIEW cities AS 
	SELECT bookingrequest.travelerid, bookingrequest.listingid, city FROM bookingrequest INNER JOIN listing ON bookingrequest.listingid = listing.listingid;
	
CREATE OR REPLACE VIEW cityscraper AS 
	SELECT name, city FROM cities NATURAL JOIN scraper2;

CREATE OR REPLACE VIEW hey AS 
	SELECT name, city, COUNT(city) num
	FROM cityscraper
	GROUP BY name, city;
	
CREATE OR REPLACE VIEW wrong AS
	SELECT a.name, a.city, a.num FROM 
	hey a CROSS JOIN hey b
	WHERE a.name=b.name AND a.city!=b.city AND a.num<b.num;
	
CREATE OR REPLACE VIEW ayy AS
	SELECT * FROM hey EXCEPT SELECT * FROM wrong;
	
SELECT 
	travelerId, 
	ayy.name,
	email,
	city mostRequestedCity,
	num numRequests
FROM scraper2 
	INNER JOIN ayy
	ON scraper2.name=ayy.name
ORDER BY
	numRequests DESC,
	travelerid;