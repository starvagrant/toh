DROP TABLE IF EXISTS `data_type`;

CREATE TABLE `data_type` (
  `data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_name` varchar(24) DEFAULT NULL,
  `data_desc` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(128) NOT NULL DEFAULT 'name',
  `tag_url` varchar(512) NOT NULL DEFAULT 'https://duckduckgo.com',
  `data_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `data_id` (`data_id`),
  CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`data_id`) REFERENCES `data_type` (`data_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tags_in_text`;

CREATE TABLE `tags_in_text` (
  `text_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `tag_type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`text_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  KEY `text_id` (`text_id`),
  CONSTRAINT `tags_in_text_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tags_in_text_ibfk_1` FOREIGN KEY (`text_id`) REFERENCES `text` (`text_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `text`;

CREATE TABLE `text` (
  `text_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text_name` varchar(128) NOT NULL DEFAULT 'name',
  `text` mediumtext NOT NULL,
  `data_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`text_id`),
  KEY `data_id` (`data_id`),
  CONSTRAINT `text_ibfk_1` FOREIGN KEY (`data_id`) REFERENCES `data_type` (`data_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
