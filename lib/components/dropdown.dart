import 'dart:async';

import 'package:vassal/utils/app_theme.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropDownField extends StatelessWidget {
  bool settings;
  String label;
  List<String> dropdownMenuItems;
  final Function onChanged;
  String initialValue;

  DropDownField({Key? key, required this.settings, required this.label, required this.dropdownMenuItems, required this.onChanged, required this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    StreamController streamController = StreamController<String>.broadcast();
    List<DropdownMenuItem<String>> items = [];
    for (String item in dropdownMenuItems) {
      items.add(
        DropdownMenuItem<String>(
          child: Text(
            item,
            maxLines: 2,
            style: TextStyle(color: Style.secondaryTextColor),
          ),
          value: item,
        ),
      );
    }
    if(settings) {
      return _settingsDropDown(_screenSize, streamController, items);
    } else {
      return _patientDropDown(_screenSize, streamController, items);
    }
  }

  _patientDropDown(_screenSize, streamController, items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.tr(),
          style: TextStyle(fontSize: Style.titlesFontSize,color: Style.primaryTextColor),
        ),
        SizedBox(
          height: _screenSize.height * 0.015,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: _screenSize.width,
                height: _screenSize.height * 0.065,
                margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.025),
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Style.textFieldColor.withOpacity(0.2),
                        spreadRadius: 0.1,
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(
                        color: Style.textFieldColor.withOpacity(0.2),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(25)),
                child: StreamBuilder<String>(
                    initialData: initialValue,
                    stream: streamController.stream.asBroadcastStream(),
                    builder: (context, snapshot) {
                      return DropdownButton<String>(
                        borderRadius: BorderRadius.circular(25),
                        iconEnabledColor: Style.secondaryTextColor.withOpacity(0.4),
                        underline: const SizedBox(),
                        dropdownColor: Style.secondaryColor,
                        style: TextStyle(color: Style.primaryTextColor, fontFamily: 'Gothic'),
                        value: snapshot.data.toString(),
                        isExpanded: true,
                        onChanged: (String? newValue) {
                          onChanged(newValue!);
                          // value = newValue;
                          streamController.sink.add(newValue);
                        },
                        items: items,
                      );
                    }),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _settingsDropDown(_screenSize, streamController, items) {
    return Expanded(
      child: Container(
        alignment: Alignment.centerRight,
        width: _screenSize.width,
        child:
        StreamBuilder(
            initialData: dropdownMenuItems[0],
            stream: streamController.stream.asBroadcastStream(),
            builder: (context, snapshot) {
              return DropdownButton<String>(
                alignment: Alignment.centerLeft,
                borderRadius: BorderRadius.circular(10),
                icon: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: SvgPicture.asset(AssetKeys.arrowDown, ),
                ),
                underline: const SizedBox(),
                dropdownColor: Style.secondaryColor,
                style: TextStyle(color: Style.dropdownChoiceColor, fontFamily: 'Gothic'),
                value: snapshot.data.toString(),
                onChanged: (String? newValue) {
                  onChanged(newValue);
                  // value = newValue;
                  streamController.sink.add(newValue);
                },
                items: items,
              );
            }),
      ),
    );
  }
}
