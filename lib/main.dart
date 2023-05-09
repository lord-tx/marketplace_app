import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/globals/global_notifiers.dart';
import 'package:marketplace_app/home_page_widget_interfaces.dart';
import 'package:marketplace_app/views/home_view.dart';
import 'package:marketplace_app/views/settings_view.dart';
import 'package:marketplace_app/views/voucher_view.dart';
import 'package:marketplace_app/views/wallet_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MarketPlaceApp());
}

class MarketPlaceApp extends StatelessWidget {
  const MarketPlaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarketPlace App',
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(52, 155, 130, 1)),
          useMaterial3: true,
          textTheme: GoogleFonts.interTextTheme()),
      home: const BaseWidget(title: 'MarketPlace App'),
    );
  }
}

class BaseWidget extends StatefulWidget {
  const BaseWidget({super.key, required this.title});

  final String title;

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  List<HomePageWidgetsInterfaces> pages = [
    HomeView(),
    const VoucherView(),
    const WalletView(),
    const SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.08,
        ),
        // TODO: Maybe later use the appBars notificationPredicate to check for
        // scroll info
        child: ListenableBuilder(
            listenable: appBarColor,
            builder: (context, child) {
              return AppBar(
                backgroundColor: appBarColor.value,
                title: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: CupertinoSearchTextField(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(210, 210, 214, 1),
                              width: 2),
                          borderRadius: BorderRadius.circular(8)),
                    )),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Badge(
                      label: Text("1"),
                      child: Icon(Iconsax.bag_24),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Badge(
                      child: Icon(Iconsax.message_text_14),
                      label: Text("9+"),
                    ),
                  ),
                ],
              );
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: List<HomePageWidgetsInterfaces>.from(pages).map((page) {
          return BottomNavigationBarItem(
              icon: page.getWidgetIcon(),
              label: page.getWidgetName()
          );
        }).toList(),
      ),
      body: PageView(
        children: pages,
      ),
    );
  }
}
