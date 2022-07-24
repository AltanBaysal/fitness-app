import 'package:fitness_app/features/user_information/presentation/widgets/get_age_info_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/shared_widgets.dart/back_button.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../widgets/info_page_dots_indicator.dart';

class GetBodyInfoPage extends StatelessWidget {
  const GetBodyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
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
            
            const GetAgeInfoView(),
            
            Column(
              children: [
                RectangleButton(text: "Next", onTap: () {}),
                
                const SizedBox(
                  height: 10,
                ),
                
                const InfoPageDotsIndicator(position: 0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

