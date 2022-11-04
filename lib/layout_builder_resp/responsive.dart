import 'package:flutter/material.dart';

class LayoutBuildResp extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget tabletScreenLayout;
  final Widget webScreenLayout;

  LayoutBuildResp(
      {required this.mobileScreenLayout,
      required this.tabletScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileScreenLayout;
        } else if (constraints.maxWidth < 900) {
          return tabletScreenLayout;
        } else {
          return webScreenLayout;
        }
      },
    );
  }
}
