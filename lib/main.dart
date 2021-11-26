import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new MyApp() ,
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Card Widget'),
      ),
      body:Card(color: Colors.orange,shadowColor: Colors.blue,
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: 500,
          //width: 500,
          child: Column(//mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Image.network('https://images.news18.com/ibnlive/uploads/2021/10/elon-musk11-16353403643x2.jpg?impolicy=website&width=510&height=356'),
            SizedBox(height: 10,),
              Text('Persistence is very important. You should not give up unless you are forced to give up.', style: TextStyle(fontSize: 16.0),
              ),
              Icon(Icons.account_circle),
              SizedBox(height: 18,),
              Text('-Elon Musk', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ButtonBar(
                children: [
                  FlatButton(onPressed: (){},
                    child: Text('Agree'),
                    textColor: Colors.white,
                    color: Colors.green,
                  ),
                  RaisedButton(onPressed: (){},
                    child: Text('DisAgree'),)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
