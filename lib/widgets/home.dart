import 'dart:async';

import 'package:flutter/material.dart';
import 'package:beacons/widgets/museum.dart';
import 'package:beacons/widgets/airport.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BeaconHome extends StatefulWidget {
  @override
  _BeaconHomeState createState() => new _BeaconHomeState();
}

class _BeaconHomeState extends State<BeaconHome> {
  FlutterBlue _flutterBlue = FlutterBlue.instance;

  StreamSubscription _scanSubscription;
  bool isScanning = false;

  Map<DeviceIdentifier, ScanResult> scanResults = new Map();

  _startScan() {
    _scanSubscription = _flutterBlue
        .scan(
      timeout: const Duration(seconds: 3),
    )
        .listen((scanResult) {
      if (scanResult.device.name == "Kontakt") {
        if (scanResult.rssi > -65) {
          print('Beacon detected: ${scanResult.device.id}');
          if (scanResult.device.id.toString() ==
              '05BED0DE-ED2C-9644-239C-D092EFDF137E') {
            _stopScan();
            _changeViewMuseum();
            return;
          } else if (scanResult.device.id.toString() ==
              '5E9D53C6-A496-9A82-4303-83E7556A985F') {
            _stopScan();
            _changeViewAirport();
            return;
          }
        }
      }

      setState(() {
        if (scanResult.device.name == "Kontakt") {
          scanResults[scanResult.device.id] = scanResult;
        }
      });
    }, onDone: _stopScan);

    setState(() {
      isScanning = true;
    });

    return;
  }

  _stopScan() {
    _scanSubscription?.cancel();
    _scanSubscription = null;
    setState(() {
      isScanning = false;
    });
  }

  _buildFloatingActionButton() {
    if (isScanning) {
      return new FloatingActionButton(
        child: new Icon(Icons.stop),
        onPressed: _stopScan,
        backgroundColor: Colors.red,
      );
    } else {
      return new FloatingActionButton(
          child: new Icon(Icons.search), onPressed: _startScan);
    }
  }

  _changeViewMuseum() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new MuseumView()));
  }

  _changeViewAirport() {
     Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new AirportView()));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Beacon Demo'),
        ),
        floatingActionButton: _buildFloatingActionButton(),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Center(
                child: new Image(
                  image: new AssetImage('assets/beacon.png'),
                ),
              ),
              new Text(
                'Approach a beacon and hit the scan button!',
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
              ),
            ],
          ),
        ));
  }
}
