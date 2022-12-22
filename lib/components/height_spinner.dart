import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HeightSpinner extends StatelessWidget {
  final Function onSelectedItemChanged;

  const HeightSpinner({Key? key, required this.onSelectedItemChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size _screenSize = MediaQuery.of(context).size;
    List<int> heightList = [];
    for (int i = 140; i <= 220; i++) {
      heightList.add(i);
    }

    FixedExtentScrollController _controller = FixedExtentScrollController(initialItem: 57);


    return Container(
      height: _screenSize.height * 0.3,
      width: _screenSize.width * 0.9,

      // padding: const EdgeInsets.only(top: 6.0),
      // The Bottom margin is provided to align the popup above the system navigation bar.
      margin: EdgeInsets.only(
        bottom: _screenSize.height * 0.33,
      ),
      // Provide a background color for the popup.
      decoration: BoxDecoration(
          color: Style.secondaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      // Use a SafeArea widget to avoid system overlaps.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CupertinoPicker(
                selectionOverlay: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      top: BorderSide(
                        color: Style.secondaryTextColor.withOpacity(0.3),
                        width: 1.0,
                      ),
                      bottom: BorderSide(
                        color: Style.secondaryTextColor.withOpacity(0.3),
                        width: 1.0,
                      ),
                    )),
              ),
              // backgroundColor: Style.primaryColor,
              scrollController: _controller,
              magnification: 1.45,
              squeeze: 1.2,
              useMagnifier: true,
              diameterRatio: 1,
              itemExtent: 32,
              // This is called when selected item is changed.
              onSelectedItemChanged: (int selectedItem) {

                // setState(() {
                //   _selectedFruit = selectedItem;
                // });
              },
              children: List<Widget>.generate(heightList.length, (int index) {
                return Center(
                  child: Text(
                    heightList[index].toString(),
                    style: TextStyle(color: Style.primaryColor),
                  ),
                );
              }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    LocaleKeys.cancel,
                    style: TextStyle(color: Style.primaryColor, fontSize: 20),
                  )),
              // VerticalDivider(
              //   width: 10,
              //   thickness: 10,
              //   color: Style.secondaryTextColor,
              // ),
              Flexible(
                child: Container(
                  height: _screenSize.height * 0.045,
                  // margin: EdgeInsets.only(top: 20),
                  width: 1,
                  color: Style.secondaryTextColor.withOpacity(0.2),
                ),
              ),
              TextButton(
                  onPressed: () {
                    onSelectedItemChanged(heightList[_controller.selectedItem]);
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    LocaleKeys.ok,
                    style: TextStyle(color: Style.primaryColor, fontSize: 20),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
