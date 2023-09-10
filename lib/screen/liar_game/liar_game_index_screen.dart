import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korea_drink_game/core/config/colors.dart';
import 'package:korea_drink_game/data/kind_of_subject.dart';
import 'package:korea_drink_game/screen/liar_game/liar_game_screen.dart';

const String LiarGameIndexScreenPath = '/liarGame-index';

class LiarGameIndexScreen extends StatefulWidget {
  const LiarGameIndexScreen({super.key});

  @override
  State<LiarGameIndexScreen> createState() => _LiarGameIndexScreenState();
}

class _LiarGameIndexScreenState extends State<LiarGameIndexScreen> {
  int numberOfsannkasya = 3;

  KindOfSubject subject = kindOfSubjects[0];
  int numberOfKeyWord = kindOfSubjects[0].keywords.length;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Liar Game'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFF2980b9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('주제: '),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            subject.subjectName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              KindOfSubject? aa = await Get.dialog(
                                AlertDialog(
                                  content: SizedBox(
                                    width: size.width * 0.8,
                                    height: size.width * 1.2,
                                    child: GridView.builder(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 10.0,
                                        mainAxisSpacing: 5.0,
                                      ),
                                      itemCount: kindOfSubjects.length,
                                      itemBuilder: (context, index) {
                                        return ElevatedButton(
                                            onPressed: () {
                                              Get.back(
                                                  result:
                                                      kindOfSubjects[index]);
                                            },
                                            child: Text(kindOfSubjects[index]
                                                .subjectName));
                                      },
                                    ),
                                  ),
                                ),
                              );
                              if (aa != null) {
                                subject = aa;
                                setState(() {});
                              }
                            },
                            child: const Text('변경'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF2980b9),
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            OptionCard(
                              number: numberOfsannkasya,
                              option: '참가자 수:',
                              onTap: (int tmpSannkasyasuu) {
                                numberOfsannkasya = tmpSannkasyasuu;
                                if (numberOfsannkasya < 2) {
                                  numberOfsannkasya = 2;
                                }
                                setState(() {});
                              },
                            ),
                            const SizedBox(height: 20),
                            OptionCard(
                              number: numberOfKeyWord,
                              option: '키워드 수:',
                              onTap: (int number) {
                                numberOfKeyWord = number;
                                if (numberOfKeyWord > subject.keywords.length ||
                                    numberOfKeyWord <= 0) {
                                  numberOfKeyWord = subject.keywords.length;
                                }
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => LiarGameScreen(
                                    numberOfPeople: numberOfsannkasya,
                                    kindOfSubject: subject,
                                  ));
                            },
                            child: const Text('시작'))
                      ],
                    ),
                  )),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.number,
    required this.option,
    required this.onTap,
  });

  final int number;

  final String option;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: AppColors.scaffoldBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(option),
          const SizedBox(width: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    onTap(number - 1);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      number.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    onTap(number + 1);
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
