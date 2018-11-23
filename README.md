
 # Twitter Bot Books Quotes :octopus:

Il existe un livre que je recommande à tous. Un livre que je relis avec plaisir tous les un ou deux ans. Un livre que je rachète à chaque fois qu'il quitte ma bibliothèque sans y revenir. Et pour ce livre, j'ai créé un bot.<br/>
Le bot en question a pour seul but de poster sur twitter des bribes du bouquin. <br/>
En pratique il tweet toutes les demi heure une phrase du livre. Et à chaque fois qu'il tweet va chercher dans les derniers tweets publics ceux qui contiennent le titre du livre pour les liker (ce qui lui permet de se faire connaître).
## Ce qu'il y a sur ce repo :

Les petits bouts de code que j'ai écrit pour donner vie au bot.
 - form.rb - là pour mettre en forme votre fichier .txt
 - bot.rb - là pour tweeter et faire la promotion de votre bot sur le réseau social

## Ce qu'il n'y a pas sur ce repo :

 - Le livre en question
 - Un tuto pour ouvrir un compte [twitter](https://developer.twitter.com/) et obtenir vos keys/tokens
 - Un tuto pour [transformer un ebook en .txt](http://lmgtfy.com/?q=epub+to+txt)

## J'ai utilisé : 
 - Ruby 2.5.1
 - La gem Twitter
 - La gem dotenv (pour plus de discrétion)
 - C'est tout.

## Instructions :  :seedling:
Récupère le repo en tappant dans ta console : <br/>
`git clone https://github.com/athanyl/TwitterBotBooksQuotes`<br/>
Va dans le bon répertoire : <br/>
`cd TwitterBotBooksQuotes`<br/>
Installation des dépendances : <br/>
`bundle install`<br/>
Va modifier avec ton éditeur de texte préféré le fichier form.rb pour qu'il sache quel fichier mettre en forme. Il faudra au préalable avoir transformé ton epub en txt.<br/>
On lance le code de mise en forme : <br/>
`ruby form.rb`<br/>
Crée un fichier .env pour y ajouter tes keys/tokens fournis par twitter en laissant les "" : <br/>

    CONSUMER_KEY = "Ton API key"
    CONSUMER_SECRET = "Ton API secret key"
    ACCESS_TOKEN = "Ton Access token"
    ACCESS_SECRET = "Ton Access token secret"
Va modifier avec ton éditeur de texte préféré le fichier bot.rb pour y ajouter le titre de ton livre (ce qui servira à la recherche pour la promotion de ton bot). <br/>
On lance le bot : <br/>
`ruby bot.rb`<br/>
GG ! :beers: \o/<br/>
Si tu souhaites que ton bot tourne en permanence, utilise [Screen](https://doc.ubuntu-fr.org/screen).
<br/><br/><br/>

 :trollface: Puisque tu es arrivé jusque là, voilà en cadeau, un petit animal tout mignon :  


![kdo axolotl](https://cdn140.picsart.com/262009799015212.png "kdo axolotl")

<br/>

N'oublie pas d'aller follow Sov, mon bot twitter : [Bot Sov](https://twitter.com/strochnissov "Sov Strochnis")<br/>
Et si tu trouves mon travail utile -> [:coffee:](https://ko-fi.com/athanyl)
