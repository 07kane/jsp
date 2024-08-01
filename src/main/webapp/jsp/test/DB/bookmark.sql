CREATE TABLE `bookmark`
(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `url` VARCHAR(32) NOT NULL,
    `createAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updateAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=innoDB DEFAULT CHARSET=utf8mb4;

DESC `bookmark`;

INSERT INTO `bookmark`
(`name`, `url`)
VALUES
('마론달', 'http://marondal.com'),
('구글', 'http://www.google.com'),
('네이버', 'http://www.naver.com'),
('다음', 'http://www.daum.net');

DROP TABLE `bookmark`;

SELECT * FROM `bookmark`;