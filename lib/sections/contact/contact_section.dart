import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/sand_background.jpg"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Disclaimer",
            //subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox(size: 0)
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final int size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1300,
      //constraints: BoxConstraints(maxWidth: 1200),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 5),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Text(
        "The content shared on this website is for information purpose only and thus should not be considered as financial advice. Trading/Investing is risky and you should never invest more than you can afford to lose. Cryptocurrencies are risky. Never invest more than you can afford to lose. You alone assume the sole responsibility of evaluating the merits and risks associated with the use of any information or other content on the site before making any decisions based on such information or other content.",
        textAlign: TextAlign.center,
        //textHeightBehavior: TextHeightBehavior.fromEncoded(10),
        style: (TextStyle(
          color: Colors.white38,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        )
        )
      )
    );
  }
}