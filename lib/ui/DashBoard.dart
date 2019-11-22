import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class DashBoardView extends StatefulWidget {
  @override
  _DashBoardViewState createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
    static const _padding = 10.0;
    var _width = 105.0;
    var _height = 80.0;
    var _amountIncome = 7000;
    String _incomeDisplayText = 'Income';
    String _expenseDisplayText = 'Expenses';
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(50.0), topLeft: Radius.circular(50.0)),
//            color: Color(0xfff5f5f5),
            color: Color(0xffe2e8e4),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                store(),
                income(),
                expenses()
            ],
        ),
    );
  }
    store() {
      return Container(
          padding: const EdgeInsets.all(_padding),
          decoration: BoxDecoration(
              color: Color(0xffe2e8e4),
    //              color: Color(0xfff5f5f5)
              borderRadius: new BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Padding(
                        padding: const EdgeInsets.all(_padding),
                        child: Text(
                            'Kibubu',
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                        ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                          Container(
                              width: _width,
                              height: _height,
                              padding: const EdgeInsets.all(_padding),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                      Text(
                                          '70000',
                                          style: TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold
                                          ),
                                      ),
                                      SizedBox(
                                          height: 10,
                                      ),
                                      Text(
                                          'Amount',
                                          style: TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontSize: 13
                                          ),
                                      )
                                  ],
                              ),
                          ),
                          Container(
                              width: _width,
                              height: _height,
                              padding: const EdgeInsets.all(_padding),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                      Text(
                                          '1',
                                          style: TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold
                                          ),
                                      ),
                                      SizedBox(
                                          height: 10,
                                      ),
                                      Text(
                                          'Participants',
                                          style: TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 13
                                          ),
                                      )
                                  ],
                              ),
                          ),
                          Container(
                              width: _width,
                              height: _height,
                              padding: const EdgeInsets.all(_padding),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                      Text(
                                          '+10%',
                                          style: TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold
                                          ),
                                      ),
                                      SizedBox(
                                          height: 10,
                                      ),
                                      Text(
                                          'Amount Rise',
                                          style: TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 13
                                          ),
                                      )
                                  ],
                              ),
                          )
                      ],
                  ),
              ],
          )
      );
    }

    income() {
        return Container(
            padding: const EdgeInsets.all(_padding),
            decoration: BoxDecoration(
                color: Color(0xffe2e8e4),
                borderRadius: new BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(_padding),
                        child: Text(
                            _incomeDisplayText,
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                        ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Container(
                                width: _width,
                                height: _height,
                                padding: const EdgeInsets.all(_padding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        Text(
                                            (_amountIncome).toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                        SizedBox(
                                            height: 10,
                                        ),
                                        Text(
                                            'Amount',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 13
                                            ),
                                        )
                                    ],
                                ),
                            ),
                            Container(
                                width: _width,
                                height: _height,
                                padding: const EdgeInsets.all(_padding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        Text(
                                            '10000',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        SizedBox(
                                            height: 10,
                                        ),
                                        Text(
                                            'Highest Income',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 13
                                            ),
                                        )
                                    ],
                                ),
                            ),
                            Container(
                                width: _width,
                                height: _height,
                                padding: const EdgeInsets.all(_padding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        Text(
                                            '5000',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        SizedBox(
                                            height: 10,
                                        ),
                                        Text(
                                            'Lowest Income',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 13
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        ],
                    ),
                ],
            )
        );
    }

    expenses() {
        return Container(
            padding: const EdgeInsets.all(_padding),
            decoration: BoxDecoration(
                color: Color(0xffe2e8e4),
                borderRadius: new BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(_padding),
                        child: Text(
                            _expenseDisplayText,
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                        ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Container(
                                width: _width,
                                height: _height,
                                padding: const EdgeInsets.all(_padding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        Text(
                                            (_amountIncome).toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                        SizedBox(
                                            height: 10,
                                        ),
                                        Text(
                                            'Amount',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 13
                                            ),
                                        )
                                    ],
                                ),
                            ),
                            Container(
                                width: _width,
                                height: _height,
                                padding: const EdgeInsets.all(_padding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        Text(
                                            '10000',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        SizedBox(
                                            height: 10,
                                        ),
                                        Text(
                                            'Highest Expense',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 13
                                            ),
                                        )
                                    ],
                                ),
                            ),
                            Container(
                                width: _width,
                                height: _height,
                                padding: const EdgeInsets.all(_padding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                        Text(
                                            'Clothing',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        SizedBox(
                                            height: 10,
                                        ),
                                        Text(
                                            'Top Category',
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 13
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        ],
                    ),
                ],
            )
        );
    }
}
