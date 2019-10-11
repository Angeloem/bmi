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
					
					new Container(
						margin: const EdgeInsets.all(3.0),
						height: 245.0,
						width: 290.0,
						color: Colors.grey.shade100,
						child: new Column(
							children: <Widget>[
								new TextField(
									controller: null,
									keyboardType: TextInputType.number,
									decoration: new InputDecoration(
										labelText: 'Age',
										hintText: 'placeholder',
										icon: new Icon(Icons.person_outline)
									),
								),
								new TextField(
									controller: null,
									keyboardType: TextInputType.number,
									decoration: new InputDecoration(
										hintText: 'E.g 6.5',
										labelText: 'Height',
									),
								)
							],
						),
					)
				],
			),
		),
	);
  }
}