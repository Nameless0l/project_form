import 'package:flutter/material.dart';

class datefeild extends StatefulWidget {
  const datefeild(
      {this.fieldKey,
      //Key? key
      this.hintText,
      this.labelText,
      this.helperText,
      this.dateInputController,
      this.primarycolor});
  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextEditingController? dateInputController;
  final Color? primarycolor;

  @override
  State<datefeild> createState() => _datefeildState();
}

class _datefeildState extends State<datefeild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Date',
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.primarycolor ?? Colors.blue, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.primarycolor ?? Colors.blue, width: 1)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.primarycolor ?? Colors.blue, width: 1)),
            prefixIcon: Icon(Icons.calendar_month),
            suffixIcon: IconButton(
                icon:const Icon(Icons.arrow_drop_down),
                onPressed: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2050));

                  if (pickedDate != null) {
                    setState(() {
                      widget.dateInputController?.text =
                          "${pickedDate.toLocal()}".split(' ')[0];
                    });
                  }
                })),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        controller: widget.dateInputController?? TextEditingController(),
        readOnly: true,
      ),
    );
  }
}
