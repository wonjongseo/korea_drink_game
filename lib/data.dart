import 'package:korea_drink_game/core/language.dart';
import 'package:korea_drink_game/screen/369_game/369_game_screen.dart';
import 'package:korea_drink_game/screen/balance_game/balance_game_select_screen.dart';
import 'package:korea_drink_game/screen/boom_game/boom_game_screen.dart';
import 'package:korea_drink_game/screen/liar_game/liar_game_index_screen.dart';
import 'package:korea_drink_game/screen/sonbyongho_game/sonbyongho_game_screen.dart';

class GameInfo {
  final String gameName;
  final String screenPath;

  GameInfo({required this.gameName, required this.screenPath});
}

List<GameInfo> games = [
  GameInfo(gameName: '嘘つきゲーム', screenPath: LiarGameIndexScreenPath),
  GameInfo(gameName: 'バランスゲーム', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: '爆弾ベーム', screenPath: BoomGameScreenPath),
  GameInfo(gameName: '369ゲーム', screenPath: ThreeSixNineGameScreenPath),
  GameInfo(gameName: 'ニンジンゲーム', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: 'ボクジョンウォンゲーム', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: 'クレオパトラ', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: 'バカゲーム', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: '一人で来ました', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: 'バスキンロビンス31', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: '電車ゲーム', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: 'ひらがなベーム', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: '山登り山登り', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: 'オレンジゲーム', screenPath: BalanceGameSeletorScreenPath),
  GameInfo(gameName: 'ソンビョンホゲーム', screenPath: SonbyonghoGameScreenPath),
  GameInfo(gameName: 'イチゴゲーム', screenPath: BalanceGameSeletorScreenPath),
];

