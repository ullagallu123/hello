CREATE DATABASE IF NOT EXISTS java_crud_app;
USE crud_app;

CREATE TABLE IF NOT EXISTS product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL
);

CREATE USER IF NOT EXISTS 'crud'@'%' IDENTIFIED BY 'CrudApp@1';
GRANT ALL ON java_crud_app.* TO 'crud'@'%';
FLUSH PRIVILEGES;
