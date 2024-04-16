import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class Card_profilescreen extends StatelessWidget {
  final dynamic leading;
  final dynamic title;
  final dynamic subtitle;
  final dynamic trailing;
  const Card_profilescreen(
      {super.key,
      required this.leading,
      required this.title,
      this.subtitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
