import 'package:flutter/material.dart';
import '../widgets/body_info_view_chooser.dart';
import '../widgets/info_page_dots_indicator.dart';
import '../widgets/get_body_info_page_back_button.dart';
import '../widgets/user_information_next_button.dart';


class GetBodyInfoPage extends StatelessWidget {
  const GetBodyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const GetBodyInfoPageBackButton(),

            const BodyInfoViewChooser(),

            Column(
              children: const [
                UserInformationNextButton(),

                SizedBox(
                  height: 10,
                ),
                
                InfoPageDotsIndicator(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
