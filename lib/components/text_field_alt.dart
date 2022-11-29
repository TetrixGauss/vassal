import 'package:vassal/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';

class TextFieldAlternative extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputAction? textInputAction;
  final Function onChanged;
  final TextEditingController controllerAlt;

  const TextFieldAlternative(
      {Key? key,
      required this.label,
      required this.hint,
      this.textInputAction,
      required this.onChanged,
      required this.controllerAlt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label.tr(),
          style: TextStyle(
              fontSize: Style.titlesFontSize, color: Style.primaryTextColor),
        ),
        Container(
          width: _screenSize.width * 0.25,
          height: _screenSize.height * 0.05,
          // alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Style.textFieldColor.withOpacity(0.2),
                spreadRadius: 0.1,
                blurRadius: 5,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: Style.secondaryColor,
            border: Border.all(
                color: Style.textFieldColor.withOpacity(0.2),
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            maxLength: 3,
            // maxLengthEnforcement: MaxLengthEnforcement.enforced,

            textAlignVertical: TextAlignVertical.bottom,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*')),
            ],
            decoration: InputDecoration(
              hintText: hint.tr(),
              fillColor: Style.secondaryColor,
              filled: true,
              border: InputBorder.none,
              counterText: "",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            cursorColor: Style.primaryColor,
            textInputAction: textInputAction,
            controller: controllerAlt,
            onChanged: (value) {
              onChanged(value);
              final val = TextSelection.collapsed(offset: controllerAlt.text.length);
              controllerAlt.selection = val;
              // controllerAlt.text = value;
            },
            maxLines: 1,
            style: TextStyle(
                fontSize: Style.textFontSize, color: Style.primaryTextColor),
          ),
        ),
      ],
    );
  }
}
