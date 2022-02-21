---
layout: default
title: Témakiírások
nav_order: 3
permalink: temak
---

# Témakiírások

## Kvantumalgoritmusok

[Link](https://doktori.hu/index.php?menuid=195&lang=HU&tk_ID=100066)

A 70-es évek végén fizikusok vetették fel, hogy mivel a kvantummechanikai jelenségeket nem sikerült számítógéppel hatékonyan szimulálniuk, talán egy kvantumhatásokra is építő géppel gyorsabban lehetne bizonyos problémákat megoldani. Ebből az ötletből született a számítás egy újabb matematikai modellje, a kvantum Turing-gép.

A kvantum Turing-gép egyik legszembeötlőbb képessége, hogy egyszerre exponenciálisan sok számítási ágat tud követni, de az a nehézség, hogy a modell (és a fizika) szabályai szerint, ezekből nem egyszerű az eredményt (pl. van-e elfogadó számítási ág) kinyerni. Az új modell a szokásos algoritmikus megoldásoktól eltérő ötleteket, technikákat igényel. Az erejét mutatja, hogy pl. kvantum Turing-géppel egy szám prímtényezői polinom időben megtalálhatók (klasszikus Turing-géppel nem ismert ilyen algoritmus), illetve, hogy n rendezetlen elem közötti keresés Θ(√n) időben megvalósítható. A témakör nagy kérdése, hogy milyen feladatokra lehet a klasszikus megoldásnál lényegesen hatékonyabb kvantumaloritmusokat adni, és melyek azok a feladatok, ahol ez a technika nem segít.

A kutatás célja a meglevő algoritmikus módszerek vizsgálata, továbbfejlesztése, alkalmazhatósági körük vizsgálata. Például gráfokban a klasszikus párosítási, feszítőfa vagy folyamalgoritmusok kvantumosítása, a gyorsíthatóság mértékének meghatározása.

## Kvadratikus optimalizálás adiabatikus kvantumszámítógépen

A QUBO a Quadratic Unconstrained Binary Optimization rövidítése, ami egy a lineáris programozáshoz hasonló, annál általánosabb optimalizációs technika, mivel megengedi a négyzetes tagok jelenlétét is a célfüggvényben. A QUBO-ban felírt optimalizációs feladatok megoldására alkalmasak az adiabatikus kvantumszámítógépek, melyek fizikai folyamatok segítségével végzik a számítást. A feladat nehézsége, hogy a gyakorlatban nem lehet tetszőleges bonyolultságú célfüggvényt felírni, erősen korlátos a változók közötti megengedett kapcsolatok száma, azaz hogy hány másik változóval szerepelhetnek szorzatban. A változók közötti kapcsolatokat ábrázolhatjuk gráfként, ezt a gráfot kell az adiabatikus kvantumszámítógép hardvere által meghatározott másik gráfba beágyazni, azaz úgy elhelyezni a csúcsokat, hogy minden szükséges él létezzen. Sok esetben ez csak úgy megvalósítható, ha magát a célfüggvényt is ügyesen írjuk fel, új változókat és speciális tagokat bevezetve.

## Kvantumséták, kvantumos keresési algoritmusok

A klasszikus sétákat (gráfbolyongásokat) számos területen használják. Segítségükkel modelleznek véletlen folyamatokat, továbbá nehéz algoritmuselméleti, keresésként megfogalmazott feladatok megoldására is alkalmazhatók. Ilyenkor a véletlen bevezetésével gyorsabban adhatnak (közelítő) eredményt és nagyobb méretű bemenetek hatékonyabb feldolgozására is alkalmasak lehetnek. Például a "Boolean satisfiability problem", röviden SAT egy közismerten NP-teljes probléma, melyet megfogalmazhatunk keresésként: Elképzelhetjük a változók összes lehetséges értékadását a probléma keresési terének, azaz a gráf csúcsainak. Egy lehetséges lépés, egy él a gráfban ekkor egyetlen változó értékének negálása. Ügyes szabályok alapján lépkedve ebben a gráfban a véletlen próbálkozáshoz képest gyorsabban található közel optimális megoldás és az ilyen jellegű megoldók a gyakorlatban jól tudnak működni.

A klasszikus séták kvantumosítására többféle módszer is létezik, melyek vizsgálata ígéretesnek tűnik, hiszen klasszikus társaiktól merőben eltérő tulajdonságokat mutatnak. Ezen felül a Grover-féle kvantumos keresési algoritmus is felfogható egy speciális kvantumsétaként.
