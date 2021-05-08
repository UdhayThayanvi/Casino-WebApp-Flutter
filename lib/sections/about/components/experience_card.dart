import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard2 extends StatelessWidget {
  const ExperienceCard2({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 150,
      width: 450,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BIG JACKPOT Daily",
              style: TextStyle(
                color: Color(0xFFA600FF),
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: kDefaultPadding / 2),
            Stack(
              children: [
                CustomTimer(
                  from: Duration(hours: 12),
                  to: Duration(hours: 0),
                  onBuildAction: CustomTimerAction.auto_start,
                  builder: (CustomTimerRemainingTime remaining) {
                    return Text(
                      "${remaining.hours}:${remaining.minutes}:${remaining.seconds}",
                      style: TextStyle(fontSize: 40.0,
                      color: Color(0xFFA600FF)),
                    );
                  },
                ),
              ],
            ),

          ],
        ),
      );
  }
}
