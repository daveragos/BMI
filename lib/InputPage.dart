// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tester/IconWidget.dart';
import 'package:tester/CardWidget.dart';

import 'consts.dart';

const activeColor = Color(0XFF1D1E63);
const inactiveColor = Color(0XFF111328);
const containerColor = Color(0XFFEB1555);
const hItvalue = 80.0;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E01),
        title: Center(
          child: Text(
            "BMI CALCULATOR",
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    clicked: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    colour: gender == Gender.male ? activeColor : inactiveColor,
                    childWij: SexWidget(
                      FontAwesomeIcons.mars,
                      "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    clicked: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    colour:
                        gender == Gender.female ? activeColor : inactiveColor,
                    childWij: SexWidget(
                      FontAwesomeIcons.venus,
                      "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
                colour: activeColor,
                childWij: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kTxtStyl,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '189',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "cm",
                          style: kTxtStyl,
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: activeColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: containerColor,
            height: hItvalue,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
