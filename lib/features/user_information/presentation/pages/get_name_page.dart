import 'package:fitness_app/features/user_information/presentation/widgets/get_name_page_continue_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/shared_widgets.dart/custom_back_button.dart';
import '../widgets/get_name_text_field.dart';



class GetNamePage extends StatelessWidget {
  const GetNamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomBackButton(
                  mainContext: context,
                  size: width * 0.05,
                )
              ],
            ),

            const GetNameTextField(),

            const GetNamePageContinueButton(),

          ],
        ),
      ),
    );
  }
}
