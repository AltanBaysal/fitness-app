import 'package:flutter/material.dart';
import '../../../../core/shared_widgets.dart/back_button.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';

class GetNamePage extends StatelessWidget {
  const GetNamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
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
              SizedBox(
                height: height * 0.18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Name ?",
                      style: TextStyle(fontSize: width * 0.08),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        label: Text("Your Name"),
                      ),
                    ),
                  ],
                ),
              ),
              RectangleButton(text: "Continue", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
