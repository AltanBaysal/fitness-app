import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SvgCoveredSizedBox extends StatelessWidget {
  const SvgCoveredSizedBox({ 
    Key? key,
    required this.size,
    required this.svgAssets,
  }) : super(key: key);

  final Size size;
  final String svgAssets;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: SvgPicture.asset(svgAssets,fit: BoxFit.cover),
    );
  }
}