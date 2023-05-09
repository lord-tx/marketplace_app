import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/home_page_widget_interfaces.dart';

class WalletView extends HomePageWidgetsInterfaces{
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Widget getWidgetIcon() {
    return const Icon(Iconsax.wallet_3,);
  }

  @override
  String getWidgetName() {
    return "Wallet";
  }

}