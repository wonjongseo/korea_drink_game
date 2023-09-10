import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:korea_drink_game/core/config/theme.dart';
import 'package:korea_drink_game/screen/369_game/369_game_screen.dart';
import 'package:korea_drink_game/screen/balance_game/balance_game_screen.dart';
import 'package:korea_drink_game/screen/balance_game/balance_game_select_screen.dart';
import 'package:korea_drink_game/screen/boom_game/boom_game_screen.dart';
import 'package:korea_drink_game/screen/home/home_screen.dart';
import 'package:korea_drink_game/screen/liar_game/liar_game_index_screen.dart';

import 'screen/sonbyongho_game/sonbyongho_game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '韓国のお酒ゲーム',
      getPages: [
        GetPage(
            name: LiarGameIndexScreenPath,
            page: () => const LiarGameIndexScreen()),
        GetPage(
            name: ThreeSixNineGameScreenPath,
            page: () => const ThreeSixNineGameScreen()),
        GetPage(
            name: SonbyonghoGameScreenPath,
            page: () => const SonbyonghoGameScreen()),
        GetPage(name: BoomGameScreenPath, page: () => const BoomGameScreen()),
        GetPage(
            name: BalanceGameSeletorScreenPath,
            page: () => const BalanceGameSeletorScreen()),
        GetPage(
            name: BlanceGameScreenPath, page: () => const BalanceGameScreen()),
      ],
      theme: AppThemings.dartTheme,
      home: const HomeScreen(),
    );
  }
}
