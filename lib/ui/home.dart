import 'package:flutter/material.dart';

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
								// the first input
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
										icon: new Icon(Icons.insert_chart)
									),
								),
								new TextField(
									controller: null,
									keyboardType: TextInputType.text,
									decoration: new InputDecoration(
										labelText: 'Weight',
										hintText: 'eg 56kg',
										icon: new Icon(Icons.line_weight)
									),
								),
								
								new Padding(padding: new EdgeInsets.all(10)),
							
								new Container(
									alignment: Alignment.center,
									child: new RaisedButton(
										onPressed: () => print('Hellow'),
										color: Colors.blueAccent.shade100,
										child: new Text('Calculate'),
										textColor: Colors.white,
									),
								),
							],
						),
					)
				],
			),
		),
	);
  }
}