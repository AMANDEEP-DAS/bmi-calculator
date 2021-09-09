import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int height = 180;
  int weight = 0;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: Colors.black54,
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
                Container(
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: Colors.black54,
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

