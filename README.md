Container App vs App Service
---------------------------
Container App
- Container app je kontajner, ktorý beží na hostiteľskom počítači. Container app môže byť kontajner Windows alebo kontajner Linux.
- Container app možno nasadiť na hostiteľa kontajnera, ako je napríklad Windows Server 2016 VM alebo Linux VM.
- Poskytuje flexibilnú platformu, ktorá podporuje rôzne technológie kontajnerov, ako sú Docker, Kubernetes a Mesos.

Benefity Container App
- Jednoduché nasadenie: Container App uľahčuje nasadenie kódu aplikácie vďaka podpore viacerých kontajnerových technológií.
- Automatické škálovanie: Pomocou služby Container App sa môže aplikácia automaticky škálovať nahor alebo nadol na základe dopytu, čím sa zaistí, že aplikácia bude vždy fungovať optimálne.
- Vysoká dostupnosť: Container App poskytuje vysokú dostupnosť pre aplikáciu automatickým reštartovaním, ak zlyhá alebo prestane reagovať.
- Zabezpečenie: Container App poskytuje zabezpečenie aplikácie tak, že ju izoluje od ostatných aplikácií spustených na rovnakom hostiteľskom počítači.

Nevýhody Container App
Zložitosť: Zatiaľ čo Container App poskytuje flexibilnú platformu pre kontajnerové aplikácie, jej nastavenie a správa môže byť zložitejšia ako pri iných službách Azure.

App Service
- App Service je platforma ako služba (PaaS), ktorá umožňuje rýchlo vytvárať, nasadzovať a škálovať podnikové webové aplikácie na Windows alebo Linux pomocou .NET, Java, Node.js, PHP, Python alebo Ruby ako aj kontajnery Docker.
- App Service je plne spravovaná služba, ktorá sa stará o údržbu infraštruktúry, vyrovnávanie záťaže a škálovanie za nás.

Benefity App Service
- Jednoduché nasadenie: App Service uľahčuje nasadenie kódu aplikácie vďaka podpore viacerých programovacích jazykov a rámcov.
- Automatické škálovanie: Pomocou App Service sa môže automaticky škálovať aplikácia nahor alebo nadol na základe dopytu, čím sa zaistí, že aplikácia bude vždy fungovať optimálne.

Nevýhody App Service
- Obmedzená flexibilita: App Service poskytuje obmedzenú sadu programovacích jazykov a rámcov, ktoré nemusia byť vhodné pre všetky aplikácie.
- Obmedzená kontrola: App Service poskytuje obmedzenú kontrolu nad základnou infraštruktúrou, ktorá nemusí byť vhodná pre všetky aplikácie.
- Vyššie náklady: App Service môže byť drahšia ako iné služby Azure, najmä pre aplikácie s vysokou návštevnosťou.

Rozdiely medzi App Service a Container App
- Container App je kontajner, ktorý beží na hostiteľskom počítači, zatiaľ čo App Service je platforma ako služba (PaaS).
- Container App poskytuje flexibilnú platformu, ktorá podporuje rôzne technológie kontajnerov, ako sú Docker, Kubernetes a Mesos, zatiaľ čo App Service poskytuje obmedzenú sadu programovacích jazykov a rámcov.
- Container App môže byť zložitejšia na nastavenie a správu ako App Service, zatiaľ čo App Service môže mať obmedzenejšie možnosti prispôsobenia ako Container App.

---------------------------

Najprv musíme vytvoriť súbor Dockerfile. Dockerfile je textový súbor, ktorý obsahuje pokyny pre Docker na vytvorenie obrázka.

<img src="7.png" width="350">
Potom musíme vytvoriť obrázok z Dockerfile. Aby sme to spravili musíme vytvoriť úložisko na Docker Hub. Urobil som to pomocou príkazov. Teraz, keď mám súbor Dockerfile a úložisko na Docker Hub, môžem vytvoriť obrázok a vložiť ho do úložiska.

<img src="5.png" width="350">
<img src="6.png" width="350">

Teraz môžem vytvoriť kontajner z obrázka. Urobil som to na portáli Azure.

<img scr="1.png" width="350">
Tu je jedno, aký región si vyberiete. Stačí mu dať meno, aké chcete.

<img src="2.png" width="350">
Tu teraz nechceme základný obrázok, ale ten, ktorý sme vytvorili. Vyberieme teda zdroj obrázka ako Docker Hub a dáme názov obrázka a značku ako ten, ktorý sme vytvorili. Takže u mňa to bol lucifer21sk/ppt23-api:dev

<img src="3.png" width="350">
Ďalej musíme potvrdiť, že používame koncové body HTTP.

<img src="4.png" width="350">
Vyberieme port, ktorý máme v Dockerfile. Takže pre mňa to bolo 80. Potom to už len vytvoríme a čakáme. Po úspešnom vytvorení vidíme odkaz na API.

<img src="8.png" width="350">
Tu vidíme, že môj koncový bod funguje a vidím údaje z databázy.

Záver:
Nebolo ťažké to urobiť. Mal som nejaké problémy s Dockerfile, pretože som nikdy nič nerobil s Dockerom, ale našiel som riešenie na internete. Našiel som nejaké návody a čo môžem povedať, Container App je podľa mňa lepšia, keď chcem mať frontend, backend a všetko na jednom mieste. App Service je lepšia, keď chcem mať iba backend alebo frontend, pretože je ľahké ju vytvoriť na Azure Portal.

Link na moju API: https://ppt23-api.wittywater-21d321f3.germanywestcentral.azurecontainerapps.io/

