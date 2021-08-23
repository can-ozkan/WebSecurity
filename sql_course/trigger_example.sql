DELIMETER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH FOR BEGIN
        INSERT INTO trigger_test VALUES('added new employe');
    END$$

CREATE
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH FOR BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$

CREATE 
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee 
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added a male employee');
        ELSEIF NEW.sex = 'F' THEN 
            INSERT INTO trigger_test VALUES('added a female employee');
        ELSE 
            INSERT INTO trigger_test VALUES('other employee is added');
        END IF
    END$$
DELIMETER ;

