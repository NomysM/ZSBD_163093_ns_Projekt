CREATE OR REPLACE VIEW raport_dostawcow AS
SELECT
	d.nazwa AS dostawca,
    COUNT (p.produkt_id) AS ilosc_roznych_produktow,
    NVL (SUM(p.stan_magazynowy), 0) AS laczna_ilosc_sztuk
FROM DOSTAWCY d
LEFT JOIN PRODUKTY p ON d.dostawca_id = p.dostawca_id
GROUP BY d.nazwa;
