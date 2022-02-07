import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';


class KoreanAndJapan extends StatefulWidget {
  const KoreanAndJapan({Key? key}) : super(key: key);

  static const String id = "korean";

  @override
  _KoreanAndJapanState createState() => _KoreanAndJapanState();
}

class _KoreanAndJapanState extends State<KoreanAndJapan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localization"),
      ),
      body: Container(
        color: Colors.amberAccent,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'flutter'.tr(),
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
    );
  }
}
