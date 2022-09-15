CREATE TABLE `difficulties` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
  `points` INT NOT NULL,
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
  `bible` TEXT NOT NULL DEFAULT '',
  `difficulty` INT NOT NULL,
	PRIMARY KEY (`id`),
  FOREIGN KEY (difficulty) REFERENCES difficulties(id)
);

CREATE TABLE `highscores` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` TEXT NOT NULL,
	`score` INT NOT NULL,
  `difficulty` VARCHAR(45) NOT NULL,
	`when` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	FOREIGN KEY (difficulty) REFERENCES difficulties(id)
);

CREATE TABLE `question_stats` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`question` INT NOT NULL,
  `answer` INT NOT NULL,
	`when` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `correct` TINYINT(1) NOT NULL,
  FOREIGN KEY (question) REFERENCES questions(id) ON DELETE CASCADE,
	PRIMARY KEY (`id`)
);
