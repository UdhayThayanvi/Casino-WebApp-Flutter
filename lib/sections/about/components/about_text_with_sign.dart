import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard1 extends StatelessWidget {
  const ExperienceCard1({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      padding: EdgeInsets.all(5.0),
      //height: 150,
      //width: 450,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SizedBox(width: 60),
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Image(image: AssetImage('assets/images/hourglass-2.png'), width: 80, height: 80),
            SizedBox(height: 10),
              Text(
              "Total Supply",
              style: TextStyle(
                color: Colors.pink[900],
                fontSize: 30.0
              ),
            ),
            SizedBox(height: 10),
            Text(
              "700.3 K",
              style: TextStyle(
                  color: Colors.pink[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            //Image.asset("assets/images/hourglass-1.png"),
          ],
        ),
          SizedBox(width: 70),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image(image: AssetImage('assets/images/hourglass-2.png'), width: 80, height: 80),
              SizedBox(height: 10),
              Text(
                "Tokens Burned",
                style: TextStyle(
                    color: Colors.pink[900],
                    fontSize: 30.0
                ),
              ),
              SizedBox(height: 10),
              Text(
                "1.9 M",
                style: TextStyle(
                  color: Colors.pink[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(width: 70),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image(image: AssetImage('assets/images/hourglass-2.png'), width: 80, height: 80),
              SizedBox(height: 10),
              Text(
                "Holders",
                style: TextStyle(
                    color: Colors.pink[900],
                    fontSize: 30.0
                ),
              ),
              SizedBox(height: 10),
              Text(
                "4,000",
                style: TextStyle(
                  color: Colors.pink[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(width: 70),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image(image: AssetImage('assets/images/hourglass-2.png'), width: 80, height: 80),
              SizedBox(height: 10),
              Text(
                "Price",
                style: TextStyle(
                    color: Colors.pink[900],
                    fontSize: 30.0
                ),
              ),
              SizedBox(height: 10),
              Text(
                "1.40 dollars",
                style: TextStyle(
                  color: Colors.pink[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(width: 70),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image(image: AssetImage('assets/images/hourglass-2.png'), width: 80, height: 80),
              SizedBox(height: 10),
              Text(
                "Market Cap",
                style: TextStyle(
                    color: Colors.pink[900],
                    fontSize: 30.0
                ),
              ),
              SizedBox(height: 10),
              Text(
                "2.3 M dollars",
                style: TextStyle(
                  color: Colors.pink[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
      ],
        ),
    );
  }
}
