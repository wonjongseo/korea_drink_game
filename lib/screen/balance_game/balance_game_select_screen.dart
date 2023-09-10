import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korea_drink_game/core/config/colors.dart';
import 'package:korea_drink_game/data.dart';
import 'package:korea_drink_game/screen/balance_game/balance_game_screen.dart';

const String BalanceGameSeletorScreenPath = '/balance-game-seletor';

class BalanceGameSeletorScreen extends StatelessWidget {
  const BalanceGameSeletorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Balance Game')),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: Text('플레이 방법'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(BlanceGameScreenPath, arguments: {
                      'balanceGame': balanceGames['19coupleBalanceGames'],
                      'balanceGameName': '커플 벨런스 게임',
                      'cardColor': AppColors.redColor,
                    });
                  },
                  child: const Text('커플 벨런스 게임'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(BlanceGameScreenPath, arguments: {
                      'balanceGame': balanceGames['coupleBalanceGames'],
                      'balanceGameName': '(성인) 커플 벨런스 게임',
                      'cardColor': AppColors.redColor,
                    });
                  },
                  child: const Text('(성인) 커플 벨런스 게임'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(BlanceGameScreenPath, arguments: {
                      'balanceGame': balanceGames['friendBalanceGames'],
                      'balanceGameName': '친구 벨런스 게임',
                      'cardColor': AppColors.redColor,
                    });
                  },
                  child: const Text('친구 벨런스 게임'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
