import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String ThreeSixNineGameScreenPath = '/threeSixNine-game';

class ThreeSixNineGameScreen extends StatefulWidget {
  const ThreeSixNineGameScreen({super.key});

  @override
  State<ThreeSixNineGameScreen> createState() => _ThreeSixNineGameScreenState();
}

class _ThreeSixNineGameScreenState extends State<ThreeSixNineGameScreen> {
  late PageController pageController;

  int pageIndex = 0;

  Duration duration = Duration(milliseconds: 500);
  late Timer timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    aa();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
    timer.cancel();
  }

  void aa() {
    timer = Timer.periodic(duration * 3, (timer) {
      print('aa');

      pageController.nextPage(duration: duration, curve: Curves.easeInOut);
    });
  }

  List<String> users = ['A', 'B', "C"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('369ゲーム')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            OutlinedButton(
                onPressed: () {
                  timer.cancel();
                },
                child: Text('停止')),
            Expanded(
                child: PageView.builder(
              controller: pageController,
              onPageChanged: (newPageIndex) {
                pageIndex = newPageIndex;
                print('pageIndex: ${pageIndex}');
                if (pageIndex == 14) {
                  pageIndex = 0;
                  pageController.animateToPage(pageIndex,
                      duration: duration, curve: Curves.easeInOut);
                  setState(() {});
                }
              },
              itemCount: 15,
              itemBuilder: (context, index) {
                String hakusyu = '';
                if ((index + 1) % 10 == 3 ||
                    (index + 1) % 10 == 6 ||
                    (index + 1) % 10 == 9) {
                  hakusyu = '拍手';
                }
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: 0,
                      left: 100,
                      top: 0,
                      bottom: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            size: 50,
                          ),
                          Text(hakusyu == '拍手'
                              ? hakusyu
                              : (index + 1).toString()),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.userTie,
                            size: 55,
                          ),
                          Positioned(
                            top: 0,
                            bottom: 20,
                            child: Text(
                              users[index % 3],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )),
            Expanded(
              child: Text(
                  '装備を必要とせず、少なくとも2人の人がいればできる遊びです。 遊び方は1から数字を一つずつ言いながら、3、6、9が入る数字は数字を言う代わりに拍手をする。 例えば13の場合、十！パチ！じゃなくて、ただのパチンです！ つまり、29から39までは無条件拍手を（時には拍手2回）しなければなりません。加えて、33、36、39、63など3とか6とか9が複数含まれている場合は数に当て、拍手を打ちます。（その時は２回打つ）'),
            ),
          ],
        ),
      ),
    );
  }
}
