CREATE TABLE `vehicle` (
  `vehicle_id` varchar(30) NOT NULL DEFAULT '',
  `vehicle_model` varchar(30) DEFAULT NULL,
  `operator_id` varchar(30) DEFAULT NULL,
  `ready_status` binary(30) DEFAULT NULL,
  `inventory_status` binary(30) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `vehicleModel` (`vehicle_model`),
);
