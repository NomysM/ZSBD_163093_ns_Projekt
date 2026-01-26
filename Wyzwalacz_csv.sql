CREATE OR REPLACE TRIGGER trg_produkty_log
AFTER INSERT ON produkty
FOR EACH ROW
BEGIN
    INSERT INTO logi (operacja, szczegoly) 
    VALUES ('INSERT', 'Dodano: ' || :NEW.nazwa);
END;