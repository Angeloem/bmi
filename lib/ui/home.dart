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
		
		body: new Container(
			alignment: Alignment.topCenter,
			child: new ListView(
				padding: const EdgeInsets.all(2.0),
				children: <Widget>[
					new Image.asset('images/bmilogo.png',
						height: 75.0,
						width: 65.0
					),
				],
			),
		),
	);
  }
	
}