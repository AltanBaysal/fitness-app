import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/text_constants.dart';
import '../provider/user_information_controller.dart';

class GetNameTextField extends StatelessWidget {
  const GetNameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            EnglishText.yourNameWithQuestionMark,
            style: TextStyle(fontSize: width * 0.08),
          ),
          Consumer<UserInformationController>(
            builder: (
              BuildContext context,
              UserInformationController userInformationController,
              Widget? child,
            ) {
              return TextField(
                controller: userInformationController.getNameTextController,
                decoration: const InputDecoration(
                  label: Text(EnglishText.yourName),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
