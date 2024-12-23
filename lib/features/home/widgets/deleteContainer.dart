import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/Themes/icons.dart';
import 'package:tasks/fontSizes.dart';

import '../../../component/containerBorder.dart';

class deleteContainer extends StatelessWidget {
  const deleteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: myFonts.H10),
      decoration:  containerBorder.deleteDecoration,
      child: myIcons.deleteIcon,
    );
  }
}
