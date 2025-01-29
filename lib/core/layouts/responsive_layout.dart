// responsive_layout.dart
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;
  final Widget tabletLayout;

  const ResponsiveLayout({
    Key? key,
    required this.mobileLayout,
    required this.webLayout,
    required this.tabletLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
     const int breakpoint = 400;
     const int tabletBreakPoint = 1024;
    // Define a breakpoint for switching 
    // Adjust the breakpoint as needed based on your design requirements.
    // For example, a tablet layout is shown when the screen width is 700px or more but less than desktop size. 
    late final Widget widget;
    if(screenWidth <=breakpoint){
      widget = mobileLayout;
    }else if(screenWidth > breakpoint && screenWidth <= tabletBreakPoint){
      widget = tabletLayout;
    }else if(screenWidth  > tabletBreakPoint){
      widget = webLayout;
    }
    return widget;
    // return screenWidth < breakpoint ? mobileLayout : webLayout;
  }
}
