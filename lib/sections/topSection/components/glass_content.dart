import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/components/my_outline_button_1.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  static const url_buy = 'https://v1exchange.pancakeswap.finance/#/swap?outputCurrency=0x712661a1976992a8f8c82FE74ba4E81a82De1F32';

  @override
  Widget build(BuildContext context) {
    //return ClipRRect(
      //borderRadius: BorderRadius.circular(10),
      //child: BackdropFilter(
        //filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        return Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Lotus",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 0.0,
                ),
              ),
              Text(
                "Timeless design or futuristic backlit\nkeyboard? No matter what you prefer\nwe got you covered.",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white),
              ),

              MyOutlineButton(
                imageSrc: "assets/images/pancake_3_edited.png",
                text: "BUY ON PANCAKESWAP",
                press: () {
                  launch(url_buy);
                },
              ),

              MyOutlineButton1(
                imageSrc: "assets/images/Telegram.png",
                text: "JOIN TELEGRAM",
                press: () {},
              ),
              //Text(
                //"*Telescr.in audit is in progress! We'll update \nwhite paper with findings soon.",
                //style: Theme.of(context)
                    //.textTheme
                    //.headline5
                    //.copyWith(color: Colors.white),
              //),
            ],
          ),
        );
      //),
    //);
  }
}
