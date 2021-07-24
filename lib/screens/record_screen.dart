import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/constants/colors.dart';


class RecordScreen extends StatefulWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {

  String translatedText = "Idiba bwam";
  String lang = "Fr";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 15.0,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0)
                ),
                child: Material(
                  color: myWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                  elevation: .4,
                  shadowColor: myWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          translatedText,
                          style: const TextStyle(
                              color: myBlack,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: const Icon(Icons.copy_rounded, color: myBlack,),
                              onTap: (){},
                            ),
                            const SizedBox(width: 5.0),
                            InkWell(
                              child: const Icon(Icons.delete_rounded, color: myBlack,),
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // ignore: sized_box_for_whitespace
              Container(
                width: 100.0,
                child: Material(
                  color: myBlue,
                  borderRadius: const BorderRadius.all(Radius.circular(70.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Flag.fromString(lang=="Dla"? "cm" : "fr", fit: BoxFit.fill,),
                          )
                      ),
                      const SizedBox(width: 8.0),
                      DropdownButton<String>(
                        items: <String>["Dla", "Fr"].map((val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(val),
                          );
                        }).toList(),
                        value: lang,
                        onChanged: (val){
                          setState(() {
                            lang = val.toString();
                          });
                        },
                        underline: Container(),
                        style: const TextStyle(
                            color: myWhite
                        ),
                        dropdownColor: myBlue,
                        iconEnabledColor: myWhite,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180.0)
                  ),
                  child: Material(
                    color: myBlue,
                    borderRadius: const BorderRadius.all(Radius.circular(180.0)),
                    elevation: .4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.mic_rounded, color: myPink, size: 52.0)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
