import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: Image.asset("assets/images/dice.jpg",
      //fit: BoxFit.cover,
      //child: ColorFiltered(colorFilter: greyscale, child: Image.asset("assets/images/casino-roulette-with-floating-chips-png-image.jpg"),
      //color: Colors.cyan[300].withAlpha(100),
      //colorBlendMode: BlendMode.dstATop,
      ),
    );
  }
}
