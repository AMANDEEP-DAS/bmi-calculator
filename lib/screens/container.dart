import 'package:flutter/material.dart';

class BoxContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 2.2,
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }
}
