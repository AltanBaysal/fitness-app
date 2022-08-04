import 'package:flutter/material.dart';
import '../../../../core/constants/colors_constants.dart';

class CustomCredentialTextFormField extends StatelessWidget {
  const CustomCredentialTextFormField({
    Key? key,
    required this.title,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String title;
  final TextEditingController controller;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: height * 0.03, bottom: height * 0.015),
          child: Text(title),
        ),
        SizedBox(
          height: height * 0.09,
          child: TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                borderSide: BorderSide(
                  color: CustomColors.lightGrey,
                  width: 0.01,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
