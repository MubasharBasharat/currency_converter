import 'dart:math';

import 'package:currency_converter/components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int res = 0;
  var userInput = '';
  int answer = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: Column(
          children: [
            //first row in which container is wrapped where curency value is to be displayed
            const Center(
              child: Text(
                'Currency Converter',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 270,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Pkr Value is:',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(userInput.toString()),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '     Dirham Value is Value is:',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(answer.toString()),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //end of row where currency is to be displayed
            Container(
              width: 270,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                          },
                          title: '7'),
                      MyButton(
                          onPress: () {
                            userInput += '8';
                            setState(() {});
                          },
                          title: '8'),
                      MyButton(
                          onPress: () {
                            userInput += '9';
                            setState(() {});
                          },
                          title: '9'),
                      MyButton(
                          title: 'AC',
                          onPress: () {
                            userInput = '';
                            answer = 0;
                            setState(() {});
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                          onPress: () {
                            userInput += '4';
                            setState(() {});
                          },
                          title: '4'),
                      MyButton(
                          onPress: () {
                            userInput += '5';
                            setState(() {});
                          },
                          title: '5'),
                      MyButton(
                          onPress: () {
                            userInput += '6';
                            setState(() {});
                          },
                          title: '6'),
                      MyButton(
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                          title: 'Del'),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    MyButton(
                                        onPress: () {
                                          userInput += '1';
                                          setState(() {});
                                        },
                                        title: '1'),
                                    MyButton(
                                        onPress: () {
                                          userInput += '2';
                                          setState(() {});
                                        },
                                        title: '2'),
                                    MyButton(
                                        onPress: () {
                                          userInput += '3';
                                          setState(() {});
                                        },
                                        title: '3'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    MyButton(
                                        onPress: () {
                                          userInput += '0';
                                          setState(() {});
                                        },
                                        title: '0'),
                                    MyButton(
                                      onPress: () {
                                        userInput += ',';
                                        setState(() {});
                                      },
                                      title: ',',
                                      prwidth: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              MyButton(
                                onPress: () {
                                  res = int.parse(userInput);
                                  answer = res * 75;
                                  setState(() {});
                                },
                                title: 'ok',
                                prheight: 100,
                              )
                            ],
                          )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
