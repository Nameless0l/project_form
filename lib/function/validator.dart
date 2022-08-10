import 'package:flutter/material.dart';

String? validator(String value, TextInputType textInputType) {
  if (textInputType == TextInputType.emailAddress) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  } else if (textInputType == TextInputType.visiblePassword) {
    String pattern = r"\W+\d+\w*\d+";
    RegExp regex = RegExp(pattern);
    if (value.length < 6) return 'Password is to short';
    if (!regex.hasMatch(value) || value == null) {
      return 'Enter a valid email address';
    } else
      return null;
    //  if(value.isEmpty){
    //       return 'Password empty';
    //     }else if(value.length < 6){
    //       return 'PasswordShort';
    //     }
    //     return null;
  } else if (textInputType == TextInputType.phone) {
    if (value.isEmpty && value.length < 10) return 'Enter a valid ';
    return null;
  } else {
    return 'You must whrite something';
  }
}

String? validateEmail(String value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  // ignore: unnecessary_null_comparison
  if (!regex.hasMatch(value) || value == null) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}

Widget? getIcon(TextInputType inputType) {
  if (inputType == TextInputType.text) return null;
  if (inputType == TextInputType.visiblePassword)
    return const Icon(Icons.password);
  if (inputType == TextInputType.emailAddress)
    return const Icon(Icons.email_outlined);
  if (inputType == TextInputType.phone) return const Icon(Icons.phone);
  if (inputType == TextInputType.name) return const Icon(Icons.person_outlined);
  if (inputType == TextInputType.url) return const Icon(Icons.language);
  return null;
}

// Widget? suffixIcons (bool isRequired, bool isObscurable) {
//   IconButton(
//       icon: Icon(
//         isObscurable ? Icons.visibility : Icons.visibility_off,
//       ),
//       onPressed: () {
//         setState(() {
//           isObscurable = !isObscurable;
//         });
//       });
// }
String? defaultHinText(String? hintext, TextInputType textInputType) {
  if (hintext!.isEmpty) return null;
  if (TextInputType.emailAddress == textInputType && hintext.isNotEmpty)
    return 'Enter your Email Adress';
  if (TextInputType.visiblePassword == textInputType && hintext.isNotEmpty)
    return 'Enter your Password';
  if (TextInputType.phone == textInputType && hintext.isNotEmpty)
    return 'Enter your mobile phone';
  if (TextInputType.name == textInputType && hintext.isNotEmpty)
    return 'Enter Name';
  if (TextInputType.url == textInputType && hintext.isNotEmpty)
    return 'Enter URL';
  if (TextInputType.number == textInputType && hintext.isNotEmpty)
    return 'Enter your number';
  return null;
}

String defaultLabelText(String? hintext, TextInputType textInputType) {
  if (hintext!.isEmpty) return '';
  if (TextInputType.emailAddress == textInputType && hintext.isNotEmpty)
    return 'Email';
  if (TextInputType.visiblePassword == textInputType && hintext.isNotEmpty)
    return ' Password';
  if (TextInputType.phone == textInputType && hintext.isNotEmpty)
    return ' Mobile phone';
  if (TextInputType.name == textInputType && hintext.isNotEmpty) return 'Name';
  if (TextInputType.url == textInputType && hintext.isNotEmpty) return 'URL';
  if (TextInputType.number == textInputType && hintext.isNotEmpty)
    return ' number';
  return '';
}

bool tett(bool test) {
  return !test;
}
