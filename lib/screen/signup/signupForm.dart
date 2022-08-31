import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:parking/container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parking/screen/class/classinput.dart';
import 'package:parking/screen/class/classinputForm.dart';
import 'package:parking/screen/model/register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<RegisterForm> {
  String carbrand = '';
  String car_color = '';
  TextEditingController _carController = TextEditingController();
  //String selectedValue = 'Brand';
  final List<String> items = [
    'Volvo',
    'Toyota',
    'Isuzu',
    'Mitsubishi',
    'Nissan',
    'Mazda',
    'Ford',
    'MG',
    'Suzuki',
    'None'
  ];
  final List<String> color = ['Black', 'Red', 'Gray', 'White', 'Other'];
  var car = "";
  var brand = "";
  var color_ = "";

  // ValueChanged _onChanged = (val) => carbrand=val;

  void _onChanged(String bran) {
    carbrand = bran;
  }

  void onChanged(String _color) {
    car_color = _color;
  }

  void Car_Registration() {
    setState(() {
      car = "Please Enter Car Registration ";
      brand = "";
      color_ = "";
    });
  }

  void Brand() {
    setState(() {
      car = "Please Enter Brand";
      brand = "";
      color_ = "";
    });
  }

  void _Colors() {
    setState(() {
      car = "";
      brand = "";
      color_ = "Please Enter Colors";
    });
  }

  void Al_all() {
    setState(() {
      car = "Please Enter Car Registration ";
      brand = "Please Enter Brand";
      color_ = "Please Enter Colors";
    });
  }

  Future<void> insertData(final OurRegister) async {
    var message = 0;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    await firestore.collection('Register').get().then((querySnapshot) {
      print(querySnapshot.size);
      message = querySnapshot.size + 1;
    });
    var simple = firestore.collection("Register").doc(message.toString());
    simple.set(OurRegister);
  }

  @override
  Widget build(BuildContext context) {
    return OurContainer(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          child: Text(
            "Register",
            style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        TextFormField(
            // keyboardType: TextInputType.visiblePassword,
            controller: _carController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.car_repair_sharp),
                hintText: "Car Registration")),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "${car}",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        DropdownButtonFormField(
          value: items[0],
          items: items.map((items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (val) {
            setState(() {
              print(val);
              car_color = val.toString();

              val;
            });
          },
          hint: Text('Select Colors'),
        ),
        SizedBox(
          height: 20,
        ),

        // FormBuilderDropdown(
        //   //attribute: "gender",
        //   decoration: InputDecoration(
        //       //labelText: "Gender",
        //       // icon: const Icon(Icons.category),
        //       //hintText: "Select hint",
        //       ),
        //   onChanged: _onChanged,
        //   hint: Text('Select Colors'),
        //   validator: FormBuilderValidators.required(),
        //   items: color
        //       .map((color) => DropdownMenuItem(
        //             value: color,
        //             child: Text('$color'),
        //           ))
        //       .toList(),
        //   name: '',
        // ),
        DropdownButtonFormField(
          value: color[0],
          items: color.map((color) {
            return DropdownMenuItem(
              value: color,
              child: Text(color),
            );
          }).toList(),
          onChanged: (val) {
            setState(() {
              print(val);
              carbrand = val.toString();

              val;
            });
          },
          hint: Text('Select Colors'),
        ),
        SizedBox(
          height: 20,
        ),

        RaisedButton(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                "Register",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            onPressed: () {
              if (items == "" && _carController.text == "" && color == "") {
                Al_all();
              } else if (color == "") {
                _Colors();
              } else if (_carController.text == "") {
                Car_Registration();
              } else if (items == "") {
                Brand();
              } else {
                final String R_register = _carController.text;
                final String R_brand = car_color;
                final String R_Colors = carbrand;

                final OurRegister Register = OurRegister(
                  Registration: R_register,
                  Brand: R_brand,
                  Colors: R_Colors,
                );
                insertData(Register.toMap());
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ClassInput()));
              }
            }),
      ],
    ));
  }
}
