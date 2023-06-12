import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:wajba/Chat/chat.dart';
import 'package:wajba/QR_code_screen/qr_code.dart';

import '../main_splash_drawer/drawer.dart';

class MyAppy extends StatelessWidget {
  const MyAppy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Notch Bottom Bar',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 1);

  int maxCount = 3;

  /// widget list
  final List<Widget> bottomBarPages = [
    const drawer_screen(),
    MyApp_qr(),
    chat(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        pageController: _pageController,
        color: Colors.orangeAccent,
        showLabel: false,
        notchColor: Colors.white,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.menu,
              color: Colors.orangeAccent,
            ),
            itemLabel: 'Page 1',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.document_scanner_outlined,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.document_scanner_outlined,
              color: Colors.orangeAccent,
            ),
            itemLabel: 'Page 2',
          ),

          BottomBarItem(
            inActiveItem: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.chat,
              color: Colors.orangeAccent,
            ),
            itemLabel: 'Page 4',
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
      )
          : null,
    );
  }
}
