CREATE OR REPLACE PROCEDURE proc_czysc_logi(p_potwierdzenie VARCHAR2) IS
    e_brak_zgody EXCEPTION;
BEGIN
    IF p_potwierdzenie != 'TAK' THEN RAISE e_brak_zgody; END IF;
    
    DELETE FROM logi;
    INSERT INTO logi (operacja, szczegoly) VALUES ('CLEANUP', 'Wyczyszczono historię');
    COMMIT;
EXCEPTION
    WHEN e_brak_zgody THEN
        DBMS_OUTPUT.PUT_LINE('Musisz wpisac TAK, aby wyczyscic logi!');
END;