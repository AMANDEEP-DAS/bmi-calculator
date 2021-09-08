import 'package:flutter/material.dart';

import 'container.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
        child: Column(
          children: [
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxContainers(),
                BoxContainers(),
              ],
            )),
            SizedBox(height: 10,),
            Expanded(child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width-20,
                  decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                )
              ],
            )),
            SizedBox(height: 10,),
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxContainers(),
                BoxContainers(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
