import 'package:flutter/material.dart';

void main() {
  runApp(Kalkulator());
}
class Kalkulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MyKalkulator(),
    );
  }
}
class MyKalkulator extends StatefulWidget {
  @override
  _MyKalkulatorState createState() => _MyKalkulatorState();
}

class _MyKalkulatorState extends State<MyKalkulator> {

  String equation = "0";
  String result = "0";
  String equationFontSize = "38";
  String resultFontSize = "48";


  buttonPressed(buttonText){

  }

  Widget buildButton( String buttonText, double buttonHeight, Color buttonColor){
    return  Container(
      height: MediaQuery.of(context).size.height * 0.1 *buttonHeight,
      color: buttonColor,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.white,
                  width: 1,
                  style: BorderStyle.solid
              )
          ),
          padding: EdgeInsets.all(16.0),
          onPressed: ()=> buttonPressed(buttonText),
          child: Text(buttonText,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text("0", style: TextStyle(fontSize: 38.0),),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text("0", style: TextStyle(fontSize: 48.0),),
          ),
          Expanded(
              child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButton("C", 1, Colors.redAccent),
                          buildButton("⌫", 1, Colors.cyan),
                          buildButton("÷", 1, Colors.cyan),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("1", 1, Colors.black45),
                          buildButton("2", 1, Colors.black45),
                          buildButton("3", 1, Colors.black45),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("4", 1, Colors.black45),
                          buildButton("5", 1, Colors.black45),
                          buildButton("6", 1, Colors.black45),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("7", 1, Colors.black45),
                          buildButton("8", 1, Colors.black45),
                          buildButton("9", 1, Colors.black45),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton(".", 1, Colors.black45),
                          buildButton("0", 1, Colors.black45),
                          buildButton("00", 1, Colors.black45),
                        ]
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("×", 1, Colors.cyan),
                      ]
                    ),
                    TableRow(
                        children: [
                          buildButton("-", 1, Colors.cyan),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("+", 1, Colors.cyan),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("=", 2, Colors.pink),
                        ]
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
