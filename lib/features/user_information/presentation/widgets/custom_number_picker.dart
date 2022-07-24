import 'package:flutter/cupertino.dart';

class CustomNumberPicker extends StatelessWidget {
  const CustomNumberPicker({
    Key? key,
    required this.minNum,
    required this.maxNum,
    required this.onChanged,
  }) : super(key: key);

  final int minNum;
  final int maxNum;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    final List<int> nums =List<int>.generate(maxNum - minNum + 1, (index) => index + minNum);

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.3,
      child: CupertinoPicker(
        itemExtent: height * 0.07,
        onSelectedItemChanged: (i){
          onChanged(nums[i]);
        },
        children: nums
            .map<Widget>(
              (e) => SizedBox(
                height: height * 0.07,
                child: Center(
                  child: Text(
                    e.toString(),
                    style: TextStyle(fontSize: width * 0.07),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
