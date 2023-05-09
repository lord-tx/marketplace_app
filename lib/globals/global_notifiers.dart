import 'package:flutter/material.dart';

ValueNotifier<Color> appBarColor = ValueNotifier(Colors.transparent);
ScrollController scrollController = ScrollController()..addListener(changeAppBarColor);

void changeAppBarColor(){
  debugPrint("HomePage Scroll Offset: ${scrollController.offset}");
  if (scrollController.offset >= 50){
    appBarColor.value = Colors.white;
  } if (scrollController.offset == 0.0){
    appBarColor.value = Colors.transparent;
  }
}