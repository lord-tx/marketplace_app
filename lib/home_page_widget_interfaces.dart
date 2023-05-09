import 'package:flutter/cupertino.dart';

abstract class HomePageWidgetsInterfaces extends StatelessWidget{
  const HomePageWidgetsInterfaces({super.key});

  String getWidgetName();
  Widget getWidgetIcon();
}