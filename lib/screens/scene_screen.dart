import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/constants/colors.dart';
import 'package:pfe_2021/screens/home_screen.dart';
import 'package:pfe_2021/screens/record_screen.dart';
import 'package:pfe_2021/screens/text_screen.dart';


class SceneScreen extends StatefulWidget {
  const SceneScreen({Key? key}) : super(key: key);

  @override
  _SceneScreenState createState() => _SceneScreenState();

}

class _SceneScreenState extends State<SceneScreen> {

  PageController pageController = PageController(initialPage: 1);
  int currentPageIndex = 1;

  void onTap (int page){
    setState(() {
      currentPageIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  void initState() {
    currentPageIndex = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index){
          setState(() {
            currentPageIndex = index;
          });
        },
        controller: pageController,
        children: const [
          RecordScreen(),
          HomeScreen(),
          TextScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentPageIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: myWhite,
          selectedItemColor: myPink,
          unselectedItemColor: myBlue,
          iconSize: 25.0,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: const Icon(Icons.mic_rounded),
                label: "micro"
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: const Icon(Icons.home_rounded),
              label: "Accueil"
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: const Icon(Icons.translate_rounded),
                label: "texte"
            ),
          ]
      ),
    );
  }
}
