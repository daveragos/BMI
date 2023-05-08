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
int height = 179;
int weight = 50;
int age = 18;
var result = "CALCULATE YOUR BMI";

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
                          height.toString(),
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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0XFFEB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayColor: Color(0X29FF155E),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey),
                      child: Slider(
                        min: 120,
                        max: 222,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(
                            () {
                              height = value.round();
                            },
                          );
                        },
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: activeColor,
                    childWij: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kTxtStyl,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 60),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.all(12),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(FontAwesomeIcons.minus)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0XFFEB1555),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(FontAwesomeIcons.plus)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeColor,
                    childWij: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kTxtStyl,
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 60),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.all(12),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(FontAwesomeIcons.minus)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0XFFEB1555),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(FontAwesomeIcons.plus)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: containerColor,
              height: hItvalue,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    int res = height + age + weight;
                    result = res.toString();
                  });
                },
                child: Center(
                  child: Text(result,
                      style: kTxtStyl.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
