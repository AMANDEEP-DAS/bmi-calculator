import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculator_brain.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int height = 180;
  int weight = 65;
  int age = 18;
  bool fcolor = false;
  bool mcolor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(
            bmiResult: calc.calculateBmi(),
            interpretation: calc.getInterpretation(),
            resultText: calc.getResult(),
          )));
        },
        child: BottomAppBar(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('CALCULATE BMI',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                   setState(() {
                     mcolor = !mcolor;
                     fcolor = !fcolor;
                   });
                  },
                  child: Container(
                    padding: EdgeInsets.all(30),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        color: mcolor? Colors.grey.shade900:Colors.black54,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 80,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      fcolor = !fcolor;
                      mcolor = !mcolor;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(30),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        color: fcolor? Colors.grey.shade900:Colors.black54,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 80,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey.shade800,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          })
                    ],
                  ),
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('WEIGHT',style: TextStyle(fontSize: 30),),
                      Text(weight.toString(),style: TextStyle(fontSize: 25),),
                      Row(
                        children: [
                          RoundIconButton(icon: Icons.minimize,onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },),
                          SizedBox(width: 5,),
                          RoundIconButton(icon: Icons.add,onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('AGE',style: TextStyle(fontSize: 30),),
                      Text(age.toString(),style: TextStyle(fontSize: 25),),
                      Row(
                        children: [
                          RoundIconButton(icon: Icons.minimize,onPressed: (){
                            setState(() {
                              age--;
                            });
                          },),
                          SizedBox(width: 5,),
                          RoundIconButton(icon: Icons.add,onPressed: (){
                            setState(() {
                              age++;
                            });
                          },),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon,required this.onPressed});
  final IconData icon;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey.shade800,
      onPressed: () {
        onPressed();
        },
      child: Icon(icon),
        );
  }
}

