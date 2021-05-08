import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, description;
  final Color color;

  Service({this.id, this.title, this.color, this.description});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Tokenomics",
    //image: "assets/images/graphic.png",
    description: "ROUL is a JACKPOT  token that is fully powered by an automated redistribution mechanism within the blockchain. Every 4 hours you have a chance to win the JACKPOT. A random winner is selected using  our custom algorithm based on Solidity Blockhash. Our system is Fast, Transparent, and Secure.",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Sharing",
    //image: "assets/images/desktop.png",
    description: "Holders in the TOP 60% of wallets qualify for the huge DAILY JACKPOT. 1,000 tokens makes you eligible for the MAIN JACKPOT.",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Deflation",
    //image: "assets/images/ui.png",
    description: "Each transaction has a 10% fee. All transactions of the ROUL token allocate additional tokens to JACKPOT wallets for redistribution. Tokens are burned during each transaction. 1% is burned forever, making each reamining ROUL instantly more valuable.",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Acquisition",
    //image: "assets/images/Intreaction_design.png",
    description: "The Liquidity Pool is always expanding thanks to the inclusion of automated LP acquisition.",
    color: Color(0xFFFFE0E0),
  ),
];
