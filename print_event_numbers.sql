DELIMITER //

CREATE PROCEDURE print_even_numbers()
BEGIN
    DECLARE num INT DEFAULT 2;

    WHILE num <= 10 DO
        SELECT num;
        SET num = num + 2;
    END WHILE;
END //

DELIMITER ;
