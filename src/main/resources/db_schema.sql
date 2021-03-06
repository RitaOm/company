CREATE DATABASE company; 
use company;
CREATE TABLE unit (id INT UNSIGNED NOT NULL AUTO_INCREMENT, name CHAR(50) NOT NULL, PRIMARY KEY (id));
CREATE TABLE employee (id INT UNSIGNED NOT NULL AUTO_INCREMENT, full_name CHAR(50) NOT NULL, id_unit INT UNSIGNED NOT NULL, status CHAR(30) NOT NULL, country CHAR(25) NOT NULL, city CHAR(25) NOT NULL, address_line CHAR(30) NOT NULL, post_code CHAR(10) NOT NULL, telephone CHAR(20) NOT NULL, PRIMARY KEY (id), FOREIGN KEY (id_unit) REFERENCES unit(id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE employee_personal_info (id_employee INT UNSIGNED NOT NULL, birth_date TIMESTAMP NOT NULL, sex ENUM('male','female','unisex','somebody_else') NOT NULL, INDEX(id_employee), FOREIGN KEY (id_employee) REFERENCES employee(id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE project (id INT UNSIGNED NOT NULL AUTO_INCREMENT, name CHAR(50) NOT NULL, id_unit INT UNSIGNED NOT NULL, PRIMARY KEY (id), FOREIGN KEY (id_unit) REFERENCES unit(id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE position (id_project INT UNSIGNED NOT NULL, id_employee INT UNSIGNED NOT NULL, FOREIGN KEY (id_project) REFERENCES project(id) ON UPDATE CASCADE ON DELETE CASCADE, FOREIGN KEY (id_employee) REFERENCES employee(id) ON UPDATE CASCADE ON DELETE CASCADE); 
