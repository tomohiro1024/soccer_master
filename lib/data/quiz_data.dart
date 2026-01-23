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
        correctIndex: 1,
        imageUrl:
            'https://www.jleague.jp/img/jwc/2017/clubprofile/clubprof_emb_kashima.png',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['サンフレッチェ広島', 'ヴィッセル神戸', 'ガンバ大阪', 'セレッソ大阪'],
        correctIndex: 2,
        imageUrl:
            'https://sports-pctr.c.yimg.jp/dk/iwiz-sports/text/images/2021/1002/202110020039-spnaviow_2021100201078_view.jpg',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['鹿島アントラーズ', '川崎フロンターレ', '横浜F・マリノス', '柏レイソル'],
        correctIndex: 1,
        imageUrl: 'https://www.jleague-ticket.jp/img/club/img/kf_l.png',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['川崎フロンターレ', '湘南ベルマーレ', '清水エスパルス', 'ジュビロ磐田'],
        correctIndex: 2,
        imageUrl:
            'https://yt3.googleusercontent.com/GqM5Mud-zswpSgSrFEkZ3PZuoa9inoxWEz0QVr3JKhGpyQjohs-wyWhALbwyYT-ULUfFMjyJf38=s900-c-k-c0x00ffffff-no-rj',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['横浜F・マリノス', '横浜FC', '川崎フロンターレ', '湘南ベルマーレ'],
        correctIndex: 0,
        imageUrl: 'https://www.f-marinos.com/img/logo_marinos.png',
      ),
    ],
    // Jリーグ - チームロゴクイズ - Level 2
    'jLeague_teamLogo_level2': [
      Quiz(
        question: 'このチームは？',
        options: ['水戸ホーリーホック', 'Vファーレン長崎', 'ジェフ千葉', '徳島ヴォルティス'],
        correctIndex: 3,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp10HDuSJ_l_v80SYn-ArE3lQ5MZ4DuBOEYw&s',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ジュビロ磐田', 'RB大宮アルディージャ', 'ベガルタ仙台', 'サガン鳥栖'],
        correctIndex: 1,
        imageUrl:
            'https://spottama.pref.saitama.lg.jp/uploads/2024/12/20241227092852.png',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['浦和レッズ', 'FC東京', 'セレッソ大阪', 'コンサドーレ札幌'],
        correctIndex: 3,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2016/03/sapporo.png',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['いわきFC', 'モンテディオ山形', 'FC今治', 'ヴァンフォーレ甲府'],
        correctIndex: 2,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsM22pr-mG4aNb5PDxr7mdFBIXuUGANFRKiA&s',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ベガルタ仙台', 'モンテディオ山形', 'アルビレックス新潟', 'ヴァンフォーレ甲府'],
        correctIndex: 2,
        imageUrl: 'https://image.pia.jp/images/201903/201903160009_ex.png',
      ),
    ],
    // Jリーグ - チームロゴクイズ - Level 3
    'jLeague_teamLogo_level3': [
      Quiz(
        question: 'このチームは？',
        options: ['栃木シティ', '栃木SC', 'ザスパ群馬', '水戸ホーリーホック'],
        correctIndex: 0,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5_U6kjrZ8C36aFyUX-7UHzwiILPUe6XZDiQ&s',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ファジアーノ岡山', 'サガン鳥栖', 'V・ファーレン長崎', '愛媛FC'],
        correctIndex: 3,
        imageUrl:
            'https://yt3.googleusercontent.com/qrlcnLn4VwOKk-OMSIkh2VbEZj_26Qdwlrxg9TwLHen1uGN0XXcNn3k3Vsk7fFEGfLdh_OLFWG4=s900-c-k-c0x00ffffff-no-rj',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ガンバ大崎', 'セレッソ大阪', 'ヴィッセル神戸', 'FC大阪'],
        correctIndex: 3,
        imageUrl:
            'https://yt3.googleusercontent.com/cH5HrgEimC07fqAVr7VfdVmue4c49zonTzrktBItxDtZ9sYFwiu7b98er5_pIGdy-hHHULxrhw=s900-c-k-c0x00ffffff-no-rj',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['鹿児島ユナイテッドFC', 'テゲバジャーロ宮崎', 'ギラヴァンツ北九州', 'アビスパ福岡'],
        correctIndex: 1,
        imageUrl:
            'https://www.footballchannel.jp/wordpress/assets/2025/12/20251126_miyazaki.jpg',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['名古屋グランパス', 'ガイナーレ鳥取', 'ジュビロ磐田', 'FC東京'],
        correctIndex: 1,
        imageUrl: 'https://www.jleague.jp/img/awards/2020/club/tottori.jpg',
      ),
    ],

    // Jリーグ - 選手名当てクイズ - Level 1
    'jLeague_playerName_level1': [
      Quiz(
        question: 'この選手は？',
        options: ['鈴木優磨', '三笘薫', '冨安健洋', '遠藤航'],
        correctIndex: 0,
        imageUrl:
            'https://hochi.news/images/2025/06/11/20250611-OHT1I51408-L.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['三笘薫', '久保建英', '伊東純也', '大迫勇也'],
        correctIndex: 3,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2013/02/07bafcfd6c7a0e0211e0673ad1d37be7.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['遠藤航', '吉田麻也', '長友佑都', '酒井宏樹'],
        correctIndex: 2,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2013/03/72d8d22d3a09d3444d831f83fcada2a6.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['冨安健洋', '三浦知良', '谷口彰悟', '中山雄太'],
        correctIndex: 1,
        imageUrl:
            'https://static.chunichi.co.jp/image/article/size1/e/e/e/3/eee388e8f450e7166641b7d01537a4a0_1.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['家長昭博', '本田圭佑', '上田綺世', '浅野拓磨'],
        correctIndex: 0,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2013/02/458a1a41f2234753d66587d8df699de8.jpg',
      ),
    ],
    // Jリーグ - 選手名当てクイズ - Level 2
    'jLeague_playerName_level2': [
      Quiz(
        question: 'この選手は？',
        options: ['鎌田大地', '山口蛍', '古橋亨梧', '浅野拓磨'],
        correctIndex: 1,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOpHtDnV00jVwL9GWmcArPvDnkgi01EXSOwA&s',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['香川真司', '本田圭佑', '中田英寿', '杉本健勇(2980)'],
        correctIndex: 3,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnLCUdOxfAHWPbLF2ZlZmz-wOn56WCA6py7Q&s',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['カイオ ヘンリキ', 'マルクス ヴィニシウス', 'ルーカス ガブリエル', 'マテウス ロドリゲス'],
        correctIndex: 1,
        imageUrl:
            'https://www.jleague.jp/img/news/2025/02/30193.jpg?_=1738568454',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['本田圭佑', '香川真司', '岡崎慎司', '乾貴士'],
        correctIndex: 3,
        imageUrl:
            'https://soccerdigestweb.thedigestweb.com/v=1741060773/files/topics/169475_ext_04_0.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['岡崎慎司', '吉田麻也', '武藤嘉紀', '南野拓実'],
        correctIndex: 2,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2013/06/muto-3.jpg',
      ),
    ],
    // Jリーグ - 選手名当てクイズ - Level 3
    'jLeague_playerName_level3': [
      Quiz(
        question: 'この選手は？',
        options: ['佐藤 カルロス健太 ', '山田 ルイス大輔', '田中 パウロ淳一', '鈴木 マルコス翔'],
        correctIndex: 2,
        imageUrl:
            'https://www.football-zone.net/wp-content/uploads/2025/05/14173420/20250514-Junichi-Paulo-Tanaka-tokuhara.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['パトリック', 'クリストファー', 'アレクサンダー', 'ニコラス'],
        correctIndex: 0,
        imageUrl:
            'https://www.jleague.jp/img/news/2024/11/29500.jpg?_=1732784620',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ロドリゲス ディエゴ', 'バスケス バイロン', 'ゴメス エドゥアルド', 'ラミレス ホセ'],
        correctIndex: 1,
        imageUrl:
            'https://www.jleague.jp/img/news/2025/08/31806.jpg?_=1755764324',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ノヴァク ミロシュ', 'ポポヴィッチ ダリオ', 'マテイ ヨニッチ', 'コヴァチ アンドレイ'],
        correctIndex: 2,
        imageUrl:
            'https://www.football-zone.net/wp-content/uploads/2025/01/23175037/20250123-Matej-Jonic-GettyImages.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['橋本 啓吾', '橋本 隼人', '橋本 大樹', '橋本 蓮'],
        correctIndex: 0,
        imageUrl:
            'https://www.football-zone.net/wp-content/uploads/2025/12/29103809/20251229-Keigo-Hashimoto-GettyImages.jpg',
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
