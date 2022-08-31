import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parking/screen/class/classinputForm.dart';

class ClassInput extends StatelessWidget {
  const ClassInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12),
              children: [
                SizedBox(
                  height: 40,
                ),
                BackButton(),
                Image.asset("assets/logo_main.png"),
                // SizedBox(
                //   height: 10,
                // ),
                ClassInputForm()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
