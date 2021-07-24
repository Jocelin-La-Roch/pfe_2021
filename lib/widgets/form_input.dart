import 'package:flutter/material.dart';
import 'package:pfe_2021/constants/colors.dart';


class FormInput extends StatefulWidget {

  final TextEditingController textEditingController;
  final bool obscurText;

  const FormInput({
    Key? key,
    required this.textEditingController,
    this.obscurText = false}) : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: TextFormField(
        cursorColor: myBlack,
        controller: widget.textEditingController,
        obscureText: widget.obscurText,
        keyboardType:  TextInputType.multiline,
        style: const TextStyle(
          color: myBlack,
          fontWeight: FontWeight.bold
        ),
        maxLines: 4,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Entrer votre texte"
        ),
      ),
    );
  }
}
