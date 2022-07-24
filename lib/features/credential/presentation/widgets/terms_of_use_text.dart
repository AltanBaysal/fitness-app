import 'package:flutter/material.dart';

class TermsOfUseText extends StatelessWidget {
  const TermsOfUseText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(width * 0.05),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
            style: TextStyle(
              color: Colors.grey,
              height: 1.3,
            ),
            children: [
              TextSpan(
                text:
                    "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. ",
              ),
              TextSpan(
                text: "Terms of Use",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(text: " augue enim, pulvinar "),
              TextSpan(
                text: "Privacy Notice",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(text: " lacinia at."),
            ]),
      ),
    );
  }
}
