import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locatization",style: TextStyle(fontSize: 20, color:Colors.green),),
      ),
      body: PageView(
        children: [
          Container(
           // padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'welcome'.tr(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          onPressed: (){
                            context.locale = Locale('ru','RU');
                          },
                          child: Text("Russion",style: TextStyle(color: Colors.white),),
                          color: Colors.blue,
                        ),
                        SizedBox(width: 5,),
                        MaterialButton(
                          onPressed: (){
                            context.locale = Locale('en','US');
                          },
                          child: Text("English",style: TextStyle(color: Colors.white),),
                          color: Colors.blue,
                        ),
                        SizedBox(width: 5,),
                        MaterialButton(
                          onPressed: (){
                            context.locale = Locale('uz','UZ');
                          },
                          child: Text("Uzbek",style: TextStyle(color: Colors.white),),
                          color: Colors.blue,
                        ),
                        SizedBox(width: 5,),
                        MaterialButton(
                          onPressed: (){
                            context.locale = Locale('fr','FR');
                          },
                          child: Text("French",style: TextStyle(color: Colors.white),),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'flutter'.tr(),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        color: Colors.red,
                        onPressed: () {
                          context.locale =Locale('ko', 'KR');
                        },
                        child: Text(
                          "Korean",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          context.locale = const Locale('en', 'US');
                        },
                        child: const Text(
                          "English",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        color: Colors.blue,
                      ),

                      MaterialButton(
                        color: Colors.amber,
                        onPressed: () {
                          context.locale = Locale('ja', 'JP');
                        },
                        child: const Text(
                          "Japan",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
