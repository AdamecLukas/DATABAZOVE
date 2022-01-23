 SELECT meno,priezvisko FROM zakaznik ORDER BY priezvisko /* ORDER BY */
 SELECT cena,status FROM produkty WHERE cena < 30;
/* Vyberie mená užívateľov ktorý majú balance pod 3000 */
SELECT priezvisko,meno, pohlavie FROM zakaznik WHERE pohlavie LIKE 'm%';
/Vyberie užívateľov ktorý majú mužské pohlavie*/
SELECT * FROM obchod ORDER BY produkty;
/*Zoradí karty podľa bezpečnostného kódu */
SELECT * FROM ucet WHERE heslo LIKE 'x%';
/*Vyberie užívateľov ktorým meno začína na J  */
SELECT * FROM blok WHERE mesto LIKE '%5';
/Vyberie užívateľov ktorý majú emailovú adresu zakončenú na m /
SELECT nazov_produktu FROM produkty WHERE cena > 1000 ORDER BY nazov_produktu;
/Vyberie ako veľa musí zakazník zaplatiť /
SELECT id_zakaznik, COUNT() AS sposob_platby FROM ucet GROUP BY id_zakaznik;
/Napíše počet osôb ktorí chodia to tej istej banky zoradené id banky/
SELECT cena, nazov_produktu, COUNT() AS status FROM produkty GROUP BY cena HAVING cena > 60;
/spočíta koľko zákazníkov ma vek nad 50 rokov a akého je pohlavia/
SELECT bydlisko, type, COUNT() AS datum_narodenia FROM zakaznik GROUP BY bydlisko;
/Vypíše expiračné udaje a typ karty /

SELECT name, bank_name FROM account JOIN bank ON bank.id = bank_id WHERE balance > 10000 GROUP BY NAME;
/Vypíše meno a banku všetkých čo majú v banke viac ako 10000 /
SELECT fullname, START, end FROM loan JOIN customer ON loan.id WHERE START > '2020-09-01' GROUP BY fullname;
/Vypíše meno a štart a koniec pôžičky ktoré začali neskôr ako 2020-09-01 /
SELECT name FROM account WHERE bank_id = (SELECT id FROM bank WHERE bank_name LIKE 'Slovenksa Sporitelna');
/Vyberie meno zákazníkov ktorý sú v Slovenskej Sporitelni/
SELECT name FROM account WHERE bank_id = (SELECT id FROM bank WHERE bank_name LIKE 'Prima Banka');
 /Vyberie meno zákazníkov ktorý sú v Prima Banke*/
	
