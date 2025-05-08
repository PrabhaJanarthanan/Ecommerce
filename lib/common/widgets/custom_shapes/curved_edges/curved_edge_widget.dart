import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class PRCurvedEdgeWidget extends StatelessWidget {
  const PRCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PRCustomCurvedEdges(),
      child: child,
    );
  }
}
