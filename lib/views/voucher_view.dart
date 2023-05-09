import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/home_page_widget_interfaces.dart';

class VoucherView extends HomePageWidgetsInterfaces{
  const VoucherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Widget getWidgetIcon() {
    return const Icon(Iconsax.ticket);
  }

  @override
  String getWidgetName() {
    return "Voucher";
  }

}