-- Enter the player ID and calculate the age.
USE premier_league

DELIMITER $$

CREATE FUNCTION CalculateAge(birthday DATE) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE today DATE;
    DECLARE bornYear INT;
    DECLARE thisYear INT;
    DECLARE age INT;

    -- Get today's date
    SET today = CURDATE();
    -- Extract the year from the birth date and today's date
    SET bornYear = YEAR(birthday);
    SET thisYear = YEAR(today);
    
    -- Calculate preliminary age
    SET age = thisYear - bornYear;
    
    -- Adjust the age if the current date is before the birth date
    IF DATE_FORMAT(today, '%m%d') < DATE_FORMAT(birthday, '%m%d') THEN
        SET age = age - 1;
    END IF;
    
    RETURN age;
END $$

DELIMITER ;
