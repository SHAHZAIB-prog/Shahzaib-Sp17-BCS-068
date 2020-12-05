import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:sessional2/HardPage.dart';
import 'package:sessional2/homescreen.dart';


void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>Page())));
  } //<- Creates an object that fetches an image.
  // var image = new Image(
  //     image: AssetImage(
  //         'asset/quiz.png'),
  //     height:300);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage(
                    'images/dice.jpg'),
                height:300),
            Text("Shahzaib Ali Shah",style:TextStyle(fontSize: 20)),
            Text("SP17-BCS-068",style:TextStyle(fontSize: 20)),
            SizedBox(height: 10,),
          ],
        )
    );
  }
}
class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber, // status bar color
            brightness: Brightness.light,
            title: Text('Rolling Dice Game'),
            bottom: TabBar(
              tabs: [
                Tab(text: "Levels"),
                Tab(text: "Contact Us"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen()),);
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF24D876),
                              Color(0xFF1976D2),
                              Color(0xFF24D876),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Simple Level', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    SizedBox(height: 5,),
                    // SizedBox(height: 2,),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> Hardpage()),);
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF24D876),
                              Color(0xFF1976D2),
                              Color(0xFF24D876),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Hard Level', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],),
              ),
              Column(children: [
                Text('Name:Shahzaib Ali Shah',style: TextStyle(fontSize: 20, color:Colors.indigo )),
                SizedBox(height: 20,),
                Text('Reg:SP17-BCS-068',style: TextStyle(fontSize: 20,color:Colors.indigo)),
                SizedBox(height: 20,),
                Text('Email:Shahzabii00@gmail.com',style: TextStyle(fontSize: 20,color:Colors.indigo)),
                SizedBox(height: 20,),
                Text('contact:03026935657',style: TextStyle(fontSize: 20,color:Colors.indigo)),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
