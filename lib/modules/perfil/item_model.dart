import 'package:flutter/material.dart';

class ItemModel {
  bool expanded;
  String headerItem;
  String email;
  String city;
  String district;
  String address;
  String discription;
  Color colorsItem;

  ItemModel({
    this.expanded = false,
    required this.headerItem,
    required this.email,
    required this.city,
    required this.district,
    required this.address,
    required this.discription,
    required this.colorsItem,
  });
}
