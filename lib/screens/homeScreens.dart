import 'package:bmicalculator/widgets/left_bar.dart';
import 'package:bmicalculator/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController widthcontroller = TextEditingController();
  double result = 0;
  String textResult = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                      controller: heightcontroller,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.yellow,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Height',
                          hintStyle:
                              TextStyle(fontSize: 30, color: Colors.white))),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  child: TextField(
                      controller: widthcontroller,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.yellow,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Weight',
                          hintStyle:
                              TextStyle(fontSize: 30, color: Colors.white))),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  double h = double.parse(heightcontroller.text);
                  double w = double.parse(widthcontroller.text);
                  setState(() {
                    result = (w / h / h) * 10000;
                    if (result > 30) {
                      textResult = "Obese";
                    }
                    else if(result<18.5){
                      textResult = " You are Under Weight";
                    }
                    else if (result >= 18.5 && result <= 25) {
                      textResult = "You have Healthy Weight";
                    } else {
                      textResult = "You are Over Weight";
                    }
                  });
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(10),
                  elevation: 20,
                ),
                child: Text(
                  "CHECK",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                result.toStringAsFixed(2),
                style: TextStyle(fontSize: 90, color: Colors.yellow),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Visibility(
              visible: textResult.isNotEmpty,
              child: Container(
                child: Text(
                  textResult,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.yellow),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            leftBar(barWidth: 40),
            SizedBox(
              height: 10,
            ),
            leftBar(barWidth: 80),
            SizedBox(
              height: 10,
            ),
            leftBar(barWidth: 40),
            rightBar(barWidth: 40),
            SizedBox(
              height: 10,
            ),
            rightBar(barWidth: 80)
          ],
        ),
      ),
    );
  }
}
