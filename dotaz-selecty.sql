 SELECT meno,priezvisko FROM zakaznik ORDER BY priezvisko /* ORDER BY */
 SELECT cena,status FROM produkty WHERE cena < 30;
/* Vyberie status a cena ktorý majú cenu pod 30 */

SELECT priezvisko,meno, pohlavie FROM zakaznik WHERE pohlavie LIKE 'm%';
/*Vyberie užívateľov ktorý majú mužské pohlavie*/

SELECT * FROM obchod ORDER BY produkty;
/*Zoradí sa to podľa produktov. */

SELECT * FROM ucet WHERE heslo LIKE 'x%';
/*Vyberie učet ktorým heslo začína na x  */

SELECT * FROM blok WHERE mesto LIKE '%5';
/*Vyberie mesto ktoré je zakončene na m */

SELECT nazov_produktu FROM produkty WHERE cena > 60 ORDER BY nazov_produktu;
/*Vyberie nazov produktu nad 60 */

SELECT meno, COUNT(*) AS tu FROM ucet GROUP BY meno;
/*Napíše mena od abecedy */

SELECT cena, nazov_produktu, COUNT(*) AS status FROM produkty GROUP BY cena HAVING cena > 60;
/*spočíta koľko produktov ma cenu nad 60  a status*/

SELECT meno,pohlavie, COUNT(*) AS pocet FROM zakaznik GROUP BY bydlisko;
/*Vypíše meno,pohlavie zoradene bydliskom. */

SELECT meno, priezvisko FROM zakaznik JOIN obchod ON zakaznik.id = id_zakaznik WHERE datum_narodenia > '1998-10-10' GROUP BY priezvisko;

/*Vypíše meno a priezvisko kde datum narodenia je viac ako 1998  */
SELECT datum_predaja FROM blok JOIN obchod ON blok.id=obchod.blok WHERE cena > 20 GROUP BY mesto;

/*Vypíše datum predaja kde cena je vyššia ako 20 */


 
	
