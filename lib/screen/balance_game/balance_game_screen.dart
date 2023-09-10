import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:get/get.dart';
import 'package:korea_drink_game/core/config/colors.dart';
import 'package:korea_drink_game/data.dart';

const String BlanceGameScreenPath = '/blanc-game';

class BalanceGameScreen extends StatefulWidget {
  const BalanceGameScreen({super.key});

  @override
  State<BalanceGameScreen> createState() => _BalanceGameScreenState();
}

class _BalanceGameScreenState extends State<BalanceGameScreen> {
  List<int> seenQ = [];
  List<String> balanceGame = [];
  Random random = Random();
  int randomIndex = 0;
  late Color cardColor;
  @override
  void initState() {
    super.initState();
    balanceGame = Get.arguments['balanceGame'];
    cardColor = Get.arguments['cardColor'];
    randomIndex = random.nextInt(balanceGame.length);
    seenQ.add(randomIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> tempQQ = balanceGame[randomIndex].split(':');

    List<String> tempQ = tempQQ[1].split('vs');
    return Scaffold(
      appBar: AppBar(
          title: Text(
              '${Get.arguments['balanceGameName']} ${seenQ.length} / ${balanceGame.length}')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              flex: 6,
              child: ZoomIn(
                child: Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    side: CardSide.FRONT,
                    speed: 1000,
                    onFlipDone: (status) {
                      if (status == false) {
                        while (true) {
                          if (seenQ.length == balanceGame.length) {
                            return;
                          }
                          randomIndex = random.nextInt(balanceGame.length);

                          if (!seenQ.contains(randomIndex)) {
                            seenQ.add(randomIndex);
                            break;
                          }
                        }

                        setState(() {});
                      }
                    },
                    front: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('질문 보기',
                              style: Theme.of(context).textTheme.displayLarge),
                        ],
                      ),
                    ),
                    back: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          const Positioned(
                            top: 10,
                            child: Text(
                              '다른 질문을 보려면 카드를 클릭 해 주세요',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                tempQQ[0],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                tempQ[0],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'vs',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 44,
                                    color: Colors.black),
                              ),
                              Text(
                                tempQ[1],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
