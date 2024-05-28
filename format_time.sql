DELIMITER //
CREATE FUNCTION format_time(seconds INT) RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
 DECLARE days INT;
 DECLARE hours INT;
 DECLARE minutes INT;
 DECLARE remaining_seconds INT;
 DECLARE result VARCHAR(255);

 SET days = FLOOR(seconds / 86400);
 SET seconds = seconds % 86400;
 SET hours = FLOOR(seconds / 3600);
 SET seconds = seconds % 3600;
 SET minutes = FLOOR(seconds / 60);
 SET remaining_seconds = seconds % 60;
 
 SET result = CONCAT(
     days, ' days ',
     hours, ' hours ',
     minutes, ' minutes ',
     remaining_seconds, ' seconds'
     );
     
  RETURN result;
  END //
DELIMITER ;
