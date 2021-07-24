import 'package:flutter/material.dart';
import 'package:pfe_2021/constants/colors.dart';
import 'package:pfe_2021/widgets/menu.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10.0),
              decoration: const BoxDecoration(
                color: myBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text(
                    "Hello !",
                    style: TextStyle(
                      color: myWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 32.0
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Que voulez-vous faire ?",
                    style: TextStyle(
                        color: myWhite,
                        fontSize: 24.0
                    ),
                  )
                ],
              ),
            )
          ),
          SizedBox(height: MediaQuery.of(context).size.width*0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: const Menu(icon: Icons.mic_rounded, title: "Reco. Vocale"),
                onTap: () {},
              ),
              InkWell(
                child: const Menu(icon: Icons.translate_rounded, title: "Traduction"),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.width*0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: const Menu(icon: Icons.record_voice_over_rounded, title: "Synth. Vocale"),
                onTap: () {},
              ),
              InkWell(
                child: const Menu(icon: Icons.more_horiz, title: "L. Maternelle"),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.width*0.05),
        ]
      ),
    );
  }
}
