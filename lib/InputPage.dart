// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tester/IconWidget';
import 'package:tester/customWidget';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static const activeColor = Color(0XFF1D1E33);
  static const containerColor = Color(0XFFEB1555);
  static const hItvalue = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    colour: activeColor,
                    childIcon: SexWidget(FontAwesomeIcons.mars, "MALE"),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeColor,
                    childIcon: SexWidget(FontAwesomeIcons.venus, "FEMALE"),
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
