
import 'package:flutter/material.dart';

class TwoButtonSwitch extends StatelessWidget {
  const TwoButtonSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
       height: height * 0.07,
       color: Colors.grey,
       child: Row(
        children: [
          //! unfinished
          Container(),
          Container()
        ],
       ),
    );
  }
}