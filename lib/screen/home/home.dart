import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parking/screen/class/classinput.dart';
import 'package:parking/screen/home/homepage.dart';
import 'package:parking/screen/signup/signup.dart';
import 'package:parking/them.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClassInput();
    // SignUp();
    //HomePage();
  }
}
