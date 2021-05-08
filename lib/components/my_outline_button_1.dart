import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton1 extends StatelessWidget {
  const MyOutlineButton1({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        borderSide: BorderSide(color: Colors.white),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 60,
              width: 90,
              //color: Colors.cyan[300].withAlpha(50),
              //colorBlendMode: BlendMode.dstATop,
            ),
            SizedBox(width: kDefaultPadding),
            Text(text,
                style: TextStyle(
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
