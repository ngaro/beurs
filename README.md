# Beurs
Code i.v.m. beleggen op de beurs

* Alle code en data staat in de dir <code>bestanden</code>
* De code is beschikbaar als jupyter notebooks
* <code>./startjupyter.sh</code> start een jupyterserver met alle code en data als docker container:
  * Als uitvoer wordt het gebruik verteld (surfen naar http://localhost:8888 en wachtwoord <code>pass</code> gebruiken)
  * Ook hoe het afgesloten moet worden gaat verteld worden (<code>docker stop beurs</code>).
  * Indien uw pc tcp-poort 8888 al voor andere doeleinden gebruikt kan de var <code>EXTERNEPOORT</code> aangepast worden
  * Indien uw pc al een container met de naam "beurs" gebruikt kan de var <code>NAAM</code> aangepast worden
  * De container bevat alle nodige python modules plus nog wat extra dat mogelijks later nog gebruikt gaat worden
