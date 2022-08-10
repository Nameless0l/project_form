import 'package:flutter/material.dart';
import 'package:project_form/function/Text_FormField.dart';
import 'package:project_form/function/container.dart';

class Datepicker {
  Datepicker(
    String sdjfh,
  );
}

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({
    Key? key,
    required this.hint,
  }) : super(key: key);

  final String hint;
  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: Colors.amber,
      obscureText: true,
      decoration: InputDecoration(
          icon: const Icon(Icons.lock, color: Colors.amber),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}

// Widget defaultextformfield( ) {
//   return InputContainer(
//     child: FormField(),
//   );
// }
