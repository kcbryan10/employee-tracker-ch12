DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE department (
    id INT USIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE role (
    id INT USIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL USIGNED NOT NULL,
    department_id INT USIGNED NOT NULL,
    INDEX dep_ind (department_id),
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT USIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id VARCHAR(30) NOT NULL, 
    INDEX role_ind (role_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    manager_id  INT USIGNED,
    INDEX man_ind (manager_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
use employee;
INSERT INTO department
    (name)
VALUES
    ('Operations')
    ('Analytics')
    ('Marketing')
    ('Executive')
INSERT INTO role 
    (title, salary, department_id)
VALUES
    ('General Manager', 150000, 1),
    ('Worker', 50000, 1)
    ('Analyst', 80000 , 2),
    ('Lead Analyst', 120000 , 2),
    ('Marketing manager', 130000 , 3),
    ('Marketing Team Member', 90000 ,3),
    ('CEO', 300000 , 4),
    ('Secretary', 60000 , 4);
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Bryan', 'Keller', 4, 1)
    ('Connor', 'Vaughan', 4, NULL),
    ('Jamie', 'Foglesong', 1, 2),
    ('Donald', 'Ford', 1, NULL),
    ('Trey', 'Kirk', 3, 3),
    ('Troyaun', 'Ray', 3, NULL),
    ('Garin', 'Stone', 2, 4),
    ('Brock', 'Beashore', 2, NULL);

    