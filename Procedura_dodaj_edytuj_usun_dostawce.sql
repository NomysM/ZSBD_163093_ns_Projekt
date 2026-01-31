CREATE OR REPLACE PROCEDURE proc_dodaj_dostawce(p_nazwa VARCHAR2) IS
BEGIN
    INSERT INTO DOSTAWCY (nazwa) VALUES (p_nazwa);
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE proc_edytuj_dostawce(p_id NUMBER, p_nazwa VARCHAR2) IS
BEGIN
    UPDATE DOSTAWCY SET nazwa = p_nazwa
    WHERE dostawca_id = p_id;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE proc_usun_dostawce(p_id NUMBER) IS
BEGIN
    DELETE FROM DOSTAWCY
    WHERE dostawca_id = p_id;
    COMMIT;
END;