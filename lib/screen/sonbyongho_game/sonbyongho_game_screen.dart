import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String SonbyonghoGameScreenPath = '/sonbyongho-game';

class SonbyonghoGameScreen extends StatelessWidget {
  const SonbyonghoGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ソンビョンホゲーム'),
      ),
      body: Center(
        child: Column(
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: Image.asset(
                'assets/images/pngwing.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text.rich(TextSpan(
                  text: 'ソンビョンホゲーム方法',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                        children: [
                          TextSpan(text: '\n\n'),
                          TextSpan(text: '手を折ればいいゲームです。'),
                          TextSpan(text: '\n'),
                          TextSpan(text: '特定の1人をターゲットにできます。'),
                          TextSpan(text: '\n\n'),
                          TextSpan(
                              text:
                                  '最初に指5本を伸ばして、順番に条件を言うとその条件に合った人が指を折り、5本指が折れたらその人が鬼になるのです。'),
                          TextSpan(text: '\n\n'),
                          TextSpan(text: '例えば、女性を折りたたむと、女性の方は皆折らなければなりません。'),
                        ])
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}

/**


 
 */
