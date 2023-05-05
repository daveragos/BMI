// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tester/IconWidget';
import 'package:tester/CardWidget';

const activeColor = Color(0XFF1D1E33);
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
  Color malecardcolor = inactiveColor;
  Color femalecardcolor = inactiveColor;
  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (malecardcolor == inactiveColor) {
        malecardcolor = activeColor;
        femalecardcolor = inactiveColor;
      } else {
        malecardcolor = inactiveColor;
      }
    }
    if (gender == Gender.female) {
      if (femalecardcolor == inactiveColor) {
        femalecardcolor = activeColor;
        malecardcolor = inactiveColor;
      } else {
        femalecardcolor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E1),
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReuseableCard(
                      colour: malecardcolor,
                      childIcon: SexWidget(FontAwesomeIcons.mars, "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReuseableCard(
                      colour: femalecardcolor,
                      childIcon: SexWidget(FontAwesomeIcons.venus, "FEMALE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: activeColor,
            ),
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
