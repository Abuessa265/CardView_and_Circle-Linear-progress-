// Card | Circle and Linear progress

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card view and Circle,Linear progress',
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('Card view and circle Linear progress'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('This part is Card part'),
          ),
          Center(
            //..............card part start ..........

          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            shadowColor: Colors.red,
            surfaceTintColor: Colors.amber,
            borderOnForeground: true,
            color: Color.fromRGBO(33, 191, 115, 0.8),
            elevation: 100,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(child: Text('This is card'),),
            ),
          ),

            //..............card part end ..........

          ),

          // .....circle progress start ..........
          Center(
            child: Text('This part is circular progress part'),
          ),

           const Center(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: CircularProgressIndicator(
                color: Colors.blue,
                strokeAlign: 1,
                strokeWidth: 5,
              ),
            ),
          ),

          // .....circle progress end ..........

          //..........Linear progress start.........

          Center(
            child: Text('This part is Linear progress part'),
          ),

          const Center(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: LinearProgressIndicator(
                color: Colors.blue,
                minHeight: 20,
                backgroundColor: Colors.deepOrange,
              ),
            ),
          ),
          //..........Linear progress end.........
        ],

      ),
    );
  }

}