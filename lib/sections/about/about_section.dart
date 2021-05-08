import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/3DimensionalChart.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

final spinkit = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
);

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 1000, minHeight: 900),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/gradient.jpg"),
        ),
      ),
      child: Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //AboutTextWithSign(),
              //Expanded(
                //child: AboutSectionText(
                  //text:
                      //"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                //),
              //),
              ExperienceCard1(numOfExp: "08"),
              //ExperienceCard2(numOfExp: "08"),
              //Expanded(
                //child: AboutSectionText(
                  //text:
                      //"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                //),
              //),
            ],
          ),
          SizedBox(height: kDefaultPadding * 4),
      Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Time to next lottery event",
                        style: TextStyle(
                            color: Colors.pink[900],
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 30),
                      //Image.asset("assets/images/hourglass-1.png"),
                      //Image(image: ResizeImage(MemoryImage("assets/images/hourglass-1.png"), width: 50, height: 100)),
                      //new Image(image: AssetImage('assets/images/hourglass-2.png'), width: 80, height: 80),
                      spinkit,
                  ],
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  CustomTimer(
                    from: Duration(hours: 12),
                    to: Duration(hours: 0),
                    onBuildAction: CustomTimerAction.auto_start,
                    builder: (CustomTimerRemainingTime remaining) {
                      return Text(
                        "${remaining.hours}:${remaining.minutes}:${remaining.seconds}",
                        style: TextStyle(fontSize: 70.0,
                            color: Colors.pink[900]),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
          //SizedBox(height: 5.0),
          Container(
            //margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            //constraints: BoxConstraints(maxWidth: 1110),
            height: 400,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //PieChartSample2(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.pink[900],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Table(
                      defaultColumnWidth: FixedColumnWidth(120.0),
                    //border: TableBorder.all(color: Colors.pink[900]),
                    //columnWidths: Map(Int, 5),// Allows to add a border decoration around your table
                      border: TableBorder.symmetric(
                        inside: BorderSide(width: 3,
                        color: Colors.pink[900],),
                      ),
                      children: [
                        TableRow(children :[
                          Text('Date'),
                          Text('Winner'),
                          Text('Reward'),
                        ]),
                        TableRow(children :[
                          Text('5.08.2021',),
                          Text('xxxxxxxx'),
                          Text('400'),
                        ]),
                        TableRow(children :[
                          Text('10h 9m 40s'),
                          Text('xxxxxxxx'),
                          Text('320'),
                        ]),
                        TableRow(children :[
                          Text('10h 9m 40s'),
                          Text('xxxxxxxx'),
                          Text('700'),
                        ]),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
