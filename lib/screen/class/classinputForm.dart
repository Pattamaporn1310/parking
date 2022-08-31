import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parking/container.dart';
import 'package:parking/screen/class/Floor/floorOne.dart';

class ClassInputForm extends StatefulWidget {
  const ClassInputForm({Key? key}) : super(key: key);

  @override
  State<ClassInputForm> createState() => _ClassInputFormState();
}

class _ClassInputFormState extends State<ClassInputForm> {
  int one = 10;
  int two = 10;
  int tree = 10;
  @override
  Widget build(BuildContext context) {
    return OurContainer(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 50, bottom: 20),
          child: Text(
            "Please select the floor to park",
            style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        FlatButton(
          color: Theme.of(context).canvasColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                  color: Theme.of(context).secondaryHeaderColor, width: 2)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Floorone()));
          },
          child: Container(
              child: Text(
            "              Parking  1   floor      ${one}/10 ",
            style: TextStyle(fontSize: 20),
          )),
        ),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          color: Theme.of(context).canvasColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                  color: Theme.of(context).secondaryHeaderColor, width: 2)),
          onPressed: () {},
          child: Container(
              child: Text(
            "              Parking  2   floor      ${two}/10 ",
            style: TextStyle(fontSize: 20),
          )),
        ),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          color: Theme.of(context).canvasColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                  color: Theme.of(context).secondaryHeaderColor, width: 2)),
          onPressed: () {},
          child: Container(
              child: Text(
            "              Parking  3   floor      ${tree}/10 ",
            style: TextStyle(fontSize: 20),
          )),
        ),
      ],
    ));
  }
}
