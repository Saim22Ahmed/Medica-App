import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medo_app/screens.dart/Doc_categoery_screens/docs_category.dart';

import '../../models/DoctorModel.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final currentpage = ModalRoute.of(context)!.settings.arguments as dynamic;
    // final DoctorCategoryModel doctor = currentpage;
    final DoctorModel currentpage =
        ModalRoute.of(context)!.settings.arguments as DoctorModel;
    return Scaffold(
      body: Text('sdsa'),
    );
  }
}
