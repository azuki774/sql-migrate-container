-- +migrate Up
CREATE TABLE `Record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime  default current_timestamp,
  `updated_at` timestamp default current_timestamp on update current_timestamp,
  PRIMARY KEY (`id`)
);

-- +migrate Down
DROP TABLE `Record`;
