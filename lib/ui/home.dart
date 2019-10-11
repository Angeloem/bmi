import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Home extends StatefulWidget{
	@override
	State<StatefulWidget> createState() {
		return new BmiState();
	}
}

class BmiState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
		appBar: new AppBar(
			title: new Text('Measure BMI'),
			centerTitle: true,
			backgroundColor: Colors.purple,
			
		),
	);
  }
	
}