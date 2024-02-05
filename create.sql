CREATE DATABASE car_store;
#DROP DATABASE car_store;
CREATE TABLE car_store.cars(id INT AUTO_INCREMENT Primary Key,
					vin VARCHAR(17),
					manufacturer VARCHAR(30),
					model VARCHAR(30),
                    year VARCHAR(30),
                    color VARCHAR(30));
CREATE TABLE car_store.customer(id INT AUTO_INCREMENT Primary Key,
							cust_id INT,
							cust_name VARCHAR(60),
                            cust_phone VARCHAR(20),
                            cust_email VARCHAR(60),
                            cust_address VARCHAR(60),
                            cust_city VARCHAR(60),
                            cust_state VARCHAR(60),
                            cust_country VARCHAR(60),
                            cust_zipcode INT(7));
CREATE TABLE car_store.salespersons(id INT AUTO_INCREMENT Primary Key,
									staff_id INT,
									name VARCHAR(60),
                                    store VARCHAR(60));
CREATE TABLE car_store.invoices(id INT AUTO_INCREMENT Primary Key,
								invoice_number INT,
								date VARCHAR(10),
                                car INT,
                                customer INT,
                                salesperson INT,
								FOREIGN KEY (car) REFERENCES car_store.cars(id),
                                FOREIGN KEY (customer) REFERENCES car_store.customer(id),
                                FOREIGN KEY (salesperson) REFERENCES car_store.salespersons(id));
                                
SELECT * FROM car_store.invoices