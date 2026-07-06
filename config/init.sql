CREATE DATABASE IF NOT EXISTS `sms_db`;
USE `sms_db`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inseriamo un utente amministratore di test (In chiaro, pessima pratica As-Is!)
INSERT INTO `users` (`username`, `password`, `role`) VALUES ('admin', 'admin123', 'admin');
