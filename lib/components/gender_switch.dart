import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:easy_localization/easy_localization.dart';

class GenderSwitch extends StatelessWidget {
  final String label;
  final Function onChanged;
  int initialValue;
  GenderSwitch({Key? key, required this.label, required this.onChanged, required this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
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
          height: _screenSize.height * 0.055,
          decoration: BoxDecoration(
            color: Style.secondaryColor,
            border: Border.all(
                color: Style.primaryColor,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
          child: ToggleSwitch(
            minWidth: _screenSize.width * 0.45,
            minHeight: _screenSize.height * 0.05,
            cornerRadius: 25.0,
            activeBgColors: [[Style.primaryColor], [Style.primaryColor]],
            activeFgColor: Style.secondaryColor,
            inactiveBgColor: Style.secondaryColor,
            inactiveFgColor: Style.primaryColor.withOpacity(0.4),
            initialLabelIndex: initialValue,
            totalSwitches: 2,
            labels: [LocaleKeys.male.tr(), LocaleKeys.female.tr()],
            radiusStyle: true,
            onToggle: (index) {
              onChanged(index);
            },
          ),
        ),
      ],
    );
  }
}
