CREATE TABLE `difficulties` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` NOT NULL VARCHAR(100),
	UNIQUE KEY `name_index` (`name`) USING BTREE,
	PRIMARY KEY (`id`)
);

CREATE TABLE `questions` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`question` TEXT NOT NULL,
	`answer_1` TEXT NOT NULL,
  `answer_2` TEXT NOT NULL,
  `answer_3` TEXT NOT NULL,
  `answer_4` TEXT NOT NULL,
	`answer` INT NOT NULL,
  `difficulty` INT NOT NULL,
	PRIMARY KEY (`id`),
  FOREIGN KEY (difficulty) REFERENCES difficulties(id)
);

CREATE TABLE `highscores` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` TEXT NOT NULL,
	`score` INT NOT NULL,
	`when` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
);