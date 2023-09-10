import 'dart:math';

import 'package:flutter/material.dart';

import '../../data/kind_of_subject.dart';

class LiarGameScreen extends StatefulWidget {
  const LiarGameScreen(
      {super.key, required this.kindOfSubject, required this.numberOfPeople});

  final int numberOfPeople;
  final KindOfSubject kindOfSubject;

  @override
  State<LiarGameScreen> createState() => _LiarGameScreenState();
}

class _LiarGameScreenState extends State<LiarGameScreen> {
  late PageController pageController;

  int pageIndex = 0;
  late int indexOfLiar;
  late int indexOfSubject;
  Random random = Random();
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);

    indexOfLiar = random.nextInt(widget.numberOfPeople);

    indexOfSubject = random.nextInt(widget.kindOfSubject.keywords.length);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  String onTap(int index) {
    if (!isSeen) {
      return '확인';
    }

    if (index == indexOfLiar) {
      return "라이어 입니다.";
    } else {
      String ww = widget.kindOfSubject.keywords[indexOfSubject];

      return '라이어가 아닙니다.\n제시어는 $ww 입니다.';
    }
  }

  bool isSeen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.kindOfSubject.subjectName),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 10,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                itemCount: widget.numberOfPeople,
                onPageChanged: (va) {
                  pageIndex = va;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      isSeen = true;
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          color: Color(0xFF2980b9),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            width: 10,
                            color: Colors.grey,
                          )),
                      child: Center(
                        child: Text(onTap(index)),
                      ),
                    ),
                  );
                },
              ),
            ),
            if (pageIndex != widget.numberOfPeople - 1)
              ElevatedButton(
                  onPressed: () {
                    isSeen = false;
                    pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: const Text('다음')),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
