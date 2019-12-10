import 'package:bmi/ui/slivers.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BmiState();
  }
}

class BmiState extends State<Home> {
  final TextEditingController _age = new TextEditingController();
  final TextEditingController _height = new TextEditingController();
  final TextEditingController _weight = new TextEditingController();
  double inches = 0.0;
  double result = 0.0;
  String _resultReading = "";
  String _finalReading = "";
  
	void _calculateBMI() {
		setState(() {
			int age = int.parse(_age.text);
			double height = double.parse(_height.text);
			inches = height * 12;
			double weight = double.parse(_weight.text);
			
			if((_age.text.isNotEmpty || age > 0)
				&& ((_height.text.isNotEmpty || inches > 0)
					&& (_weight.text.isNotEmpty || weight > 0))){
				result = weight / ( inches * inches ); // result
				
				
				if (double.parse(result.toStringAsFixed(1)) < 18.5) {
					_resultReading = "Underweight";
				} else if(double.parse(result.toStringAsFixed(1)) >= 18.5 && double.parse(result.toStringAsFixed(1)) <25) {
					_resultReading = "Doing Great!!!!";
				} else if(double.parse(result.toStringAsFixed(1)) >= 25 && double.parse(result.toStringAsFixed(1)) < 30) {
					_resultReading = "OverW3!ght";
				} else if(double.parse(result.toStringAsFixed(1)) >= 30) {
					_resultReading = "OverW3!ght";
				}
				
				
			} else {
				result = 0.0;
			}
  	});
	_finalReading = "Your Results: ${result.toStringAsFixed(1)}";
	
	Navigator.push(context,
		MaterialPageRoute(builder: (context) => Sliver())
	);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Measure BMI'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade900,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.0),
          children: <Widget>[
            new Image.asset('images/bmilogo.png', height: 75.0, width: 65.0),
            new Container(
              margin: const EdgeInsets.all(3.0),
              height: 245.0,
              width: 290.0,
              color: Colors.grey.shade100,
              child: new Column(
                children: <Widget>[
                  // the first input
                  new TextField(
                    controller: _age,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: 'Age',
                        hintText: 'placeholder',
                        icon: new Icon(Icons.person_outline)),
                  ),

                  new TextField(
                    controller: _height,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        hintText: 'E.g 6.5',
                        labelText: 'Height',
                        icon: new Icon(Icons.insert_chart)),
                  ),
                  new TextField(
                    controller: _weight,
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        labelText: 'Weight',
                        hintText: 'eg 56kg',
                        icon: new Icon(Icons.line_weight)),
                  ),

                  new Padding(padding: new EdgeInsets.all(10)),

                  new Container(
                    alignment: Alignment.center,
                    child: new RaisedButton(
                      onPressed: _calculateBMI,
                      color: Colors.blueAccent.shade100,
                      child: new Text('Calculate'),
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "$_finalReading",
                  style: new TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 19.9),
                ),
                new Padding(padding: const EdgeInsets.all(5.0)),
                new Text(
                  '$_resultReading',
                  style: new TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 19.9),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
