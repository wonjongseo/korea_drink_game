import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korea_drink_game/core/language.dart';
import 'package:korea_drink_game/data.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FlipCardController _controller;
  Random random = Random();
  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Language.baseAppTitle,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    children: List.generate(games.length, (index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(games[index].screenPath);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(4),
                          width: size.width / 3.5,
                          height: size.width / 3.5,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Text(
                            games[index].gameName,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          )),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: TextButton(
                    onPressed: () {
                      GameInfo randomGameInfo = games[0];
                      Get.dialog(StatefulBuilder(builder: (context, setState2) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          contentPadding: EdgeInsets.zero,
                          content: SizedBox(
                            width: size.width * 0.4,
                            height: size.height * 0.4,
                            child: Card(
                              elevation: 0.0,
                              color: const Color(0x00000000),
                              child: FlipCard(
                                controller: _controller,
                                flipOnTouch: false,
                                side: CardSide.FRONT,
                                speed: 50,
                                onFlipDone: (status) {
                                  int ran = random.nextInt(games.length);
                                  setState2(() {
                                    randomGameInfo = games[ran];
                                  });
                                },
                                front: Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      randomGameInfo.gameName,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                back: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      randomGameInfo.gameName,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }));
                      Timer.periodic(const Duration(milliseconds: 50), (timer) {
                        _controller.toggleCard();
                        if (timer.tick == 30) {
                          timer.cancel();
                          Get.back();
                          Get.dialog(AlertDialog(
                            backgroundColor: Colors.transparent,
                            contentPadding: EdgeInsets.zero,
                            elevation: 0,
                            title: InkWell(
                              onTap: () {
                                Get.toNamed(randomGameInfo.screenPath);
                              },
                              child: SizedBox(
                                width: size.width * 0.4,
                                height: size.height * 0.4,
                                child: ZoomIn(
                                  child: Card(
                                    elevation: 0.0,
                                    color: const Color(0x00000000),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          randomGameInfo.gameName,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.purpleAccent,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ));
                        }
                      });
                    },
                    child: Text(
                      '랜덤 뽑기',
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
