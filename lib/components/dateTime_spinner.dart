

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/cupertino.dart' ;
// import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DateTimeSpinner extends StatelessWidget {
  final Function onSelectedItemChanged;

  const DateTimeSpinner({Key? key, required this.onSelectedItemChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    DateTime date = DateTime.now();

    return Container(
      height: _screenSize.height * 0.3,
      width: _screenSize.width * 0.9,
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
      child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // DatePickerWidget(
          //   // pickerTheme: ,
          //   dateFormat: 'dd-mm-yyyy',
          //   initialDateTime: DateTime.now(),
          //   minDateTime: DateTime(1900, 1 ,1),
          //   maxDateTime: DateTime.now(),
          //   onChange: (dateTime, List<int> index) {
          //     // chosenDateTime = value;
          //     date = dateTime;
          //     print(dateTime.toString());
          //   },
          // ),

          Expanded(
            child: CupertinoTheme(
            data: CupertinoThemeData(
              barBackgroundColor: Colors.transparent,
              textTheme: CupertinoTextThemeData(
                pickerTextStyle: TextStyle( color: Style.primaryColor),
                actionTextStyle: TextStyle(color: Style.secondaryColor),
                dateTimePickerTextStyle: TextStyle( color: Style.primaryColor, fontSize: 22),
              ),
            ),

              child: CupertinoDatePicker(

                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (value) {
                  // chosenDateTime = value;
                  date = value;
                  print(value);
                },
                initialDateTime: DateTime.now(),
                minimumYear: 1900,
                maximumYear: DateTime.now().year,
              ),
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
                    onSelectedItemChanged(date);
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
