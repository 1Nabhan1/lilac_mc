import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilac_mc_tst/presentation/home_screen/home_screen.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/pages/requirement_list_screen.dart';

class BottomNavData {
  static List<IconData> icnList = [
    Icons.home_outlined,
    Icons.message_outlined,
    Icons.task_outlined,
    CupertinoIcons.person
  ];
  static List<Widget> pages = [
    HomeScreen(),
    RequirementScreen(),
    RequirementScreen(),
    RequirementScreen(),
  ];
}
