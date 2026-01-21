import 'package:flutter/material.dart';
import 'package:moyenne_app/models/module.dart';

class Textfield extends StatefulWidget {
  final Map<String, TextEditingController> examCtrl;
  final Module m;
  final String label;

  const Textfield({
    super.key,
    required this.examCtrl,
    required this.m,
    required this.label,
  });

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  Color fieldColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: TextFormField(
        controller: widget.examCtrl[widget.m.nom],
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        onChanged: (value) {
          final number = double.tryParse(value);

          setState(() {
            if (number == null) {
              fieldColor = Colors.grey;
            } else if (number < 0 || number > 20) {
              fieldColor = Colors.orange;
            } else if (number == 10) {
              fieldColor = Colors.blue;
            } else if (number < 10) {
              fieldColor = Colors.red;
            } else {
              fieldColor = Colors.green;
            }
          });
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: fieldColor.withOpacity(0.15),
          labelText: widget.label,
          labelStyle: TextStyle(color: fieldColor, fontWeight: FontWeight.w600),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: fieldColor),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: fieldColor, width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        style: TextStyle(color: fieldColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
