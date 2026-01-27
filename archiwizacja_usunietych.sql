CREATE OR REPLACE TRIGGER trg_produkty_arch
BEFORE DELETE ON produkty
FOR EACH ROW
BEGIN
    INSERT INTO archiwum_produktow (stara_nazwa, stara_cena)
    VALUES (:OLD.nazwa, :OLD.cena);
    
    INSERT INTO logi (operacja, szczegoly) 
    VALUES ('DELETE', 'Archiwizacja: ' || :OLD.nazwa);
END;