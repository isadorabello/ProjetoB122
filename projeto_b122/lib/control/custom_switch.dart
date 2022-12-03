import 'package:flutter/material.dart';

import 'app_control.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppControl.instance.isDarkTheme,
      onChanged: (value) {
        // ignore: avoid_print
        print(value);
        AppControl.instance.changeTheme();
        setState(() {});
      },
    );
  }
}
