import 'package:bmi/ui/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';


class Sliver extends StatefulWidget {
  @override
  _SliverState createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
	List<double> data1 = [1.0, 2.3, 1.1, 3, 0.4, .9, .4, 3];
	List<double> data2 = [1.2, 1.3, 3.1, 2, 5.4, 1.9, .4, 13];

  DateTime get now => DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
	    slivers: <Widget>[
	    	SliverAppBar(
			    pinned: true,
			    backgroundColor: Colors.blue.shade900,
			    expandedHeight: 150,
			    title: Text('Lukresia Kanje'),
			    centerTitle: true,
			    actions: <Widget>[
			    	Icon(
					    Icons.person,
					    color: Colors.white,
				    ),
			    ],
			    flexibleSpace: FlexibleSpaceBar(
				    background: userDetails(),
			    ),
		    ),
		    SliverList(
			    delegate: SliverChildListDelegate(
				    <Widget>[
				    	Container(
						    decoration: BoxDecoration(
							    color: Colors.white
						    ),
						    child: DashBoardView(),
					    )
				    ]
			    ),
		    )
	    ],
    );
  }
  
  userDetails(){
  	return Padding(
	    padding: const EdgeInsets.only(top: 60),
	    child: Column(
		    mainAxisAlignment: MainAxisAlignment.center,
		    crossAxisAlignment: CrossAxisAlignment.center,
		    children: <Widget>[
			    Container(
				    child: Column(
					    crossAxisAlignment: CrossAxisAlignment.center,
					    mainAxisAlignment: MainAxisAlignment.center,
					    children: <Widget>[
						    Text(
							    '1,000,000/=',
							    style: TextStyle(
								    fontSize: 42,
								    fontWeight: FontWeight.bold,
								    color: Colors.white
							    ),
						    ),
						    Row(
							    crossAxisAlignment: CrossAxisAlignment.center,
							    mainAxisAlignment: MainAxisAlignment.center,
							    children: <Widget>[
								    Padding(
									    padding: const EdgeInsets.only(top: 5.0),
									    child: Text(
										    'Balance',
										    style: TextStyle(
											    fontSize: 20,
											    fontWeight: FontWeight.w500,
											    color: Colors.white
										    ),
									    ),
								    ),
								    Icon(
									    FontAwesomeIcons.longArrowAltUp,
									    color: Colors.green,
								    ),
							    ],
						    )
					    ],
				    )
			    ),
			    Container(
				    margin: EdgeInsets.only(top: 20.0),
				    child: Row(
					    mainAxisAlignment: MainAxisAlignment.spaceBetween,
					    crossAxisAlignment: CrossAxisAlignment.end,
					    children: <Widget>[
						    Container(
							    padding: const EdgeInsets.all(3),
							    child: Text(
								    'Personal Account',
								    style: TextStyle(
									    fontSize: 16,
									    color: Colors.white.withOpacity(.4),
								    ),
							    ),
						    ),
						    Padding(
							    padding: const EdgeInsets.only(right: 5),
							    child: Text(
								    new DateFormat("dd-MM-yyyy").format(now).toString(),
								    style: TextStyle(
									    fontSize: 16,
									    color: Colors.white.withOpacity(.4),
								    ),
							    ),
						    )
					    ],
				    ),
			    )
		    ],
	    )
    );
  }
}
