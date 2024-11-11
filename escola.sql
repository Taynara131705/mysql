CREATE DATABASE escola;

CREATE TABLE estudante(
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    nomecompleto VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    senha VARCHAR(50) NOT NULL,
    creat_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);


INSERT INTO estudante (nomecompleto, email, senha )
VALUES ("Ana Claudia Cunha", "ana.cscunha1@senacsp.edu.br", "123"),
("Alexandro Luciano", "alexandro.ljesus@senacsp.edu.br", "456");

