import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Result')),
      ),
      bottomNavigationBar: GestureDetector(
        child: BottomAppBar(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('RE-CALCULATE BMI',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Center(child: Text('YOUR RESULT',style: TextStyle(fontSize: 30),)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: Text('NORMAL',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                  Center(child: Text('30.6',style: TextStyle(fontSize: 100,color: Colors.red),)),
                  Center(child: Text('NORMAL',style: TextStyle(fontSize: 15),))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
