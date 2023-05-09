import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/home_page_widget_interfaces.dart';

class SettingsView extends HomePageWidgetsInterfaces{
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Widget getWidgetIcon() {
    return const Icon(Iconsax.setting);
  }

  @override
  String getWidgetName() {
    return "Settings";
  }

}