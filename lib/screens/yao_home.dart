import 'package:flutter/material.dart';
import 'package:hijrah_tour/views/yaohome.mob.dart';
import 'package:hijrah_tour/views/yaohome_desk.dart';
import 'package:responsive_builder/responsive_builder.dart';

class YaominkHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: ScreenTypeLayout(
          desktop: YaominkHomeDesk(),
          mobile: YaominkHomeMob(),
        ));
  }
}
