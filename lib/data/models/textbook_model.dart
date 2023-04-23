import 'package:flutter/material.dart';

class TextBook {
  final String item;
  final String condition;
  final int price;
  final String description;
  final String seller;
  final String userID;
  final Image img_url;
  final bool isSold;
  final DateTime timestamp;

  TextBook({
    required this.item,
    required this.condition,
    required this.price,
    required this.description,
    required this.seller,
    required this.userID,
    required this.img_url,
    required this.isSold,
    required this.timestamp
    });
}