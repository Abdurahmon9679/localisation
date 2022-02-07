import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localisation/pages/home_screen.dart';

import 'pages/korean_japan.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        supportedLocales:  [Locale('en','US'),Locale('ru','RU'),Locale('uz','UZ'),Locale('fr','FR'),Locale('ko','KR'),Locale('ja','JP')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en','US'),
        child:  const MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}


