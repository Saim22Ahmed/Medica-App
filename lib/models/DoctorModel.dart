import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medo_app/resources/pics.dart';

class DoctorModel {
  static final items = [
    Item(
        image: Docpics.Dentist,
        trailing: MyPics.Hearticon,
        name: 'Dr. George Beller',
        desc: 'Dentist  |  Alka Hospital',
        reviews: '4.3  (5,376 reviews)',
        category: 'Dentist'),
    Item(
        image: Docpics.General,
        trailing: MyPics.Hearticon,
        name: 'Dr. Wang Zhenyi',
        desc: 'General  |  Pine Grove Hospital',
        reviews: '4.2  (4,336 reviews)',
        category: 'General'),
    Item(
        image: Docpics.General1,
        trailing: MyPics.Hearticon,
        name: 'Dr. Michael Wilson',
        desc: 'General  |  Alka Hospital',
        reviews: '4.1  (4,666 reviews)',
        category: 'General'),
    Item(
        image: Docpics.Dentist1,
        trailing: MyPics.Hearticon,
        name: 'Dr. Emily Johnson',
        desc: 'Dentist  |  Skyline Hospital',
        reviews: '4.6  (5,111 reviews)',
        category: 'Dentist'),
    Item(
        image: Docpics.Pediatric,
        trailing: MyPics.Hearticon,
        name: 'Dr. Sarah Patel',
        desc: 'Pediatric  |  Brookside Hospital',
        reviews: '4.8  (6,211 reviews)',
        category: 'Pediatric'),
    Item(
        image: Docpics.Pediatric1,
        trailing: MyPics.Hearticon,
        name: 'Dr. Jeniifer Nguyen ',
        desc: 'Pediatric  |  Forest Hills Hospital',
        reviews: '4.6  (4,444 reviews)',
        category: 'Pediatric'),
    Item(
        image: Docpics.opthalmologist,
        trailing: MyPics.Hearticon,
        name: 'Dr. David Kim',
        desc: 'Opthalmologist  |  Alka Hospital',
        reviews: '4.6  (4,444 reviews)',
        category: 'Opthalmologist'),
    Item(
        image: Docpics.opthalmologist1,
        trailing: MyPics.Hearticon,
        name: 'Dr. Tim Pattinson',
        desc: 'Opthalmologist  |  Brooklyn Hospital',
        reviews: '4.8  (5,435 reviews)',
        category: 'Opthalmologist'),
    Item(
      image: Docpics.Nutritionist,
      trailing: MyPics.Hearticon,
      name: 'Dr. William Thomas',
      desc: 'Nutritionist  |  Brookside Hospital',
      reviews: '4.8  (5,543 reviews)',
      category: 'Nutritionist',
    ),
  ];
}

class Item {
  final AssetImage image;
  final String name;
  final String desc;
  final String reviews;
  final dynamic trailing;
  final String category;

  Item({
    required this.image,
    required this.trailing,
    required this.name,
    required this.desc,
    required this.reviews,
    required this.category,
  });
}

class DoctorCategory {
  List<Item> alldocs = DoctorModel.items
      .where((item) =>
          item.category == 'General' ||
          item.category == 'Dentist' ||
          item.category == 'Nutritionist' ||
          item.category == 'Pediatric' ||
          item.category == 'Opthalmologist')
      .toList();
  List<Item> generalDocs =
      DoctorModel.items.where((item) => item.category == 'General').toList();
  List<Item> dentist =
      DoctorModel.items.where((item) => item.category == 'Dentist').toList();
  List<Item> nutritionist = DoctorModel.items
      .where((item) => item.category == 'Nutritionist')
      .toList();
  List<Item> Pediatric =
      DoctorModel.items.where((item) => item.category == 'Pediatric').toList();
  List<Item> Opthalmologist = DoctorModel.items
      .where((item) => item.category == 'Opthalmologist')
      .toList();
}
