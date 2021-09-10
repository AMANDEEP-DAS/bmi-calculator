
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({required this.interpretation,required this.resultText,required this.bmiResult});
  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },
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
                  Center(child: Text(resultText.toUpperCase(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                  Center(child: Text(bmiResult,style: TextStyle(fontSize: 100,color: Colors.green),)),
                  Container(padding: EdgeInsets.all(20),child: Center(child: Text(interpretation,style: TextStyle(fontSize: 18),maxLines: 2,)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
