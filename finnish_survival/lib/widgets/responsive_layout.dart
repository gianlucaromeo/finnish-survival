import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.small,
    required this.medium,
    required this.large,
  });

  final Widget small;
  final Widget medium;
  final Widget large;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return large;
        } else if (constraints.maxWidth > 800) {
          return medium;
        }
        return small;
      },
    );
  }
}
