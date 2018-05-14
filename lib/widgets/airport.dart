import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AirportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Heathrow Flight Assistant'),
      ),
      body: new ListView(
        children: <Widget>[
          new Image(
            image: new AssetImage('assets/flight.jpg'),
          ),
          new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Container(
              decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.red, width: 2.0)),
              child: new Column(
                children: <Widget>[
                  new Text(
                    'Flight Information',
                    style: new TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(8.0),
                    child: new RaisedButton(
                      color: Colors.blue,
                      onPressed: () => launch(
                          'http://www.britishairways.com/rtad/travel/public/en_'),
                      child: new Text('Arrivals and Departures'),
                    ),
                  )
                ],
              ),
            ),
          ),
          new Container(
            child: new ExpansionTile(
              title: new Text('AirPortr & Bag Check-In service'),
              children: <Widget>[
                new Text(
                  'From your doorstep to your destination',
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new Text(
                    'Let AirPortr pick up your bags from your London location and check them in for your flight with the AirPortr + Bag Check-In service, exclusive to British Airways customers. \n\n Available for the wider London area and flights departing from Heathrow and Gatwick, except flights within the UK.',
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new RaisedButton(
                    color: Colors.lightBlue,
                    onPressed: () => launch('https://airportr.com/?partner=ba'),
                    child: new Text('Read More'),
                  ),
                )
              ],
            ),
          ),
          new Container(
            child: new ExpansionTile(
              title: new Text('Heathrow Express'),
              children: <Widget>[
                new Text(
                  'The fastest way between Central London and Heathrow Airport',
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new Text(
                    'Heathrow Express is the fastest way between Central London and Heathrow Airport, taking just 15 minutes from Terminal 3 and 21 minutes from Terminal 5. This is compared to 42 minutes in a taxi and 51 minutes on the Piccadilly Underground line.\n\nCustomers enjoy an excellent on board experience with complimentary 4G Wi-Fi, a power socket at your seat, dedicated luggage space and easy access.\n\nChildren aged 15 and under travel for free on Heathrow Express, making it a family friendly way to get to and from Heathrow from Central London.\n\nIn the Business First class carriages you can enjoy complimentary newspapers and magazines, more leg room, wider seats, a personal table and on-board TV.\n\nExecutive Club Members can also collect 10 Avios for every £1 spent on tickets exclusively booked via ba.com.',
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new RaisedButton(
                    color: Colors.lightBlue,
                    onPressed: () => launch('https://www.heathrowexpress.com/baec'),
                    child: new Text('Book Now!'),
                  ),
                )
              ],
            ),
          ),
          new Container(
            child: new ExpansionTile(
              title: new Text('Shopping'),
              children: <Widget>[
                new Text(
                  'From travel essentials to the latest gadgets',
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new Text(
                    "With over 160 shops in total, you'll find everything from last minute travel essentials, famous perfumes and skincare products to the latest electronic gadgets.\n\nTo make your life a little easier, a number of shopping services such as personal shopping, reserve and collect and home delivery are available through Heathrow.",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new RaisedButton(
                    color: Colors.lightBlue,
                    onPressed: () => launch('http://www.heathrowairport.com/shop%2C-eat%2C-relax-and-enjoy/shops-a_z'),
                    child: new Text('Airport Shops'),
                  ),
                )
              ],
            ),
          ),
          new Container(
            child: new ExpansionTile(
              title: new Text('Restaurants and bars'),
              children: <Widget>[
                new Text(
                  'Quality cuisine on the move',
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new Text(
                    "Whether you're looking for a snack or a full meal, the award-winning dining experience at Heathrow raises the bar for quality cuisine on the move. You can choose from more than 100 cafes, restaurants and bars, many of which cater for various dietary needs or serve meals in just 15 minutes for those in a hurry. Family friendly options, including children’s menus and ‘kids eat free’ policies are also available in many restaurants.",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new RaisedButton(
                    color: Colors.lightBlue,
                    onPressed: () => launch('http://www.heathrowairport.com/shop%2C-eat%2C-relax-and-enjoy/shops-a_z'),
                    child: new Text('Airport restaurants, cafes and bars'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
