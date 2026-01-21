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
        question: '横浜市をホームタウンとする青いチームは？',
        options: ['横浜F・マリノス', '横浜FC', '川崎フロンターレ', '湘南ベルマーレ'],
        correctIndex: 0,
      ),
    ],
    // Jリーグ - チームロゴクイズ - Level 2
    'jLeague_teamLogo_level2': [
      Quiz(
        question: 'Jリーグで最も多く優勝しているチームは？',
        options: ['鹿島アントラーズ', '横浜F・マリノス', '川崎フロンターレ', 'ガンバ大阪'],
        correctIndex: 0,
      ),
      Quiz(
        question: '「太陽の王」の愛称を持つチームは？',
        options: ['柏レイソル', '清水エスパルス', 'ジュビロ磐田', '名古屋グランパス'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'ACL（アジアチャンピオンズリーグ）で優勝経験があるチームは？',
        options: ['浦和レッズ', 'FC東京', 'セレッソ大阪', 'コンサドーレ札幌'],
        correctIndex: 0,
      ),
      Quiz(
        question: '「桜」をシンボルにしているチームは？',
        options: ['セレッソ大阪', 'ヴィッセル神戸', 'ガンバ大阪', '京都サンガ'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'ベガルタの名前の由来となった星は？',
        options: ['ベガとアルタイル', '北極星', 'シリウス', 'オリオン'],
        correctIndex: 0,
      ),
    ],
    // Jリーグ - チームロゴクイズ - Level 3
    'jLeague_teamLogo_level3': [
      Quiz(
        question: 'Jリーグ初代チャンピオンは？',
        options: ['ヴェルディ川崎', '横浜マリノス', '鹿島アントラーズ', '清水エスパルス'],
        correctIndex: 0,
      ),
      Quiz(
        question: '「雉」をマスコットにしているチームは？',
        options: ['ファジアーノ岡山', 'サガン鳥栖', 'V・ファーレン長崎', '愛媛FC'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'J1で最も長く無敗記録を持つチームは？',
        options: ['川崎フロンターレ', '鹿島アントラーズ', '横浜F・マリノス', '浦和レッズ'],
        correctIndex: 0,
      ),
      Quiz(
        question: '「アルビレックス」の名前の由来は？',
        options: ['白鳥座の星', '新潟の方言', 'イタリア語', 'スポンサー名'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'グランパスの「グランパス」とは何を意味する？',
        options: ['シャチ', 'イルカ', 'クジラ', 'サメ'],
        correctIndex: 0,
      ),
    ],

    // Jリーグ - 選手名当てクイズ - Level 1
    'jLeague_playerName_level1': [
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
        question: 'セルティックで活躍する日本代表FWは？',
        options: ['古橋亨梧', '前田大然', '上田綺世', '浅野拓磨'],
        correctIndex: 0,
      ),
    ],
    // Jリーグ - 選手名当てクイズ - Level 2
    'jLeague_playerName_level2': [
      Quiz(
        question: 'フランクフルトで活躍し、「日本のメッシ」と呼ばれた選手は？',
        options: ['鎌田大地', '南野拓実', '古橋亨梧', '浅野拓磨'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'ドルトムントでプレーした日本人MFは？',
        options: ['香川真司', '本田圭佑', '中田英寿', '長谷部誠'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'インテルでプレーした日本人選手は？',
        options: ['長友佑都', '吉田麻也', '内田篤人', '酒井高徳'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'ACミランでプレーした日本人選手は？',
        options: ['本田圭佑', '香川真司', '岡崎慎司', '乾貴士'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'レスター・シティでプレミアリーグ優勝を経験した日本人選手は？',
        options: ['岡崎慎司', '吉田麻也', '武藤嘉紀', '南野拓実'],
        correctIndex: 0,
      ),
    ],
    // Jリーグ - 選手名当てクイズ - Level 3
    'jLeague_playerName_level3': [
      Quiz(
        question: 'セリエAで最初にプレーした日本人選手は？',
        options: ['三浦知良', '中田英寿', '本田圭佑', '長友佑都'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'ワールドカップで日本人初得点を決めた選手は？',
        options: ['中山雅史', '三浦知良', '岡崎慎司', '本田圭佑'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'JリーグでMVPを3回受賞した選手は？',
        options: ['中村憲剛', '遠藤保仁', '小野伸二', '中田英寿'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'アジアカップで最多得点を記録した日本人選手は？',
        options: ['中村俊輔', '高原直泰', '本田圭佑', '岡崎慎司'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'バイエルン・ミュンヘンでブンデスリーガ優勝を経験した日本人は？',
        options: ['宇佐美貴史', '香川真司', '長谷部誠', '鎌田大地'],
        correctIndex: 0,
      ),
    ],

    // プレミアリーグ - チームロゴクイズ - Level 1
    'premierLeague_teamLogo_level1': [
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
    ],
    // プレミアリーグ - チームロゴクイズ - Level 2
    'premierLeague_teamLogo_level2': [
      Quiz(
        question: 'プレミアリーグで最も優勝回数が多いチームは？',
        options: ['マンチェスター・ユナイテッド', 'リヴァプール', 'チェルシー', 'アーセナル'],
        correctIndex: 0,
      ),
      Quiz(
        question: '「タフィーズ」の愛称を持つチームは？',
        options: ['エバートン', 'リーズ', 'ニューカッスル', 'ウェストハム'],
        correctIndex: 0,
      ),
      Quiz(
        question: '「スパーズ」の愛称を持つロンドンのチームは？',
        options: ['トッテナム', 'アーセナル', 'チェルシー', 'ウェストハム'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'オウムをマスコットにしているチームは？',
        options: ['クリスタル・パレス', 'ノリッジ', 'ニューカッスル', 'ブライトン'],
        correctIndex: 0,
      ),
      Quiz(
        question: '「カモメ」がエンブレムのチームは？',
        options: ['ブライトン', 'サウサンプトン', 'ボーンマス', 'ブレントフォード'],
        correctIndex: 0,
      ),
    ],
    // プレミアリーグ - チームロゴクイズ - Level 3
    'premierLeague_teamLogo_level3': [
      Quiz(
        question: 'プレミアリーグ創設時のオリジナルメンバーではないチームは？',
        options: ['マンチェスター・シティ', 'マンチェスター・ユナイテッド', 'リヴァプール', 'アーセナル'],
        correctIndex: 0,
      ),
      Quiz(
        question: '無敗優勝を達成した「インビンシブルズ」と呼ばれたチームは？',
        options: ['アーセナル', 'マンチェスター・ユナイテッド', 'チェルシー', 'リヴァプール'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'プレミアリーグで最多連勝記録を持つチームは？',
        options: ['マンチェスター・シティ', 'リヴァプール', 'チェルシー', 'アーセナル'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'プレミアリーグ史上最大の番狂わせ優勝を達成したチームは？',
        options: ['レスター・シティ', 'ブラックバーン', 'ノッティンガム・フォレスト', 'ウィガン'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'アブラモビッチがオーナーだったチームは？',
        options: ['チェルシー', 'マンチェスター・シティ', 'ニューカッスル', 'エバートン'],
        correctIndex: 0,
      ),
    ],

    // プレミアリーグ - 選手名当てクイズ - Level 1
    'premierLeague_playerName_level1': [
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
    ],
    // プレミアリーグ - 選手名当てクイズ - Level 2
    'premierLeague_playerName_level2': [
      Quiz(
        question: 'プレミアリーグ通算最多得点記録を持つ選手は？',
        options: ['アラン・シアラー', 'ウェイン・ルーニー', 'アンディ・コール', 'セルヒオ・アグエロ'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'マンチェスター・シティで「シチズンズ」のキャプテンを務めるスペイン代表MFは？',
        options: ['ロドリ', 'ベルナルド・シウバ', 'イルカイ・ギュンドアン', 'ジャック・グリーリッシュ'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'チェルシーのイングランド代表GKは？',
        options: ['ロベルト・サンチェス', 'ジョーダン・ピックフォード', 'アーロン・ラムズデール', 'ニック・ポープ'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'アーセナルのキャプテンを務めるノルウェー代表MFは？',
        options: ['マルティン・ウーデゴール', 'デクラン・ライス', 'トーマス・パーティ', 'ジョルジーニョ'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'リヴァプールで活躍したオランダ代表DFは？',
        options: ['ヴィルヒル・ファン・ダイク', 'マタイス・デ・リフト', 'ナタン・アケ', 'ステファン・デ・フライ'],
        correctIndex: 0,
      ),
    ],
    // プレミアリーグ - 選手名当てクイズ - Level 3
    'premierLeague_playerName_level3': [
      Quiz(
        question: 'プレミアリーグで1シーズン最多得点記録（32得点）を持つ選手は？',
        options: ['モハメド・サラー', 'アラン・シアラー', 'クリスティアーノ・ロナウド', 'ルイス・スアレス'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'プレミアリーグ最多アシスト記録を持つ選手は？',
        options: ['ライアン・ギグス', 'セスク・ファブレガス', 'フランク・ランパード', 'デビッド・ベッカム'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'プレミアリーグ史上最高の移籍金で獲得された選手は？',
        options: ['エンゾ・フェルナンデス', 'ジャック・グリーリッシュ', 'ロメル・ルカク', 'ポール・ポグバ'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'レスター・シティの奇跡の優勝時の監督は？',
        options: ['クラウディオ・ラニエリ', 'ナイジェル・ピアソン', 'ブレンダン・ロジャーズ', 'クレイグ・シェイクスピア'],
        correctIndex: 0,
      ),
      Quiz(
        question: 'プレミアリーグで最も多くPKを決めた選手は？',
        options: ['フランク・ランパード', 'アラン・シアラー', 'スティーブン・ジェラード', 'マーク・ノーブル'],
        correctIndex: 0,
      ),
    ],
  };
}
