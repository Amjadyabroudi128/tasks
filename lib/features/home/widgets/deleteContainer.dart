import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/Themes/icons.dart';

import '../../../component/containerBorder.dart';

class deleteContainer extends StatelessWidget {
  const deleteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          borderRadius: containerBorder.B13,
        color: ColorHelper.delete,
      ),
      child: myIcons.deleteIcon,
    );
  }
}
