import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medo_app/resources/pics.dart';

class DoctorModel {
  static final items = [
    Item(
        image: Docpics.Dentist,
        hospital: 'Alka Hospital',
        trailing: MyPics.Hearticon,
        name: 'Dr. George Beller',
        desc: 'Dentist',
        reviews: '4.3  (5,376 reviews)',
        category: 'Dentist',
        location: 'London, Uk'),
    Item(
      image: Docpics.General,
      trailing: MyPics.Hearticon,
      name: 'Dr. Wang Zhenyi',
      desc: 'General',
      reviews: '4.2  (4,336 reviews)',
      category: 'General',
      hospital: 'Pine Grove Hospital',
      location: 'Paris , France',
    ),
    Item(
      image: Docpics.General1,
      trailing: MyPics.Hearticon,
      name: 'Dr. Michael Wilson',
      desc: 'General',
      reviews: '4.1  (4,666 reviews)',
      category: 'General',
      hospital: 'Alka Hospital',
      location: 'Sydney , Australia',
    ),
    Item(
      image: Docpics.Dentist1,
      trailing: MyPics.Hearticon,
      name: 'Dr. Emily Johnson',
      desc: 'Dentist',
      reviews: '4.6  (5,111 reviews)',
      category: 'Dentist',
      hospital: 'Skyline Hospital',
      location: 'Rome , Italy',
    ),
    Item(
      image: Docpics.Pediatric,
      trailing: MyPics.Hearticon,
      name: 'Dr. Sarah Patel',
      desc: 'Pediatric  |  Brookside Hospital',
      reviews: '4.8  (6,211 reviews)',
      category: 'Pediatric',
      hospital: 'Brookside Hospital',
      location: 'New York , USA',
    ),
    Item(
      image: Docpics.Pediatric1,
      trailing: MyPics.Hearticon,
      name: 'Dr. Jeniifer Nguyen ',
      desc: 'Pediatric',
      reviews: '4.6  (4,444 reviews)',
      category: 'Pediatric',
      hospital: 'Forest Hills Hospital',
      location: 'Moscow , Russia',
    ),
    Item(
      image: Docpics.opthalmologist,
      hospital: 'Johns Hopkins Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. David Kim',
      desc: 'Opthalmologist',
      reviews: '4.6  (4,444 reviews)',
      category: 'Opthalmologist',
      location: 'New York , USA',
    ),
    Item(
      image: Docpics.opthalmologist1,
      hospital: 'Brooklyn Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. Tim Pattinson',
      desc: 'Opthalmologist',
      reviews: '4.8  (5,435 reviews)',
      category: 'Opthalmologist',
      location: 'Toronto , Canada',
    ),
    Item(
      image: Docpics.General2,
      hospital: 'Brookside Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. Li Mei Ling',
      desc: 'General',
      reviews: '4.8  (5,834 reviews)',
      category: 'General',
      location: 'Beijing , China',
    ),
    Item(
      image: Docpics.Radiologist,
      hospital: 'Riverbend Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. Chadwick West',
      desc: 'Opthalmologist',
      reviews: '4.6  (4,754 reviews)',
      category: 'Opthalmologist',
      location: 'Madrid , Spain',
    ),
    Item(
      image: Docpics.Nutritionist,
      hospital: 'Brookside Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. William Thomas',
      desc: 'Nutritionist',
      reviews: '4.8  (5,543 reviews)',
      category: 'Nutritionist',
      location: 'Berlin , Germany',
    ),
    Item(
      image: Docpics.Nutritionist1,
      hospital: 'Seaview Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. Henna Brian',
      desc: 'Nutritionist',
      reviews: '4.4  (3,512 reviews)',
      category: 'Nutritionist',
      location: 'Tokyo , Japan',
    ),
  ];
}

class Item {
  final AssetImage image;
  final String name;
  final String desc;
  final String hospital;
  final String reviews;
  final dynamic trailing;
  final String category;
  final String location;

  Item({
    required this.image,
    required this.trailing,
    required this.name,
    required this.desc,
    required this.reviews,
    required this.category,
    required this.hospital,
    required this.location,
  });
}

class DoctorCategoryModel {
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
