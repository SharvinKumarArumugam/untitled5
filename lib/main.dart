
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

void main() => runApp(ParkingApp());

class ParkingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SizedBox(child: Center(child: ParkingHomePage(title: 'Parking App Home Page', key:Rect.fromCenter(center: 50, width: 50, height: 50), ))),
    );
  }
}

class ParkingHomePage extends StatefulWidget {
  ParkingHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _ParkingHomePageState createState() => _ParkingHomePageState();
}

class _ParkingHomePageState extends State<ParkingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Parking App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
