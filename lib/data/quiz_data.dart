import '../models/quiz.dart';

class QuizData {
  static List<Quiz> getQuizzes(Country country, Genre genre) {
    if (country == Country.japan) {
      if (genre == Genre.teamLogo) {
        return japanTeamLogoQuizzes;
      } else {
        return japanPlayerQuizzes;
      }
    } else {
      if (genre == Genre.teamLogo) {
        return englandTeamLogoQuizzes;
      } else {
        return englandPlayerQuizzes;
      }
    }
  }

  static final List<Quiz> japanTeamLogoQuizzes = [
    Quiz(
      question: '赤いユニフォームで「赤い悪魔」の愛称を持つJリーグチームは？',
      options: ['浦和レッズ', '鹿島アントラーズ', '名古屋グランパス', 'FC東京'],
      correctIndex: 0,
    ),
    Quiz(
      question: '「三本の矢」をエンブレムに持つ広島のチームは？',
      options: ['サンフレッチェ広島', 'ヴィッセル神戸', 'ガンバ大阪', 'セレッソ大阪'],
      correctIndex: 0,
    ),
    Quiz(
      question: '鹿のマークがエンブレムのチームは？',
      options: ['鹿島アントラーズ', '川崎フロンターレ', '横浜F・マリノス', '柏レイソル'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'イルカがマスコットのチームは？',
      options: ['川崎フロンターレ', '湘南ベルマーレ', '清水エスパルス', 'ジュビロ磐田'],
      correctIndex: 0,
    ),
    Quiz(
      question: '「タイガース」の愛称を持つJリーグチームは？',
      options: ['ジュビロ磐田', 'アルビレックス新潟', 'ベガルタ仙台', 'コンサドーレ札幌'],
      correctIndex: 0,
    ),
  ];

  static final List<Quiz> japanPlayerQuizzes = [
    Quiz(
      question: 'レアル・マドリードで活躍し、日本代表のエースとしても知られる選手は？',
      options: ['久保建英', '三笘薫', '冨安健洋', '遠藤航'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'ブライトンで活躍し、ドリブルが得意な日本代表選手は？',
      options: ['三笘薫', '久保建英', '伊東純也', '堂安律'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'リヴァプールで活躍し、日本代表のキャプテンを務めた選手は？',
      options: ['遠藤航', '吉田麻也', '長友佑都', '酒井宏樹'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'アーセナルで活躍するディフェンダーは？',
      options: ['冨安健洋', '板倉滉', '谷口彰悟', '中山雄太'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'フランクフルトで活躍し、「日本のメッシ」と呼ばれた選手は？',
      options: ['鎌田大地', '南野拓実', '古橋亨梧', '浅野拓磨'],
      correctIndex: 0,
    ),
  ];

  static final List<Quiz> englandTeamLogoQuizzes = [
    Quiz(
      question: '「赤い悪魔」の愛称を持つマンチェスターのチームは？',
      options: ['マンチェスター・ユナイテッド', 'マンチェスター・シティ', 'リヴァプール', 'アーセナル'],
      correctIndex: 0,
    ),
    Quiz(
      question: '「ガナーズ（砲兵）」の愛称を持つロンドンのチームは？',
      options: ['アーセナル', 'チェルシー', 'トッテナム', 'ウェストハム'],
      correctIndex: 0,
    ),
    Quiz(
      question: '「ブルーズ」の愛称を持つロンドンのチームは？',
      options: ['チェルシー', 'エバートン', 'レスター・シティ', 'ブライトン'],
      correctIndex: 0,
    ),
    Quiz(
      question: '鳥（リバーバード）がエンブレムのチームは？',
      options: ['リヴァプール', 'クリスタル・パレス', 'ニューカッスル', 'ノリッジ'],
      correctIndex: 0,
    ),
    Quiz(
      question: '「スカイブルー」のユニフォームで知られるマンチェスターのチームは？',
      options: ['マンチェスター・シティ', 'マンチェスター・ユナイテッド', 'エバートン', 'ブライトン'],
      correctIndex: 0,
    ),
  ];

  static final List<Quiz> englandPlayerQuizzes = [
    Quiz(
      question: 'マンチェスター・シティで活躍し、ノルウェー代表のストライカーは？',
      options: ['アーリング・ハーランド', 'ハリー・ケイン', 'マーカス・ラッシュフォード', 'ブカヨ・サカ'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'リヴァプールのエジプト代表エースは？',
      options: ['モハメド・サラー', 'サディオ・マネ', 'ルイス・ディアス', 'ダルウィン・ヌニェス'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'アーセナルの若きイングランド代表ウィンガーは？',
      options: ['ブカヨ・サカ', 'フィル・フォーデン', 'マーカス・ラッシュフォード', 'ジェイドン・サンチョ'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'マンチェスター・シティで背番号17を着け、ベルギー代表のMFは？',
      options: ['ケビン・デ・ブライネ', 'ベルナルド・シウバ', 'ロドリ', 'イルカイ・ギュンドアン'],
      correctIndex: 0,
    ),
    Quiz(
      question: 'レアル・マドリードで活躍するイングランド代表のミッドフィルダーは？',
      options: ['ジュード・ベリンガム', 'デクラン・ライス', 'メイソン・マウント', 'ジャック・グリーリッシュ'],
      correctIndex: 0,
    ),
  ];
}
