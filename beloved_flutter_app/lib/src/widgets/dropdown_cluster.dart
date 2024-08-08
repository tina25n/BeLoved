import 'package:flutter/material.dart';
import 'text_field_cluster.dart';

class DropdownCluster extends CustomTextField {
  // TODO: Update the necessary fields to accept an array of options.
  final TextEditingController controller;
  final String hint;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;
  final String title;
  final bool showInProfile;

  const CustomTextField(
      {Key? key,
        required this.controller,
        required this.hint,
        this.textCapitalization = TextCapitalization.none,
        required this.inputType,
        required this.title,
        required this.showInProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      mainAxis: Axis.vertical,
      children: [
        // title
        Text(title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        SizedBox(height: 10),
        // text box
        Container(
          // container determines the shape of the text field.
          // margin: const EdgeInsets.only(bottom: 14),
          height: 44,
          child: TextField(
            enabled: true,
            controller: controller,
            textCapitalization: textCapitalization,
            maxLength: 32,
            maxLines: 1,
            keyboardType: inputType,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500, //half bold
            ),
            decoration: InputDecoration(
              isDense: true,
              hintText: hint,
              counterText: "",
              hintStyle: const TextStyle(
                  color: Colors.black, // Set the color for the hint text
                  fontSize: 16,
                  fontWeight: FontWeight.w500 // Set the size for the hint text
              ),
              filled: true,
              fillColor: Colors.white,
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFF6962), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        // show in profile
        Container(
          child: showInProfile ? CheckboxWithText() : Container(),
        )
      ],
    );
  }
}

class CheckboxWithText extends StatefulWidget {
  @override
  _CheckboxWithTextFieldState createState() => _CheckboxWithTextFieldState();
}

class _CheckboxWithTextFieldState extends State<CheckboxWithText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 14, // Set the width of the checkbox
            height: 14, // Set the height of the checkbox
            child: Transform.scale(
                scale: 1,
                // Scale to keep the checkbox within the specified size
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                  materialTapTargetSize: MaterialTapTargetSize
                      .shrinkWrap, // Adjust the tap target size
                ))),
        SizedBox(width: 10),
        Text(
          "Show on profile",
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
