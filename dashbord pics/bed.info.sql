CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `bed_info` AS
    SELECT 
        COUNT(`bd`.`bed_id`) AS `beds`,
        `ro`.`room_id` AS `room_id`,
        `bd`.`status` AS `status`,
        `ro`.`room_type` AS `room_type`
    FROM
        (`beds` `bd`
        LEFT JOIN `rooms` `ro` ON ((`bd`.`room_id` = `ro`.`room_id`)))
    GROUP BY `ro`.`room_id` , `bd`.`status` , `ro`.`room_type`