import 'package:flutter/material.dart';
import 'package:pfe_2021/constants/colors.dart';


class Menu extends StatefulWidget {

  final IconData icon;
  final String title;
  const Menu({Key? key, this.icon = Icons.mic, this.title = ""}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: MediaQuery.of(context).size.width*0.35,
      height: MediaQuery.of(context).size.width*0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Material(
        elevation: 4.0,
        color: myWhite,
        shadowColor: myWhite,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: myPink,
              size: MediaQuery.of(context).size.width*0.15,
            ),
            const SizedBox(height: 2.0),
            Text(
              widget.title,
              style: const TextStyle(
               color: myBlack
              )
            )
          ],
        ),
      ),
    );
  }
}
