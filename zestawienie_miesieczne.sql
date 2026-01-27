CREATE OR REPLACE PROCEDURE proc_generuj_raport IS
BEGIN
    INSERT INTO podsumowania_sprzedazy (okres, kategoria, suma_wartosci)
    SELECT DISTINCT 
        TO_CHAR(SYSDATE, 'YYYY-MM'), 
        kategoria,
        SUM(cena * stan_magazynowy) OVER (PARTITION BY kategoria)
    FROM produkty;
    
    INSERT INTO logi (operacja, szczegoly) VALUES ('RAPORT', 'Zestawienie gotowe');
    COMMIT;
END;