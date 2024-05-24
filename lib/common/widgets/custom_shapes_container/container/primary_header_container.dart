import 'package:flutter/material.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/circular_container.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/curved_edge/curved_edge_widgets.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: SizedBox(
        height: 340,
        child: Container(
          color: TColors.primary,

          padding: const EdgeInsets.all(0),
          // child: SizedBox(
          //   height: 300,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
