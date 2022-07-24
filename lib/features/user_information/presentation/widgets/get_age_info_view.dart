import 'package:fitness_app/features/user_information/presentation/widgets/custom_number_picker.dart';
import 'package:flutter/cupertino.dart';

class GetAgeInfoView extends StatelessWidget {
  const GetAgeInfoView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: height * 0.05,
              bottom: height * 0.11,
            ),
            child: Text(
              "How old are you?",
              style: TextStyle(fontSize: width * 0.06),
            ),
          ),
          CustomNumberPicker(
            minNum: 0,
            maxNum: 150,
            onChanged: (i) {},
          ),
        ],
      ),
    );
  }
}
