// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class TextFormField extends StatefulWidget {
  final bool isrequied;
  final TextInputType textInputType;
  final bool isobscure;
  final String? hintext;
  final String? label;
  final String? title;
  final bool islong;
  final bool date;
  final Icon? icon;
  const TextFormField(
      {Key? key,
      required this.hintext,
      required this.title,
      this.textInputType=TextInputType.text,
      this.islong = false,
      this.isobscure = false,
      this.isrequied = true,
      this.date = false,
      this.label,
      this.icon})
      : super(key: key);

  @override
  State<TextFormField> createState() => _TextFormFieldState();
}

class _TextFormFieldState extends State<TextFormField> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (widget.isobscure == true)
      return Container();
    else if (widget.islong) return Container();
    return Container();
  }
}
