import 'package:flutter/material.dart';

class Feedback {
  final String review, userPic, name;
  final int id;
  final Color color;

  Feedback({this.review, this.userPic, this.id, this.color, this.name});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Initial Phase",
    review: " Initial Phase\n\n- PreSale with DxSale\n- Launch on PancakeSwap\n- Complete redesign of our Website\n- Community Events",
    userPic: "assets/images/red_baloon.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Second Phase",
    review: " Second Phase\n\n- Marketing Campaign\n- CoinMarketCap Listing\n- CoinGecko Listing\n- Airdrop for Holders\n- Adding  more functionality to our\n Telegram Bot",
    userPic: "assets/images/red_baloon.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Third Phase",
    review: " Third Phase\n\n- Eligibility bot for Big JACKPOT\n- Community Airdrops\n- JACKPOT drawing and Winner \n livestream on website\n- Game betting with ROUL token",
    userPic: "assets/images/red_baloon.png",
    color: Color(0xFFFFE0E0),
  ),
];

//String review =
    //'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
