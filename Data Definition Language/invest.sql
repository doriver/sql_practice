
CREATE TABLE `invest_post` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `userId` int NOT NULL,
	`userNickName` varchar(16) NOT NULL,
	`investStyle` varchar(16) NOT NULL,
	`stockItemName` varchar(32) NOT NULL,
	`investmentOpinion` varchar(16),
    `investmentProcess` varchar(16) NOT NULL,
    `content` text NOT NULL,
	`imagePath` varchar(128),
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `comment` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `type` varchar(16) NOT NULL,
	`postId` int NOT NULL,
	`userId` int NOT NULL,
	`userNickName` varchar(16) NOT NULL,
	`content` varchar(256),
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `like` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `type` varchar(16) NOT NULL,
	`postId` int NOT NULL,
	`userId` int NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `gossip_post` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
	`userId` int NOT NULL,
    `userNickName` varchar(16) NOT NULL,
	`corporation` varchar(32) NOT NULL,
    `content` text NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
	`updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `local_post` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
	`userId` int NOT NULL,
    `userNickName` varchar(16) NOT NULL,
	`userLocation` varchar(64),
    `content` text NOT NULL,
    `imagePath` varchar(128),
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
	`updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `user` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
	`loginId` varchar(16) NOT NULL,
    `password` varchar(32) NOT NULL,
    `nickName` varchar(16) NOT NULL,
    `email` varchar(64) NOT NULL,
    `profileImage` varchar(128),
    `profileStatusMessage` varchar(128),
	`location` varchar(64),
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
	`updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

