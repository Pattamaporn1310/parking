import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Floorone extends StatefulWidget {
  const Floorone({Key? key}) : super(key: key);

  @override
  State<Floorone> createState() => _FlooroneState();
}

class _FlooroneState extends State<Floorone> {
  List floor = [1, 2, 3, 4, 5, 6];
  // void One() {
  //   for (int i, i = 0; i < 10; i++) {}
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: floor.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(floor[index].toString()),
              subtitle: Text(floor[index].toString()),
            );
          }),
    );
  }
}
