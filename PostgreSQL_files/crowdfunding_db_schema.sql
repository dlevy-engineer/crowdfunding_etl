-- drop tables if they already exist
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;

-- create tables corresponding with each csv file in the 'Resources' directory
CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY(contact_id)
);

CREATE TABLE category (
	category_id VARCHAR(5) NOT NULL,
	category VARCHAR(50) NOT NULL,
	PRIMARY KEY(category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(50) NOT NULL,
	PRIMARY KEY(subcategory_id)
);

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(200) NOT NULL,
	goal INT NOT NULL,
	pledged INT NOT NULL,
	outcome VARCHAR(20) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	PRIMARY KEY(cf_id),
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY(category_id) REFERENCES category (category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id)
);