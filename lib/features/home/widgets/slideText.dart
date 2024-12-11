import 'package:flutter/material.dart';

import '../../../component/Strings.dart';
import '../../../component/TextStyles.dart';

class slideText extends StatelessWidget {
  const slideText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(Strings.slide, style: myTextStyle.slide,);
  }
}