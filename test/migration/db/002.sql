-- +migrate Up
CREATE TABLE `NewRecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime  default current_timestamp,
  `updated_at` timestamp default current_timestamp on update current_timestamp,
  PRIMARY KEY (`id`)
);

ALTER TABLE `Record` ADD newcol varchar(255);

-- +migrate Down
DROP TABLE `NewRecord`;
ALTER TABLE `Record` DROP newcol;
