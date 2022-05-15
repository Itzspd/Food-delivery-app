import './Screens/Home.dart';
import './Screens/Cart.dart';
import './Screens/Order.dart';
import './Screens/Profile.dart';
import 'package:flutter/services.dart';
import './widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Screens/Wallet.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
  ]);
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final _items = <Widget>[
    const Icon(Icons.home_rounded, size: 30),
    const Icon(Icons.shopping_cart_outlined, size: 30),
    const Icon(Icons.account_balance_wallet_outlined, size: 30),
    const Icon(Icons.folder_open, size: 30),
    const Icon(Icons.person_outline_outlined, size: 30),
  ];

  final screens = [
    const HomeScreen(),
    Cart(),
    Wallet(),
    Orders(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(54, 64, 64, 1),
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: screens[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: const IconThemeData(
                color: Colors.white70,
              ),
            ),
            child: CurvedNavigationBar(
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 300),
              color: const Color.fromRGBO(54, 64, 64, 1),
              backgroundColor: Colors.transparent,
              height: 60,
              index: index,
              items: _items,
              onTap: (index) => setState(() {
                this.index = index;
              }),
            ),
          ),
        ),
      ),
    );
  }
}
