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
