CREATE OR REPLACE PROCEDURE proc_dodaj_produkt(p_nazwa VARCHAR2, p_kategoria VARCHAR2, p_cena NUMBER, p_stan NUMBER, p_dostawca_id NUMBER) IS
BEGIN
    INSERT INTO PRODUKTY (nazwa, kategoria, cena, stan_magazynowy, dostawca_id)
    VALUES (p_nazwa, p_kategoria, p_cena, p_stan, p_dostawca_id);
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE proc_edytuj_produkt(p_id NUMBER, p_cena NUMBER, p_stan NUMBER) IS
BEGIN
    UPDATE PRODUKTY SET cena = p_cena, stan_magazynowy = p_stan
    WHERE produkt_id = p_id;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE proc_usun_produkt(p_id NUMBER) IS
BEGIN
    DELETE FROM PRODUKTY
    WHERE produkt_id = p_id;
    COMMIT;
END;