Map<String, List<String>> balanceGames = {
  '19coupleBalanceGames': [
    ':남사친, 여사친 허용 범위 내의 스킨십 포옹vs팔짱',
    ':남성의 그것이 긴게 좋다vs짧은 게 좋다.',
    ':절친 여동생이랑 사귀기vs내 여동생이 절친이랑 사귀기',
    ':밤일에서 좋아하는 자세 앞vs뒤',
    ':가슴은 D컵 노 골반vs가슴은 절벽 국보급 골반',
    ':하루에 1천번 연락vs1달에 1번 연락',
    ':내가 더 사랑하는 사람vs나를 더 사랑하는 사람',
    ':내 과거를 알고 싶은 애인vs나한테 무관심한 애인',
    ':섹시한 스타일vs귀여운 스타일',
    ':낯선 이성과 술을 먹는 애인vs전 애인과 술을 먹는 애인',
    ':친구의 전 애인과 사귀기vs전 애인의 친구랑 사귀기',
    ':애인이 이성 번호 물어보기vs이성이 애인 번호 물어보기',
    ':한 달 동안 뽀뽀 금지vs포옹 금지',
    ':바람피우고 평생비밀하는 애인vs바람피고 용서 구하는 애인',
    ':입냄새 나는 애인vs발 냄새나는 애인',
    ':혼전순결vs혼전동거',
    ':말없이 스킨십만 하고 살기vs말만 하고 스킨십 없이 살기',
    ':숨겨놓은 자식 있는 애인vs이혼 3번만 애인(자식 x)',
    ':집착하는 애인vs애정 표현 없는 애인',
    ':남이 하는 거 내가 보기vs내가 하는 거 남이 보기',
    ':애인에게 꼬리 치는 절친vs절친에게 꼬리치는 애인',
    ':입에다 마무리vs안에다 마무리',
    ':한 자세로 오래 하기vs여러 자세로 하기',
    ':내 팬티 속에 애인 손vs애인 팬티 속에 내 손',
    ':애인 집에 다른 이성 속옷vs친한 친구 집에 애인 속옷',
    ':매달 5천만원 받고 10년 동안 안하기vs그냥 살기',
    ':깊숙하게vs빠르게',
    ':크지만 힘이 없는 물건vs작지만 단단한 물건',
    ':3분 안에 끝내기vs3시간 하기',
    ':처음vs고수',
    ':불 켜고 하기vs불 끄고 하기',
    ':밤일에서 좋아하는 자세 앞vs뒤',
    ':남사친, 여사친 허용 범위 내의 스킨십 포옹vs팔짱',
    ':양치 안 하고 키스하기vs안 씻고 사랑나누기',
    ':친한 이성이 나를 씻겨주기vs내가 친한 이성친구 씻겨주기',
    ':밤에 단 둘이 커피만 마시기vs낮에 단둘이 술 마시기',
    ':10년 지기 남사친(여사친) 1명vs가끔 안부 묻는 남사친(여사친) 100명',
    ':방귀쟁이 애인vs트림 쟁이 애인',
    ':남사친(여사친) 1박 2일 여행vs전 남자 친구(전 여자 친구) 술 마시기',
    ':매일 사랑해라고 말 듣기vs한 달에 한번 갖고 싶은 선물',
    ':몸매만 좋은 남자 친구(여자 친구)vs얼굴만 이쁘고 잘생긴 남친(여친)',
    ':남자 친구(여자 친구)가 털복숭이vs대머리',
    ':모든 것에 집착하는 애인vs애정 없는 애인',
    ':사고 친 애인 신고한다vs숨겨준다',
    ':결혼하면 자식 5명vs자식 없이 살기',
    ':못생겼지만 월 1천만원 버는 남자 친구(여자 친구)vs잘생겼지만 돈이 없는 여자 친구(남자 친구)',
    ':매일 하기vs1달에 1번 하기',
    ':회사 상사가 여자 친구(남자 친구)vs회사 후배가 여친(남친)',
    ':묶이기vs묶기',
    ':취중vs맨 정신',
  ],

  'coupleBalanceGames': [
    '스킨십 관련 질문:한 달 동안 손만 잡기 vs 한 달 동안 뽀뽀만 하기',
    '다음 중 화가 나는 상황은?:애인 집에서 자고 있는 절친 vs 절친 집에서 자고 있는 내 애인',
    '본인에게 더 좋은 이별은?:잠수 이별 vs 환승 이별',
    '대화 중 답답한 상황 가정:이야기 이해 못해서 계속 물어보는 애인 vs 드립 쳤는데, 이해 못해서 드립을 설명하는 애인',
    '선물 관련 짜증 나는 상황:마음에 안 드는 선물 사용하라고 강요하는 애인 vs 내가 사준 선물 몰래 중고나라에 판매하는 애인',
    '애인과 함께 산다고 가정:방은 1개, 거실이 넓은 집 vs 방은 3개, 거실이 좁은 집',
    '내 애인이 더 짜증 나는 상황:평번한 외모의 이성친구 10명 vs 존잘(존예) 외모 이성친구 1명',
    '사랑이 식었다고 느끼는 순간은?:나랑 있을 때 핸드폰만 만짐 vs 애정표현 및 스킨십 안함',
    '화가 더 나는 경우는?:애인의 이성친구들이 모두 전 애인 vs 4년 사귄 애인이 1년 전부터 바람피움',
    '신경이 쓰이는 상황은?:내가 만나고 있는 사람의 전 애인이 직장상사 vs 헤어진 내 전 애인이 직장상사',
    '거주지역 관련:평생 폭염 vs 평생 폭우',
    '한 곳에만 살 수 있다면?:좀비가 많은 세상 vs 범죄가 가득한 세상',
    '애완동물을 키운다면?:집안을 어지럽히는 예쁜 반려동물(강아지, 고양이) vs 조용하고 밥만 주면 되는 절지동물(지네, 벌레)',
    '여행을 무조건 가야 한다면?:중국-우한 여행(코로나) vs 이라크 여행(테러)',
    '하나만 선택한다면?:대중교통 평생 무료(비행기 제외) vs 최고급 외제차 받기(1번)',
    '어두운 밤길을 반드시 걸어야 한다면 누구랑?:내가 사랑하는 이성 vs 마동석',
    '더 힘든 상황은?:인싸인데 친구들이 안 부름 vs 아싸인데 친구들이 자꾸 부름',
    '더욱더 곤란한 상황은?:일어서서 8시간 풀 취침하기 vs 누워서 뜨거운 우동 먹기(엎드리기x)',
    '더 위험한 상황은?:라면 하나 먹고 있는데 친구에게 한 입 주기 vs 할머니한테 배고파 죽겠다고 말하기',
    '피하고 싶은 상황은?:잘못을 하고 나서 애인이 "할 말 있다고 할 때" vs 잘못을 저지른 뒤 직장상사가 "잠깐 보자고 할 때"',
  ],
  'friendBalanceGames': [
    ':9세로 돌아가서 수능 다시 보기 vs 지금 이대로 살기',
    ':구의 애인과 바람 내기 vs 애인의 친구랑 바람 내기',
    ':구상에서 나만 말만 하기 vs 지구 상에 있는 사람이 내가 말을 걸어도 못듣기',
    ':울에 에어콘 틀기 vs 여름에 히터 틀기',
    ':자튀김에 간장 찍어먹기 vs 사시미에 케챱 찍어먹기',
    ':산이 전혀 없는 탄산음료 vs 녹아서 액체가 되어버린 아이스크림',
    ':절이 여름만 있는 경우 vs 계절이 겨울만 있는 경우',
    ':무리 잠을 자더라도 피곤하기 vs 계속 먹어도 배고프기',
    ':막에서 혼자서 살아남기 vs 바다에서 혼자서 살아남기',
    ':대학원생에 들어가서 교수님 시다바리 하기 vs 대학교 생활만 10년 하기',
    ':몸에 털이 하나도 없기 vs 털이 날 수 있는 곳은 엄청 많이 나기',
    ':평생 두통으로 살기 vs 평생 치통으로 살기',
    ':1억을 받는 대신 내가 정말 혐오하는 사람 100억 받기 vs 1억을 안받고 아무 일도 안일어나기',
    ':여름 계절 중 겨울 옷만 입고 다니기 vs 겨울 계절 중 여름 옷만 입고 다니기',
    ':팔만대장경 1번 다 읽기 vs 대장내시경 8만번 하기',
    ':개구리맛 초콜릿 먹기 vs 초콜릿맛 개구리 구이 먹기',
    ':카레맛 나는 똥 먹기 vs 똥맛 나는 카레 먹기',
    ':구토맛 나는 토마토 먹기 vs 토마토맛나는 구토 먹기',
    ':1달 동안 휴대폰 없이 지내기 vs 1달동안 컴퓨터 없이 지내기',
    ':애인이랑 만나서 전애인 이야기만 하기 vs 전애인과 만나서 지금 애인이랑 이야기만 하기',
    ':트림할 때 방구소리 내기 vs 방구 낼 때 트림소리 내기',
    ':바람피우는 걸 비밀로 하는 애인 vs 바람 피운걸 자백하고 봐달라는 애인',
    ':한 달 동안 치킨 먹을 때 무 없이 먹기 vs 한 달 동안 피자 먹을 때 피클 없이 먹기',
    ':남친과 하루 동안 데이트 vs 내가 좋아하는 연예인과 1시간 데이트 하기',
    ':남사친/여사친이랑 영화관 가는 거 허락하기 vs 여사친/남사친이랑 놀이공원 가는 거 허락하기',
    ':정말 뚱뚱하지만 얼굴이 엄청 이쁘거나 잘생긴 애인 vs 몸매는 정말 좋지만 얼굴이 정말 못생긴 애인',
    ':애인에게 추파던지는 베프 vs 베프에게 작업거는 애인',
    ':여자친구 아버지랑 목욕탕 가기 vs 여자친구의 엄마랑 필라테스 수업 듣기',
    ':추성훈이랑 격투하고 이국종 교수한테 수술 받기 vs 이국종 교수랑 격투하고 추성훈에게 수술 받기',
    ':평생 싫어하는 사람과 친구하면서 1억 복권 받기 vs 안받기',
    ':대머리가 되어버린 애인 vs 털복숭이가 되어버린 애인',
    ':모르는 사람 사람 집에 애인 속옷 넣기 vs 애인 집에 모르는 사람 속옷 넣기',
    ':애인이랑 낮에는 지고 밤에는 이기기 vs 애인이랑 낮에는 이기고 밤에는 지기',
    ':애인이랑 만나서 애인 이야기만 듣기 vs 애인이랑 만나서 본인 이야기만 하기',
    ':다시 태어나도 지금의 애인과 결혼하기 vs 다시 태어나도 부모님 자식으로 태어나기',
    ':빚이 100억이면서 나만 절대적으로 사랑하는 애인 vs 돈이 100억인데 매일 바람피는 애인',
    ':내 속옷 안에 친구 손 넣어버리기 vs 친구 속옷 안에 내 손 넣어버리기',
    ':부랄친구와 딥키스하기 vs 친구 부랄에 키스하기',
    ':친구한테 소고기 사주기 vs 돈을 땅에 버리기',
    ':100% 확률로 1억 받기 vs 25% 확률로 10억 받기',
    ':친구 전 애인이랑 연애하기 vs 전 애인 친구랑 연애하기',
    ':애인과 사랑 선택하기 vs 친구와 우정 선택하기',
    ':뜨거운 아메리카노 vs 아이스 아메리카노',
    ':탕수육 찍어 먹기 vs 탕수육 부어 먹기',
    ':짬뽕 먹기 vs 짜장면 먹기',
    ':양념 치킨 먹기 vs 후라이드 치킨 먹기',
    ':주 4일 10시간 일하기 vs 주 3일 13.5시간 일하기',
    ':평생 드라마만 보기 vs 평생 영화만 보기',
    ':4일 동안 24시간 잠 안자기 vs 24일 동안 매일 4시간만 자기',
    ':회사 출근안하고 6일 8시간 일하기 vs 회사 출근하고 5일 8시간 일하기',
  ]
  // 'coupleBalanceGames': [
  //   '男友達、女友達許容範囲内のスキンシップ抱擁男友達、女友達許容範囲内のスキンシップ抱擁男友達、女友達許容範囲内のスキンシップ抱擁vs腕組み',
  //   '男性のそれが長い方がいい男性のそれが長い方がいい男性のそれが長い方がいいvs短い方がいい。',
  //   '親友の妹と付き合う親友の妹と付き合う親友の妹と付き合うvs私の妹が親友と付き合うこと',
  //   '夜の仕事で好きな姿勢、前夜の仕事で好きな姿勢、前夜の仕事で好きな姿勢、前vs後ろ',
  //   '胸はDカップノー骨盤胸はDカップノー骨盤胸はDカップノー骨盤vs胸は絶壁国宝級骨盤',
  //   '一日に1千回連絡一日に1千回連絡一日に1千回連絡vs1ヶ月に1回連絡',
  //   '私がもっと愛する人私がもっと愛する人私がもっと愛する人vs私をもっと愛する人',
  //   '私の過去を知りたい恋人私の過去を知りたい恋人私の過去を知りたい恋人vs私に無関心な恋人',
  //   'セクシーなスタイルセクシーなスタイルセクシーなスタイルvsかわいいスタイル',
  //   '見知らぬ異性とお酒を飲む恋人見知らぬ異性とお酒を飲む恋人見知らぬ異性とお酒を飲む恋人vs元恋人とお酒を飲む恋人',
  //   '友達の元カノと付き合う友達の元カノと付き合う友達の元カノと付き合うvs元カノの友達と付き合うこと',
  //   '恋人が異性番号を聞いてみます恋人が異性番号を聞いてみます恋人が異性番号を聞いてみますvs異性が恋人番号を聞いてみます',
  //   '1ヵ月間チュー禁止1ヵ月間チュー禁止1ヵ月間チュー禁止vsハグ禁止',
  //   '浮気します一生秘密にする恋人浮気します一生秘密にする恋人浮気します一生秘密にする恋人vs浮気して許しを請う恋人',
  //   '口臭がする恋人口臭がする恋人口臭がする恋人vs足臭くなる恋人',
  //   '婚前純潔婚前純潔婚前純潔vs婚前同居',
  //   '何も言わずにスキンシップだけして生きる 何も言わずにスキンシップだけして生きる 何も言わずにスキンシップだけして生きる vs 言葉だけしてスキンシップなしで生きる',
  //   '隠しておいた子供がいる恋人隠しておいた子供がいる恋人隠しておいた子供がいる恋人vs離婚3回だけ恋人(子供x)',
  //   '執着する恋人執着する恋人執着する恋人vs愛情表現のない恋人',
  //   '他人がするのを僕が見ます他人がするのを僕が見ます他人がするのを僕が見ますvs僕がするのを他人が見る',
  //   '恋人にしっぽを巻く親友恋人にしっぽを巻く親友恋人にしっぽを巻く親友vs親友にしっぽを巻く恋人',
  //   '口に仕上げ口に仕上げ口に仕上げvs中に仕上げます',
  //   '一つの姿勢で長くやります一つの姿勢で長くやります一つの姿勢で長くやりますvs色んな姿勢でやります',
  //   '私のパンツの中に恋人の手 私のパンツの中に恋人の手 私のパンツの中に恋人の手 vs 恋人のパンツの中に私の手',
  //   '恋人の家に他の異性の下着v親しい友達の家に恋人の下着があります',
  //   '毎月5千万ウォンをもらって10年間やらないこと毎月5千万ウォンをもらって10年間やらないこと毎月5千万ウォンをもらって10年間やらないことvs普通に生きる',
  //   '奥深く奥深く奥深くvs速く',
  //   '大きいが力のない物大きいが力のない物大きいが力のない物vs小さいが硬い物',
  //   '3分以内に終わらせます3分以内に終わらせます3分以内に終わらせますvs3時間する',
  //   '初めて初めて初めてvs達人',
  //   '電気を点けてやります。 電気を消してやります',
  //   '夜の仕事で好きな姿勢、前夜の仕事で好きな姿勢、前夜の仕事で好きな姿勢、前vs後ろ',
  //   '男友達、女友達許容範囲内のスキンシップ抱擁男友達、女友達許容範囲内のスキンシップ抱擁男友達、女友達許容範囲内のスキンシップ抱擁vs腕組み',
  //   '歯を磨かずにキスする歯を磨かずにキスする歯を磨かずにキスするvsお風呂に入らずに愛を分かち合うこと',
  //   '親しい異性が私を洗ってくれる 親しい異性が私を洗ってくれる 親しい異性が私を洗ってくれる vs 私が親しい異性の友達を洗ってあげる',
  //   '夜に二人きりでコーヒーだけ飲みます夜に二人きりでコーヒーだけ飲みます夜に二人きりでコーヒーだけ飲みますvs昼に二人きりでお酒を飲みます',
  //   '10年来の男友達1人10年来の男友達1人10年来の男友達1人vs行きますたまに安否を尋ねます男友達100人',
  //   'おなら屋さんの恋人おなら屋さんの恋人おなら屋さんの恋人vsげっぷんの恋人',
  //   '彼氏1泊2日の旅行彼氏1泊2日の旅行彼氏1泊2日の旅行vs元彼（元彼女）お酒を飲みます',
  //   '毎日愛してますと言われる毎日愛してますと言われる毎日愛してますと言われるvs月に一度欲しいプレゼント',
  //   '体つきだけ良い彼氏vs顔だけきれいでハンサムな彼氏体つきだけ良い彼氏vs顔だけきれいでハンサムな彼氏体つきだけ良い彼氏vs顔だけきれいでハンサムな彼氏vs',
  //   '彼氏が毛むくじゃら彼氏が毛むくじゃら彼氏が毛むくじゃらvsはげ頭',
  //   'すべてに執着する恋人すべてに執着する恋人すべてに執着する恋人vs愛情のない恋人',
  //   '事故に遭った恋人を通報します 事故に遭った恋人を通報します 事故に遭った恋人を通報します vs隠してあげる',
  //   '結婚したら子供5人結婚したら子供5人結婚したら子供5人vs子供なしで暮らします',
  //   'ブサイクが、月1千万ウォン稼ぐ彼氏vsハンサムだけどお金がない彼女ブサイクが、月1千万ウォン稼ぐ彼氏vsハンサムだけどお金がない彼女ブサイクが、月1千万ウォン稼ぐ彼氏vsハンサムだけどお金がない彼女vs',
  //   '毎日します毎日します毎日しますvs月に1回します',
  //   '会社の上司がガールフレンド（彼氏）会社の上司がガールフレンド（彼氏）会社の上司がガールフレンド（彼氏）vs会社の後輩が彼女（彼氏）',
  //   '結びます結びます結びますvs結びます',
  //   '酔中酔中酔中vsしらふ',
  // ]
};
