import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0, num2=0, sum=0;

  final TextEditingController t1 = TextEditingController(text:"0");
  final TextEditingController t2 = TextEditingController(text:"0");


  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSubraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMultiplication(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDivision(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear(){
    setState(() {
      t1.text = '0';
      t2.text = '0';
      sum = 0;
      //sum = num1 + num2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Output : $sum',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple
                  )
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Number 1'
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter Number 2'
                ),
                controller: t2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text('+'),
                    color: Colors.greenAccent,
                    onPressed: doAddition ,
                  ),
                  MaterialButton(
                    child: Text('-'),
                    color: Colors.greenAccent,
                    onPressed: doSubraction ,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text('*'),
                    color: Colors.greenAccent,
                    onPressed: doMultiplication ,
                  ),
                  MaterialButton(
                    child: Text('/'),
                    color: Colors.greenAccent,
                    onPressed: doDivision ,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    child: Text('Clear'),
                    color: Colors.greenAccent,
                    onPressed: doClear,
                  )
                ],
              )
            ],
          )
        )
    );
  }
}
