---
layout: default
title: Publikációk
nav_order: 4
permalink: publikaciok
---

# Publikációk

## Kvadratikus optimalizálás kvantum alapú számítógéppel

| Szerző | [Zalavári Márton](./kapcsolat#zalavári-márton) |
|:-|:-|
| Konzulens | [Dr. Friedl Katalin](./kapcsolat#dr-friedl-katalin) |
| Link | [https://tdk.bme.hu/VIK/modell1/Kvadratikus-optimalizalas-kvantum-alapu](https://tdk.bme.hu/VIK/modell1/Kvadratikus-optimalizalas-kvantum-alapu) |
| Dátum | 2021. november 16. |

A kvadratikus programozás a lineáris programozásnál egy általánosabb technika, hiszen megengedi négyzetes tagok jelenlétét a célfüggvényben és a korlátokban is. Ezzel az alkalmazások körét jóval kibővíti, ugyanakkor az általános feladat megoldása sokkal nehezebbé válik.

Ez a fajta optimalizációs technika többek között azért is érdekes és hasznos, mert ha a változók binárisak és nincsenek további korlátjaink, akkor a probléma megoldásához felhasználható egy kvantumállapotokat használó számítógép, ezzel remélhetőleg jelentősen csökkentve az optimalizáláshoz szükséges időt. A szakirodalom egyszerűen csak QUBO (Quadratic Unconstrained Binary Optimization) néven hivatkozik erre a fajta felírásra.

Gráfban maximális vágást találni közismerten NP-nehéz probléma, ugyanakkor gyakorlati szempontból fontos, hiszen például a tipikus klaszterezési problémák megfogalmazhatók így, ha az adatot gráfként tudjuk reprezentálni.

A maximális vágással kapcsolatos problémákra többféle QUBO felírást is adok, melyeket elméleti és gyakorlati szempontból is összehasonlítóan elemzek. Az elkészített formulákat több szempontból elemzem, például a legegyszerűbb ilyen összehasonlítási metrika a felhasznált változók száma.

A QUBO-k optimalizálásához a D-Wave Ocean nevű programcsomagját használtam fel, mely több lehetőséget kínál a formulák megoldására. A klasszikus megoldók mellett lehetőség van például valódi, a D-Wave Systems által forgalmazott kvantumszámítógépeket is használni, vagy a klasszikus és kvantum eljárásokat hibrid módon ötvözni.

Összehasonlítom a különböző lehetőségekből adódó módszereket azok eredményessége és hatékonysága alapján. Természetesen a kapott eredményeket összevetem más, klasszikus heurisztikus megoldók használatával is.

A munka jelentős részét tette ki számos tapasztalat gyűjtése a D-Wave-es programcsomaggal kapcsolatban, hiszen a terület újdonságából kifolyólag az elérhető dokumentációk meglehetősen limitáltnak bizonyultak.

## Kvantumséták szimulációja klasszikus számítógépen

Szerző: [Nemkin Viktória](./kapcsolat#nemkin-viktoria)\
Konzulens: [Dr. Friedl Katalin](./kapcsolat#dr-friedl-katalin)\
Link: [https://tdk.bme.hu/VIK/modell1/Kvantumsetak-szimulacioja-klasszikus](https://tdk.bme.hu/VIK/modell1/Kvantumsetak-szimulacioja-klasszikus)\
Dátum: 2021. november 16.

Az utóbbi években egyre nagyobb figyelem összpontosul a kvantuminformatikára. Olyan globális vállalatok, mint az IBM, a Google, a Microsoft és az Amazon jelentős összegeket fektetnek kutatásba, hardver- és szoftverfejlesztésekbe ezen a területen, míg az Európai Unió és Magyarország számos olyan programot indított, melyek a kvantuminformatikai kutatások fellendítését célozzák meg.

A jelenlegi kvantumszámítógépekben elérhető qubitek (kvantumbitek) mennyisége még csekély, de sokan úgy vélik hogy a jövőben ez a szám növekedni fog. Az első olyan, a gyakorlatban is hasznos kvantumalgoritmusok, amiket ezeken a processzorokon futtatni tudunk majd, várhatóan azok lesznek, melyek takarékosan bánnak a rendelkezésre álló qubitekkel. A kvantumséta, mely a klasszikus véletlen bolyongás általánosítása kvantumos esetben, pontosan ilyen algoritmus. Mivel a qubit igénye a gráf csúcsszámában logaritmikus, így ez egy érdekes módszernek ígérkezik akár a közeljövőre nézve is. A kvantumséták erejét bizonyítja, hogy a Grover keresés (mely több kvantumalgoritmus alapját képezi) is értelmezhető ezek egy speciális fajtájának.

Dolgozatomban leírom a kvantumséták matematikai alapjait, részletezve a megvalósítás szempontjából fontos pontokat, melyek a szakirodalomban kisebb hangsúllyal szerepelnek. Ismertetem az általam írt szimulátor program architekturális felépítését és működését, továbbá a futtatott szimulációim eredményeit.

A szimulátor programot Python 3 nyelven írtam, a Stratégia tervezési minta alapján. A szakirodalomban tipikusan használt gráfokat beépítetten támogatja, melyek kombinálásával tetszőlegesen bonyolult reguláris gráf előállítható, ez az előállítás képezi a kvantumséta alapját is. A szoftver reguláris gráfokon történő kvantum és klasszikus séták szimulációját teszi lehetővé, az eredményekről pedig egy részletes report fájlt generál. A kvantumos séták esetében a séta tulajdonságai a valószínűségek generálásához felhasznált érmétől is függnek, melyet többféleképpen is lehet definiálni. A program beépítetten tartalmazza az Hadamard-, a Grover- és a Fourier-érméket, de felépítéséből adódóan könnyen bővíthető tetszőleges érmével is.

Szimulációim segítségével összehasonlítottam a klasszikus és a kvantum séták viselkedését, továbbá kimutattam az elméleti szakirodalom alapján elvárt kvantumos jellegzetességeket, az Hadamard-séta ballisztikus természetét és a kvantumséták ciklikus tulajdonságát.
