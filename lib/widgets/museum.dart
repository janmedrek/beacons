import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String paintingDescription =
    "The Garden of Earthly Delights is the modern title[a] given to a triptych oil painting on oak panel painted by the Early Netherlandish master Hieronymus Bosch, housed in the Museo del Prado in Madrid since 1939. It dates from between 1490 and 1510, when Bosch was between 40 and 60 years old. \n \n As so little is known of Bosch's life or intentions, interpretations of his intent have ranged from an admonition of worldly fleshy indulgence, to a dire warning on the perils of life's temptations, to an evocation of ultimate sexual joy. The intricacy of its symbolism, particularly that of the central panel, has led to a wide range of scholarly interpretations over the centuries. Twentieth-century art historians are divided as to whether the triptych's central panel is a moral warning or a panorama of paradise lost. Peter S. Beagle describes it as an 'erotic derangement that turns us all into voyeurs, a place filled with the intoxicating air of perfect liberty'";

const String paintingInterpretation =
    "Because only bare details are known of Bosch's life, interpretation of his work can be an extremely difficult area for academics as it is largely reliant on conjecture. Individual motifs and elements of symbolism may be explained, but so far relating these to each other and to his work as a whole has remained elusive.[18] The enigmatic scenes depicted on the panels of the inner triptych of The Garden of Earthly Delights have been studied by many scholars, who have often arrived at contradictory interpretations.[60] Analyses based on symbolic systems ranging from the alchemical, astrological, and heretical to the folkloric and subconscious have all attempted to explain the complex objects and ideas presented in the work.[83] Until the early 20th century, Bosch's paintings were generally thought to incorporate attitudes of Medieval didactic literature and sermons. Charles De Tolnay wrote that, \n\n 'The oldest writers, Dominicus Lampsonius and Karel van Mander, attached themselves to his most evident side, to the subject; their conception of Bosch, inventor of fantastic pieces of devilry and of infernal scenes, which prevails today (1937) in the public at large, and prevailed with historians until the last quarter of the 19th century.' \n\n Generally, his work is described as a warning against lust, and the central panel as a representation of the transience of worldly pleasure. In 1960, the art historian Ludwig von Baldass wrote that Bosch shows 'how sin came into the world through the Creation of Eve, how fleshly lusts spread over the entire earth, promoting all the Deadly Sins, and how this necessarily leads straight to Hell'. De Tolnay wrote that the center panel represents 'the nightmare of humanity', where 'the artist's purpose above all is to show the evil consequences of sensual pleasure and to stress its ephemeral character'. Supporters of this view hold that the painting is a sequential narrative, depicting mankind's initial state of innocence in Eden, followed by the subsequent corruption of that innocence, and finally its punishment in Hell. At various times in its history, the triptych has been known as La Lujuria, The Sins of the World and The Wages of Sin. \n\n Proponents of this idea point out that moralists during Bosch's era believed that it was woman's—ultimately Eve's—temptation that drew men into a life of lechery and sin. This would explain why the women in the center panel are very much among the active participants in bringing about the Fall. At the time, the power of femininity was often rendered by showing a female surrounded by a circle of males. A late 15th-century engraving by Israhel van Meckenem shows a group of men prancing ecstatically around a female figure. The Master of the Banderoles's 1460 work the Pool of Youth similarly shows a group of females standing in a space surrounded by admiring figures. \n\n This line of reasoning is consistent with interpretations of Bosch's other major moralising works which hold up the folly of man; the Death of the Miser and the Haywain. Although each of these works is rendered in a manner, according to the art historian Walter Bosing, that it is difficult to believe 'Bosch intended to condemn what he painted with such visually enchanting forms and colors.'' Bosing concluded however that a medieval mindset was naturally suspicious of material beauty, in any form, and that the sumptuousness of Bosch's description may have been intended to convey a false paradise, teeming with transient beauty.";

class MuseumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Museum'),
      ),
      body: new ListView(
        children: <Widget>[
          new Image(
            image: new AssetImage('assets/garden.jpg'),
          ),
          new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.lightBlue,
                  border: new Border.all(color: Colors.black, width: 2.0)),
              child: new Column(
                children: <Widget>[
                  new Text('The Garden of Earthly Delights',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold)),
                  new Text('Hieronymus Bosch',
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontSize: 18.0)),
                ],
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Text(paintingDescription,
                style: new TextStyle(fontSize: 16.0),
                softWrap: true,
                textAlign: TextAlign.justify),
          ),
          new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Text(
              'Interpretation',
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Text(
              paintingInterpretation,
              style: new TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
              softWrap: true,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(16.0),
            child: new Center(
              child: new RaisedButton(
                child: new Text('Read More'),
                color: Colors.lightBlue,
                onPressed: () => launch('https://en.wikipedia.org/wiki/The_Garden_of_Earthly_Delights'),
              ),
            )
          )
        ],
      ),
    );
  }
}
