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
        reviews: '(5,376 reviews)',
        category: 'Dentist',
        location: 'London, Uk',
        rating: '4.3',
        about:
            'Dr. George Beller is a skilled and experienced dentist who practices at Alka Hospital in London, UK. With a focus on providing exceptional care to his patients, Dr. Beller has become well-known for his expertise in the field of dentistry. He has received over 5,000 positive reviews from his patients, a testament to his commitment to providing high-quality care. His specialties include general dentistry, cosmetic dentistry, and restorative dentistry. Dr. Beller is dedicated to ensuring that his patients receive the best possible treatment and care, and is always available to answer any questions or concerns they may have. If you are looking for a caring and knowledgeable dentist, Dr. George Beller is an excellent choice.'),
    Item(
      image: Docpics.General,
      trailing: MyPics.Hearticon,
      name: 'Dr. Wang Zhenyi',
      desc: 'General',
      reviews: '(4,336 reviews)',
      rating: '4.2',
      category: 'General',
      hospital: 'Pine Grove Hospital',
      location: 'Paris , France',
      about:
          'Dr. Wang Zhenyi is a highly experienced general practitioner who has been serving the community for over a decade. He specializes in providing personalized care to his patients, taking the time to listen to their concerns and develop a treatment plan that is tailored to their individual needs. Dr. Zhenyi is dedicated to staying up-to-date with the latest advancements in medical technology and techniques, ensuring that his patients receive the best possible care. He has received over 4,000 positive reviews from his patients, a testament to his commitment to providing compassionate and effective care. If you are looking for a skilled and caring general practitioner, Dr. Wang Zhenyi is an excellent choice.',
    ),
    Item(
      image: Docpics.General1,
      trailing: MyPics.Hearticon,
      name: 'Dr. Michael Wilson',
      desc: 'General',
      rating: '4.1',
      reviews: '(4,666 reviews)',
      category: 'General',
      hospital: 'Alka Hospital',
      location: 'Sydney , Australia',
      about:
          'Dr. Michael Wilson is a dedicated and compassionate general practitioner who has been serving the community for over 15 years. He is known for his expertise in diagnosing and treating a wide range of medical conditions, and for his commitment to providing personalized care to his patients. Dr. Wilson has received over 4,500 positive reviews from his patients, a testament to his compassionate approach and dedication to excellence. He specializes in general medicine, and is committed to helping his patients achieve optimal health and wellbeing. If you are looking for a skilled and compassionate general practitioner, Dr. Michael Wilson is an excellent choice.',
    ),
    Item(
      image: Docpics.Dentist1,
      trailing: MyPics.Hearticon,
      name: 'Dr. Emily Johnson',
      desc: 'Dentist',
      reviews: '(5,111 reviews)',
      category: 'Dentist',
      hospital: 'Skyline Hospital',
      location: 'Rome , Italy',
      rating: '4.6',
      about:
          'Dr. Emily Johnson is an experienced dentist at Skyline Hospital in Rome, Italy. With over 5,000 positive reviews, Dr. Johnson has a reputation for providing top-notch dental care to her patients. She specializes in a variety of dental procedures, including cleanings, fillings, and root canals. Dr. Johnson is committed to staying up-to-date with the latest dental techniques and technologies to ensure that her patients receive the best possible care.',
    ),
    Item(
      image: Docpics.Pediatric,
      trailing: MyPics.Hearticon,
      name: 'Dr. Sarah Patel',
      desc: 'Pediatric  |  Brookside Hospital',
      reviews: '(6,211 reviews)',
      rating: '4.8 ',
      category: 'Pediatric',
      hospital: 'Brookside Hospital',
      location: 'New York , USA',
      about:
          'Dr. Sarah Patel is a highly experienced pediatrician in the Brookside Hospital at New York , USA. She specializes in the diagnosis and treatment of a wide range of pediatric conditions, and is committed to providing compassionate care to each of her young patients.',
    ),
    Item(
      image: Docpics.Pediatric1,
      trailing: MyPics.Hearticon,
      name: 'Dr. Jeniifer Nguyen ',
      desc: 'Pediatric',
      reviews: '(4,444 reviews)',
      category: 'Pediatric',
      hospital: 'Forest Hills Hospital',
      location: 'Moscow , Russia',
      rating: '4.6',
      about:
          'Dr. Jennifer Nguyen is a highly experienced pediatrician, currently practicing at Forest Hills Hospital in Moscow, Russia. With a focus on providing the best possible care for children, Dr. Nguyen has earned a reputation as a compassionate and skilled practitioner. She has received over 4,000 positive reviews from her patients, a testament to her dedication to providing exceptional care. If you are looking for a caring and knowledgeable pediatrician for your child, Dr. Jennifer Nguyen is an excellent choice.',
    ),
    Item(
      image: Docpics.opthalmologist,
      hospital: 'Johns Hopkins Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. David Kim',
      desc: 'Opthalmologist',
      reviews: '(4,444 reviews)',
      category: 'Opthalmologist',
      location: 'New York , USA',
      rating: '4.6',
      about:
          'Dr. David Kim is an accomplished ophthalmologist at Johns Hopkins Hospital in New York, USA. With over 4,000 glowing reviews, Dr. Kim is known for his expertise in the diagnosis and treatment of eye diseases and conditions. He is particularly skilled in cataract surgery, LASIK, and other refractive surgeries. Dr. Kim is dedicated to improving the vision and quality of life of his patients through compassionate and personalized care.',
    ),
    Item(
      image: Docpics.opthalmologist1,
      hospital: 'Brooklyn Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. Tim Pattinson',
      desc: 'Opthalmologist',
      reviews: '(5,435 reviews)',
      category: 'Opthalmologist',
      location: 'Toronto , Canada',
      rating: '4.8',
      about:
          'Dr. Tim Pattinson is a highly respected ophthalmologist at Brooklyn Hospital in Toronto, Canada. With over 5,000 satisfied patients, Dr. Pattinson is an expert in the diagnosis and treatment of a wide range of eye conditions, including glaucoma, macular degeneration, and diabetic retinopathy. He is dedicated to providing the highest quality of care to his patients, utilizing the latest technology and surgical techniques to ensure the best possible outcomes.',
    ),
    Item(
      image: Docpics.General2,
      hospital: 'Brookside Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. Li Mei Ling',
      desc: 'General',
      reviews: '(5,834 reviews)',
      category: 'General',
      location: 'Beijing , China',
      rating: '4.8',
      about:
          'Dr. Li Mei Ling is a skilled general practitioner at Brookside Hospital in Beijing, China. With over 5,000 positive reviews, Dr. Mei Ling has a reputation for providing compassionate and personalized care to her patients. She is particularly interested in preventive medicine and works closely with her patients to develop customized treatment plans that promote overall health and wellness.',
    ),
    Item(
      image: Docpics.Radiologist,
      hospital: 'Riverbend Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. Chadwick West',
      desc: 'Opthalmologist',
      reviews: '(4,754 reviews)',
      category: 'Opthalmologist',
      location: 'Madrid , Spain',
      rating: '4.6',
      about:
          'Dr. Chadwick West is an experienced ophthalmologist at Riverbend Hospital in Madrid, Spain. With over 4,000 happy patients, Dr. West is known for his expertise in the diagnosis and treatment of eye diseases and conditions, including cataracts, glaucoma, and macular degeneration. He is committed to staying at the forefront of his field, utilizing the latest technology and surgical techniques to provide the best possible care to his patients.',
    ),
    Item(
      image: Docpics.Nutritionist,
      hospital: 'Brookside Hospital',
      trailing: MyPics.Hearticon,
      name: 'Dr. William Thomas',
      desc: 'Nutritionist',
      reviews: '(5,543 reviews)',
      category: 'Nutritionist',
      location: 'Berlin , Germany',
      rating: '4.8',
      about:
          'Dr. William Thomas is a highly skilled nutritionist at Brookside Hospital in Berlin, Germany. With over 5,000 satisfied patients, Dr. Thomas has a reputation for providing personalized nutrition counseling and support to help his patients achieve their health goals. He specializes in a variety of areas, including weight management, sports nutrition, and disease prevention. Dr. Thomas is passionate about educating his patients about the importance of nutrition and helping them make sustainable lifestyle changes.',
    ),
    Item(
        image: Docpics.Nutritionist1,
        hospital: 'Seaview Hospital',
        trailing: MyPics.Hearticon,
        name: 'Dr. Henna Brian',
        desc: 'Nutritionist',
        reviews: '(3,512 reviews)',
        category: 'Nutritionist',
        location: 'Tokyo , Japan',
        rating: '4.4',
        about:
            "Dr. Henna Brian is a renowned nutritionist with a rating of 4.4 based on 3,512 reviews. She practices at Seaview Hospital in Tokyo, Japan. With years of experience in the field of nutrition, Dr. Brian is committed to helping people maintain a healthy lifestyle through personalized diet plans and nutrition counseling. She is an expert in weight management, diabetes, and heart health, and strives to provide the best possible care to her patients. Dr. Brian's extensive knowledge and dedication to her work have earned her a reputation as one of the top nutritionists in the region."),
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
  final String rating;
  final String about;

  Item({
    required this.image,
    required this.trailing,
    required this.name,
    required this.desc,
    required this.reviews,
    required this.category,
    required this.hospital,
    required this.location,
    required this.rating,
    required this.about,
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
