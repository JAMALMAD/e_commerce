import 'package:e_commerce/utils/string_style.dart';
import 'package:flutter/cupertino.dart';

class HeadingText extends StatelessWidget {
  HeadingText({super.key,required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: StringStyle.h1(),
    );
  }
}
