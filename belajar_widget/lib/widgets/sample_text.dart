import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  const SampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Widget Text'),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 200,
              width: 300,
              decoration: BoxDecoration(border: Border.all(width: 4)),
              child:
                  const Text("Mari belajar flutterr anjya mabar semoga siap"),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 200,
              width: 300,
              decoration: BoxDecoration(border: Border.all(width: 4)),
              child: Text(
                """Mari belajar flutterr anjya mabar semoga siap, saya orang indo bang, lu orang apa""",
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                textScaler: const TextScaler.linear(1),
                style: TextStyle(
                    color: Colors.amber[800],
                    fontSize: 20,
                    fontFamily: 'Open_Sans',
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.blue[400],
                    decorationStyle: TextDecorationStyle.dashed,
                    letterSpacing: 5,
                    wordSpacing: 10),
              ),
            )
          ],
        ));
  }
}
