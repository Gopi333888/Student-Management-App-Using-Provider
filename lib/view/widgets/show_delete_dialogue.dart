import 'package:flutter/material.dart';
import 'package:studentmanagement_provider/core/constants.dart';
import 'package:studentmanagement_provider/model/student.dart';
import 'package:studentmanagement_provider/view/widgets/text_button.dart';

void showDialogueforDelete(BuildContext context, StudentModel student) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          width: 200,
          height: 250,
          decoration: containerDecoration2.copyWith(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  "Are you sure you to delete?",
                  style: ageandDepTxt,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButtonWidgets(
                      onPressed: () {
                        // Handle deletion here
                        Navigator.of(context).pop(); // Close the dialog
                        // Add any other navigation logic if needed
                      },
                      buttontext: 'OK',
                    ),
                    SizedBox(width: 16),
                    TextButtonWidgets(
                      buttontext: 'Cancel',
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
