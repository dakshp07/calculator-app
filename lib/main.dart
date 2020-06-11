import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : new ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1=0,num2=0,sum=0;

  final TextEditingController t1 = new TextEditingController(text:"0");
  final TextEditingController t2 = new TextEditingController(text:"0");

  void add(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1+num2;
    });
  }
  void sub(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1-num2;
    });
  }
  void mul(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1*num2;
    });
  }
  void div(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1/num2;
    });
  }

  void clear(){
    setState(() {
      t1.text="";
      t2.text="";
      sum=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Your Answer: $sum",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),),
         new Padding(padding: EdgeInsets.only(top: 60)),
         new TextField(
        decoration: new InputDecoration(
            icon: new Icon(Icons.poll),
            labelText: "Enter Number 1",
            labelStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red) 
        ),
          keyboardType: TextInputType.number,
           controller: t1,
        ),
         new TextField(
        decoration: new InputDecoration(
            icon: new Icon(Icons.poll) ,
            labelText: "Enter Number 2",
            labelStyle : TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red)
        ),
        keyboardType: TextInputType.number,
           controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  icon: new Icon(Icons.add,color: Colors.white,),
                  label: new Text("Add",style: TextStyle(fontSize: 20,color: Colors.white),),
                  backgroundColor: Colors.blue,
                  onPressed: add,
                ),
                new Padding(padding: const EdgeInsets.only(top: 20)),
                FloatingActionButton.extended(
                  icon: new Icon(Icons.remove,color: Colors.white,),
                  label: new Text("Subtract",style: TextStyle(fontSize: 20,color: Colors.white),),
                  onPressed: sub,
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  icon: new Icon(Icons.clear,color: Colors.white,),
                  label: new Text("Multiply",style: TextStyle(fontSize: 20,color: Colors.white),),
                  onPressed: mul,
                  backgroundColor: Colors.blue,
                ),
                new Padding(padding: const EdgeInsets.only(top: 20)),
                FloatingActionButton.extended(
                  icon: new Icon(Icons.poll,color: Colors.white,),
                  label: new Text("Division",style: TextStyle(fontSize: 20,color: Colors.white),),
                  onPressed: div,
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 10)),
            new Center(
              child: new RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                child: new Text("Clear",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),),
                color: Colors.white,
                onPressed: clear,
              )
            )

          ]
        ),
      ),
    );
  }
}