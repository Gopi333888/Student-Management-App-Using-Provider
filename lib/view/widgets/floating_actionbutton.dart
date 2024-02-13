import 'package:flutter/material.dart';

import 'package:studentmanagement_provider/core/constants.dart';
import 'package:studentmanagement_provider/view/add_studentscreen.dart/add_student_screen.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
    this.page,
  });
  final dynamic page;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: FloatingActionButton(
          backgroundColor: appBarClrBlk,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AddStudentScreen(),
            ));
          },
          child: const Icon(
            Icons.add,
            size: 25,
            color: appBarClrWhite,
          )),
    );
  }
}
