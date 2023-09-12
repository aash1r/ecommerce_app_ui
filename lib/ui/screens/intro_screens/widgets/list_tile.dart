import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle(
      {super.key,
      required this.leadingWidget,
      this.trailingwidget,
      this.subleadingwidget});

  final Widget leadingWidget;
  final Widget? trailingwidget;
  final Widget? subleadingwidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingWidget,
      trailing: trailingwidget,
      subtitle: subleadingwidget,
    );
  }
}
