import '../models/quiz.dart';

class QuizData {
  static List<Quiz> getQuizzes(League league, Genre genre, Level level) {
    final key = '${league.name}_${genre.name}_${level.name}';
    return _quizMap[key] ?? [];
  }

  static final Map<String, List<Quiz>> _quizMap = {
    // Jリーグ - チームロゴクイズ - Level 1
    'jLeague_teamLogo_level1': [
      Quiz(
        question: 'このチームは？',
        options: ['浦和レッズ', '鹿島アントラーズ', '名古屋グランパス', 'FC東京'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Urawa+Reds',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['サンフレッチェ広島', 'ヴィッセル神戸', 'ガンバ大阪', 'セレッソ大阪'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Sanfrecce',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['鹿島アントラーズ', '川崎フロンターレ', '横浜F・マリノス', '柏レイソル'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Kashima',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['川崎フロンターレ', '湘南ベルマーレ', '清水エスパルス', 'ジュビロ磐田'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Kawasaki',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['横浜F・マリノス', '横浜FC', '川崎フロンターレ', '湘南ベルマーレ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Marinos',
      ),
    ],
    // Jリーグ - チームロゴクイズ - Level 2
    'jLeague_teamLogo_level2': [
      Quiz(
        question: 'このチームは？',
        options: ['鹿島アントラーズ', '横浜F・マリノス', '川崎フロンターレ', 'ガンバ大阪'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Kashima',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['柏レイソル', '清水エスパルス', 'ジュビロ磐田', '名古屋グランパス'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Reysol',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['浦和レッズ', 'FC東京', 'セレッソ大阪', 'コンサドーレ札幌'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Urawa',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['セレッソ大阪', 'ヴィッセル神戸', 'ガンバ大阪', '京都サンガ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Cerezo',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ベガルタ仙台', 'モンテディオ山形', 'アルビレックス新潟', 'ヴァンフォーレ甲府'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Vegalta',
      ),
    ],
    // Jリーグ - チームロゴクイズ - Level 3
    'jLeague_teamLogo_level3': [
      Quiz(
        question: 'このチームは？',
        options: ['ヴェルディ川崎', '横浜マリノス', '鹿島アントラーズ', '清水エスパルス'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Verdy',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ファジアーノ岡山', 'サガン鳥栖', 'V・ファーレン長崎', '愛媛FC'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Fagiano',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['川崎フロンターレ', '鹿島アントラーズ', '横浜F・マリノス', '浦和レッズ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Kawasaki',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['アルビレックス新潟', 'モンテディオ山形', 'ベガルタ仙台', 'ヴァンフォーレ甲府'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Albirex',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['名古屋グランパス', '清水エスパルス', 'ジュビロ磐田', 'FC東京'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Grampus',
      ),
    ],

    // Jリーグ - 選手名当てクイズ - Level 1
    'jLeague_playerName_level1': [
      Quiz(
        question: 'この選手は？',
        options: ['久保建英', '三笘薫', '冨安健洋', '遠藤航'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+1',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['三笘薫', '久保建英', '伊東純也', '堂安律'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+2',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['遠藤航', '吉田麻也', '長友佑都', '酒井宏樹'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+3',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['冨安健洋', '板倉滉', '谷口彰悟', '中山雄太'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+4',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['古橋亨梧', '前田大然', '上田綺世', '浅野拓磨'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+5',
      ),
    ],
    // Jリーグ - 選手名当てクイズ - Level 2
    'jLeague_playerName_level2': [
      Quiz(
        question: 'この選手は？',
        options: ['鎌田大地', '南野拓実', '古橋亨梧', '浅野拓磨'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+1',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['香川真司', '本田圭佑', '中田英寿', '長谷部誠'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+2',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['長友佑都', '吉田麻也', '内田篤人', '酒井高徳'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+3',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['本田圭佑', '香川真司', '岡崎慎司', '乾貴士'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+4',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['岡崎慎司', '吉田麻也', '武藤嘉紀', '南野拓実'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+5',
      ),
    ],
    // Jリーグ - 選手名当てクイズ - Level 3
    'jLeague_playerName_level3': [
      Quiz(
        question: 'この選手は？',
        options: ['三浦知良', '中田英寿', '本田圭佑', '長友佑都'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+1',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['中山雅史', '三浦知良', '岡崎慎司', '本田圭佑'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+2',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['中村憲剛', '遠藤保仁', '小野伸二', '中田英寿'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+3',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['中村俊輔', '高原直泰', '本田圭佑', '岡崎慎司'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+4',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['宇佐美貴史', '香川真司', '長谷部誠', '鎌田大地'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+5',
      ),
    ],

    // プレミアリーグ - チームロゴクイズ - Level 1
    'premierLeague_teamLogo_level1': [
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・ユナイテッド', 'マンチェスター・シティ', 'リヴァプール', 'アーセナル'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Man+Utd',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['アーセナル', 'チェルシー', 'トッテナム', 'ウェストハム'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Arsenal',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['チェルシー', 'エバートン', 'レスター・シティ', 'ブライトン'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Chelsea',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['リヴァプール', 'クリスタル・パレス', 'ニューカッスル', 'ノリッジ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Liverpool',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・シティ', 'マンチェスター・ユナイテッド', 'エバートン', 'ブライトン'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Man+City',
      ),
    ],
    // プレミアリーグ - チームロゴクイズ - Level 2
    'premierLeague_teamLogo_level2': [
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・ユナイテッド', 'リヴァプール', 'チェルシー', 'アーセナル'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Man+Utd',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['エバートン', 'リーズ', 'ニューカッスル', 'ウェストハム'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Everton',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['トッテナム', 'アーセナル', 'チェルシー', 'ウェストハム'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Tottenham',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['クリスタル・パレス', 'ノリッジ', 'ニューカッスル', 'ブライトン'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Crystal+Palace',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ブライトン', 'サウサンプトン', 'ボーンマス', 'ブレントフォード'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Brighton',
      ),
    ],
    // プレミアリーグ - チームロゴクイズ - Level 3
    'premierLeague_teamLogo_level3': [
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・シティ', 'マンチェスター・ユナイテッド', 'リヴァプール', 'アーセナル'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Man+City',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['アーセナル', 'マンチェスター・ユナイテッド', 'チェルシー', 'リヴァプール'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Arsenal',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・シティ', 'リヴァプール', 'チェルシー', 'アーセナル'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Man+City',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['レスター・シティ', 'ブラックバーン', 'ノッティンガム・フォレスト', 'ウィガン'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Leicester',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['チェルシー', 'マンチェスター・シティ', 'ニューカッスル', 'エバートン'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Chelsea',
      ),
    ],

    // プレミアリーグ - 選手名当てクイズ - Level 1
    'premierLeague_playerName_level1': [
      Quiz(
        question: 'この選手は？',
        options: ['アーリング・ハーランド', 'ハリー・ケイン', 'マーカス・ラッシュフォード', 'ブカヨ・サカ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+1',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['モハメド・サラー', 'サディオ・マネ', 'ルイス・ディアス', 'ダルウィン・ヌニェス'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+2',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ブカヨ・サカ', 'フィル・フォーデン', 'マーカス・ラッシュフォード', 'ジェイドン・サンチョ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+3',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ケビン・デ・ブライネ', 'ベルナルド・シウバ', 'ロドリ', 'イルカイ・ギュンドアン'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+4',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ジュード・ベリンガム', 'デクラン・ライス', 'メイソン・マウント', 'ジャック・グリーリッシュ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+5',
      ),
    ],
    // プレミアリーグ - 選手名当てクイズ - Level 2
    'premierLeague_playerName_level2': [
      Quiz(
        question: 'この選手は？',
        options: ['アラン・シアラー', 'ウェイン・ルーニー', 'アンディ・コール', 'セルヒオ・アグエロ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+1',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ロドリ', 'ベルナルド・シウバ', 'イルカイ・ギュンドアン', 'ジャック・グリーリッシュ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+2',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ロベルト・サンチェス', 'ジョーダン・ピックフォード', 'アーロン・ラムズデール', 'ニック・ポープ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+3',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['マルティン・ウーデゴール', 'デクラン・ライス', 'トーマス・パーティ', 'ジョルジーニョ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+4',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ヴィルヒル・ファン・ダイク', 'マタイス・デ・リフト', 'ナタン・アケ', 'ステファン・デ・フライ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+5',
      ),
    ],
    // プレミアリーグ - 選手名当てクイズ - Level 3
    'premierLeague_playerName_level3': [
      Quiz(
        question: 'この選手は？',
        options: ['モハメド・サラー', 'アラン・シアラー', 'クリスティアーノ・ロナウド', 'ルイス・スアレス'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+1',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ライアン・ギグス', 'セスク・ファブレガス', 'フランク・ランパード', 'デビッド・ベッカム'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+2',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['エンゾ・フェルナンデス', 'ジャック・グリーリッシュ', 'ロメル・ルカク', 'ポール・ポグバ'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+3',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['クラウディオ・ラニエリ', 'ナイジェル・ピアソン', 'ブレンダン・ロジャーズ', 'クレイグ・シェイクスピア'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+4',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['フランク・ランパード', 'アラン・シアラー', 'スティーブン・ジェラード', 'マーク・ノーブル'],
        correctIndex: 0,
        imageUrl: 'https://via.placeholder.com/200x200.png?text=Player+5',
      ),
    ],
  };
}
