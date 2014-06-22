CREATE DATABASE  IF NOT EXISTS `movies` 
USE `movies`;

DROP TABLE IF EXISTS `movie_actors`;

CREATE TABLE `movie_actors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MOVIE_ID` int(11) DEFAULT NULL,
  `ACTOR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MOVIE_idx` (`MOVIE_ID`),
  KEY `FK_ACTOR_idx` (`ACTOR_ID`),
  CONSTRAINT `FK_MOVIE` FOREIGN KEY (`MOVIE_ID`) REFERENCES `MOVIE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ACTOR` FOREIGN KEY (`ACTOR_ID`) REFERENCES `actor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

LOCK TABLES `movie_actors` WRITE;
INSERT INTO `movie_actors` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,3,7);
UNLOCK TABLES;
