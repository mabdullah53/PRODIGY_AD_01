import 'package:calculator_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput='';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 145,left: 10),
            child: Text(answer.toString(),style: TextStyle(
              fontSize: 35,
              color: Colors.white
            ),),
          ),
            SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(userInput.toString(),style: TextStyle(
                fontSize: 35,
              color: Colors.white
            ),),
          ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Mybutton(text: 'AC',onpress: (){
                  userInput = '';
                  answer = '';
                  setState(() {

                  });
                },),
                Mybutton(text: '+/-',onpress: (){
                  userInput +=  '+/-';
                  setState(() {

                  });
                },),
                Mybutton(text: '%',onpress: (){
                  userInput +=  '%';
                  setState(() {

                  });
                },),
                Mybutton(text: '/',color: Colors.orange,onpress: (){
                  userInput +=  '/';
                  setState(() {

                  });
                },),
              ],
            ),

          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Mybutton(text: '7',onpress: (){
                userInput += '7';
                setState(() {

                });
              },),
              Mybutton(text: '8',onpress: (){
                userInput +=  '8';
                setState(() {

                });
              },),
              Mybutton(text: '0',onpress: (){
                userInput +=  '0';
                setState(() {

                });
              },),
              Mybutton(text: 'x',color: Colors.orange,onpress: (){
                userInput +=  'x';
                setState(() {

                });
              },),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Mybutton(text: '4',onpress: (){
                userInput +=  '4';
                setState(() {

                });
              },),
              Mybutton(text: '5',onpress: (){
                userInput +=  '5';
                setState(() {

                });
              },),
              Mybutton(text: '6',onpress: (){
                userInput +=  '6';
                setState(() {

                });
              },),
              Mybutton(text: '-',color: Colors.orange,onpress: (){
                userInput +=  '-';
                setState(() {

                });
              },),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Mybutton(text: '1',onpress: (){
                userInput +=  '1';
                setState(() {

                });
              },),
              Mybutton(text: '2',onpress: (){
                userInput +=  '2';
                setState(() {

                });
              },),
              Mybutton(text: '3',onpress: (){
                userInput +=  '3';
                setState(() {

                });
              },),
              Mybutton(text: '+',color: Colors.orange,onpress: (){
                userInput +=  '+';
                setState(() {

                });
              },),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Mybutton(text: '9',onpress: (){
                userInput +=  '9';
                setState(() {

                });
              },),
              Mybutton(text: '.',onpress: (){
                userInput +=  '.';
                setState(() {

                });
              },),
              Mybutton(text: 'Del',onpress: (){
                userInput = userInput.substring(0,userInput.length-1);

                setState(() {

                });
              },),
              Mybutton(text: '=',color: Colors.orange,onpress: (){
                equalPress();
                setState(() {

                });
              },),
            ],
          ),

        ],
      ),
    );
  }

  void equalPress (){
     String finalUserInput = userInput;
     finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer =  eval.toString();
  }
}
