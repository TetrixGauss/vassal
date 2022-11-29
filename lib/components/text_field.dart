import 'dart:developer';

import 'package:vassal/components/dateTime_spinner.dart';
import 'package:vassal/components/height_spinner.dart';
import 'package:vassal/components/weight_spinner.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';

class TextFieldCustom extends StatelessWidget {
  final String? icon;
  final String label;
  final String hint;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Function onChanged;
  final bool enabled;
  final TextEditingController controller;

  const TextFieldCustom(
      {Key? key,
      required this.icon,
      required this.label,
      required this.textInputType, this.textInputAction,
      required this.onChanged,
      required this.enabled,
      required this.hint,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    TextEditingController textEditingController = controller;
    // textEditingController.selection = TextSelection.fromPosition(TextPosition(offset: controller.text.length));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.tr(),
          style: TextStyle(
              fontSize: Style.titlesFontSize, color: Style.primaryTextColor),
        ),
        SizedBox(
          height: _screenSize.height * 0.015,
        ),
        Container(
          width: _screenSize.width,
          height: _screenSize.height * 0.065,
          margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.015),
          padding: const EdgeInsets.only(left: 16.0, right: 16),
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
            borderRadius: BorderRadius.circular(25),

          ),

          child: GestureDetector(
            onTap: () {
              if (!enabled) {
                if(label == LocaleKeys.weight){
                  showCupertinoModalPopup<void>(
                      context: context,
                      builder: (BuildContext context) => WeightSpinner(onSelectedItemChanged: (item) {
                        textEditingController.text = item.toString() + " " + hint.tr();
                        onChanged(item);

                      }));
                } else if(label == LocaleKeys.height){
                  showCupertinoModalPopup<void>(
                      context: context,
                      builder: (BuildContext context) => HeightSpinner(onSelectedItemChanged: (item) {
                        textEditingController.text = item.toString() + " " + hint.tr();
                        onChanged(item);

                      }));
                } else {
                  showCupertinoModalPopup<void>(
                      context: context,
                      builder: (BuildContext context) => DateTimeSpinner(onSelectedItemChanged: (item) {

                        textEditingController.text = DateFormat("dd/MM/yyyy").format(item!);
                        log(textEditingController.text.toString());
                        onChanged(item!);

                      }));
                }
              }
            },
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              enabled: enabled,
              keyboardType: textInputType,
              inputFormatters: textInputType == TextInputType.number
                  ? <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*')),
                    ]
                  : null,
              decoration: InputDecoration(

                hintText: hint.tr(),
                fillColor: Style.secondaryColor,
                filled: true,
                suffixIcon: icon != null
                    ? SvgPicture.asset(
                        icon!,
                        fit: BoxFit.scaleDown,
                      )
                    : null,
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
              controller: textEditingController,
              onChanged: (value) {
                onChanged(value);
                final val = TextSelection.collapsed(offset: textEditingController.text.length);
                textEditingController.selection = val;
              },
              onSubmitted: (value) {

              },
              maxLines: 1,
              style: TextStyle(
                  fontSize: Style.textFontSize, color: Style.primaryTextColor),
            ),
          ),
        ),
      ],
    );
  }
}
