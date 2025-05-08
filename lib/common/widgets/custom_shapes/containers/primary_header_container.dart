import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edge_widget.dart';

class PRPrimaryHeaderContainer extends StatelessWidget {
  const PRPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PRCurvedEdgeWidget(
      child: Container(
        color: PRColors.primaryColor,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            Positioned(
              top: -150, //-150
              right: -250, //-250
              child: PRCircularContainer(
                backgroundColor: PRColors.textWhite.withAlpha(30))),
            Positioned(
              top: 100, //100
              right: -300, //-300
              child: PRCircularContainer(
                backgroundColor: PRColors.textWhite.withAlpha(30))
            ),
            child,
          ],
        ),
      ),
    );
  }
}
