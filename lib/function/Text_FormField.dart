// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_form/function/validator.dart';

import 'package:project_form/function/datepicker.dart';
class Textfielform extends StatefulWidget {
  final bool isRequied;
  final TextInputType textInputType;
  bool isObscure;
  final String? hintext;
  final String label;
  final bool date;
  final bool longText;
  final Icon? icon;
  Textfielform(
      {Key? key,
      this.hintext,
      this.longText = false,
      this.textInputType = TextInputType.text,
      this.isObscure = false,
      this.isRequied = true,
      this.date = false,
      required this.label,
      this.icon})
      : super(key: key);

  @override
  State<Textfielform> createState() => _TextfielformState();
}

class _TextfielformState extends State<Textfielform> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;
    var passIcons = Icons.password;
    var emailAdress = Icons.email_outlined;
    bool obscure = widget.isObscure;
    // ignore: prefer_const_constructors
    var contact = Icon(Icons.safety_check);
    Icon iconn = const Icon(Icons.password_outlined);
    Icon eyeSlash = const Icon(Icons.visibility_off);
    Icon iconVisibility = const Icon(Icons.visibility);
    int islongText;
    return (widget.textInputType == TextInputType.datetime)
        ? datefeild(dateInputController: TextEditingController(),)
        : Container(
            width: width,
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: TextFormField(
              maxLines: widget.longText? 8:1,
              obscureText: widget.textInputType==TextInputType.visiblePassword? widget.isObscure=true: widget.isObscure,
              keyboardType: widget.textInputType,
              decoration: InputDecoration(
                hintText: (widget.hintext!.isNotEmpty)
                    ? widget.label
                    : widget.hintext,
                // defaultHinText(widget.hintext, widget.textInputType):widget.hintext ,
                border: const OutlineInputBorder(),
                prefixIcon: getIcon(widget.textInputType),
                suffixIcon: obscure
                    ? IconButton(
                        icon: Icon(widget.isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            widget.isObscure = !widget.isObscure;
                          });
                        })
                    : null,
                label: Text(widget.label),
              ),
              // validator: validator(widget.value, widget.textInputType),/
            ),
          );
  }
}
