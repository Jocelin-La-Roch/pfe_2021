import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/constants/colors.dart';
import 'package:pfe_2021/widgets/form_input.dart';


class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {

  String translatedText = "Idiba bwam";
  String lang1 = "Fr";
  String lang2 = "Dla";

  @override
  Widget build(BuildContext context) {

    TextEditingController textController = TextEditingController();
    String translatedText = "Traduction";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Material(
                    color: myBlue,
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Flag.fromString(lang1=="Dla"? "cm" : "fr", fit: BoxFit.fill,),
                          )
                        ),
                        DropdownButton<String>(
                            items: <String>["Dla", "Fr"].map((val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            }).toList(),
                          value: lang1,
                          onChanged: (val){
                            setState(() {
                              lang1 = val.toString();
                            });
                            if(val.toString() == "Fr"){
                              setState(() {
                                lang2 = "Dla";
                              });
                            }else{
                              setState(() {
                                lang2 = "Fr";
                              });
                            }
                          },
                          underline: Container(),
                          style: const TextStyle(
                            color: myWhite
                          ),
                          dropdownColor: myBlue,
                          iconEnabledColor: myWhite,
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.autorenew_rounded,
                            color: myWhite,
                          ),
                          onTap: () {
                            String temp = lang2;
                            setState(() {
                              lang2 = lang1;
                              lang1 = temp;
                            });
                          },
                        ),
                        DropdownButton<String>(
                          items: <String>["Dla", "Fr"].map((val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          }).toList(),
                          value: lang2,
                          onChanged: (val){
                            setState(() {
                              lang2 = val.toString();
                            });
                            if(val.toString() == "Fr"){
                              setState(() {
                                lang1 = "Dla";
                              });
                            }else{
                              setState(() {
                                lang1 = "Fr";
                              });
                            }
                          },
                          underline: Container(),
                          style: const TextStyle(
                              color: myWhite
                          ),
                          dropdownColor: myBlue,
                          iconEnabledColor: myWhite,
                        ),
                        Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Flag.fromString(lang2=="Dla" ? "cm" : "fr", fit: BoxFit.fill,),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
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
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FormInput(
                          obscurText: false,
                          textEditingController: textController,
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
                              child: const Icon(Icons.volume_up_rounded, color: myBlack,),
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
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
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Text(
                            translatedText,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: myBlack
                            ),
                          ),
                        )
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
            ],
          ),
        ]
      ),
    );
  }
}
