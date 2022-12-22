import 'package:vassal/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Switch extends StatelessWidget {
  final String label;
  final Function onChanged;
  final bool status;
  const Switch({Key? key, required this.label, required this.onChanged, required this.status}) : super(key: key);

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
      FlutterSwitch(
        width: _screenSize.width * 0.1,
        height: _screenSize.height * 0.025,
        toggleSize: _screenSize.width * 0.05,
        value: status,
        borderRadius: 30.0,
        padding: 2.0,
        showOnOff: false,
        onToggle: (val) {
          onChanged(val);
        },
        activeColor: Style.primaryColor,
        inactiveColor: Style.primaryColor.withOpacity(0.3),
      ),
    ]);
  }
}
