// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  @override
  String leftDivider() {
    return "|";
  }

  @override
  String rightDivider() {
    return "|";
  }

  @override
  List<int> layoutProportions() {
    return [1, 2, 1];
  }

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            )
        : DateTime(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new TimePick(),
    );
  }
}

class TimePick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datetime Picker'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  DatePicker.showTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                child: Text(
                  'Pilih Waktu',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
        
      ),
    );
  }
}