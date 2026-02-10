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

    // Jリーグ - スタジアムクイズ - Level 1
    'jLeague_stadium_level1': [
      Quiz(
        question: 'このスタジアムは？',
        options: ['埼玉スタジアム2002', '東京スタジアム2003', '横浜スタジアム2004', '大宮スタジアム2005'],
        correctIndex: 0,
        imageUrl:
            'https://newsatcl-pctr.c.yimg.jp/t/iwiz-yn/rpr/yanaiyumiko/00262282/title-1633702454847.jpeg?exp=10800',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['等々力陸上競技場', '日産スタジアム', '国立競技場', '埼玉スタジアム2002'],
        correctIndex: 2,
        imageUrl:
            'https://www.jiji.com/news/handmade/topic/d4_ank/skk113-jpp033213641.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['メルカリスタジアム', '国立競技場', '等々力陸上競技場', 'パナソニックスタジアム吹田'],
        correctIndex: 0,
        imageUrl:
            'https://www.yomiuri.co.jp/media/2025/06/20250619-OYT1I50172-1.jpg?type=large',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['豊田スタジアム', 'カシマスタジアム', '味の素スタジアム', 'ノエビアスタジアム神戸'],
        correctIndex: 2,
        imageUrl:
            'https://www.nihonsekkei.co.jp/wp-content/uploads/2016/11/633c12f33b63084a1f837e4547dea7fb.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['パナソニックスタジアム吹田', '等々力陸上競技場', '豊田スタジアム', 'ヨドコウ桜スタジアム'],
        correctIndex: 0,
        imageUrl:
            'https://www2.suitacityfootballstadium.jp/c/common/images/images_card_00.jpg',
      ),
    ],
    // Jリーグ - スタジアムクイズ - Level 2
    'jLeague_stadium_level2': [
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'パナソニックスタジアム吹田',
          'ノエビアスタジアム神戸',
          'ヨドコウ桜スタジアム',
          'エディオンピースウイング広島',
        ],
        correctIndex: 3,
        imageUrl:
            'https://www.sanfrecce.co.jp/asset/img/game/stadium/edion_peacewing01.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'デンカビッグスワンスタジアム',
          '町田GIONスタジアム',
          'ベストアメニティスタジアム',
          'レゾナックドーム大分',
        ],
        correctIndex: 1,
        imageUrl:
            'https://storage.googleapis.com/studio-cms-assets/projects/EjOQw5GdaJ/s-1489x1135_v-fms_webp_8004f1ca-a561-4cf2-a1cd-c3dd3a223565_middle.webp',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['エディオンピースウイング広島', 'デンカビッグスワンスタジアム', '等々力陸上競技場', 'ヨドコウ桜スタジアム'],
        correctIndex: 2,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/0/04/Todoroki_15031401.JPG',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'ヨドコウ桜スタジアム',
          'レゾナックドーム大分',
          'ベストアメニティスタジアム',
          'エディオンピースウイング広島',
        ],
        correctIndex: 0,
        imageUrl: 'https://www.cerezo.jp/stadium/photo_slide_03.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['味の素スタジアム', 'デンカビッグスワンスタジアム', 'レゾナックドーム大分', 'ベストアメニティスタジアム'],
        correctIndex: 1,
        imageUrl: 'https://www.denka-bigswan.com/img/top/mainimage.jpg',
      ),
    ],
    // Jリーグ - スタジアムクイズ - Level 3
    'jLeague_stadium_level3': [
      Quiz(
        question: 'このスタジアムは？',
        options: ['ヨドコウ桜スタジアム', 'レゾナックドーム大分', 'ベストアメニティスタジアム', '長崎スタジアムシティ'],
        correctIndex: 3,
        imageUrl:
            'https://www.nagasakistadiumcity.com/wp-content/themes/stadiumcity/images/top/front_top_sp.webp?20250422',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'ベストアメニティスタジアム',
          'トランスコスモススタジアム長崎',
          'レゾナックドーム大分',
          'ケーズデンキスタジアム水戸',
        ],
        correctIndex: 3,
        imageUrl:
            'https://lh6.googleusercontent.com/proxy/iRb8lOecDlEPXkIzB0Z-SPhSgtXrc1SGiGcWI5iotNSHRprsrd4PmMd2ffXg2flx_oz28jJAA_wqtgrLZ-JYBSODM6gY4Mj5V7BEKjyL78Lp7TqvhjoT49U_',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'nack5スタジアム大宮',
          'ベストアメニティスタジアム',
          'トランスコスモススタジアム長崎',
          'カンセキスタジアムとちぎ',
        ],
        correctIndex: 0,
        imageUrl:
            'https://visitsaitamacity.jp/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsiZGF0YSI6MTY0MDYsInB1ciI6ImJsb2JfaWQifX0=--e12e4e4db9345425a27b52911f763636bc664ca1/eyJfcmFpbHMiOnsiZGF0YSI6eyJmb3JtYXQiOiJ3ZWJwIiwicmVzaXplX3RvX2ZpdCI6WzE5MjAsMTA4MF0sInNhdmVyIjp7InF1YWxpdHkiOjgwfX0sInB1ciI6InZhcmlhdGlvbiJ9fQ==--772cc9d1a056963b4ab06d595a9f3bcbf7fb19a2/NACK5%E3%82%B9%E3%82%BF%E3%82%B7%E3%82%99%E3%82%A2%E3%83%A0%E5%A4%A7%E5%AE%AE1.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['カンセキスタジアムとちぎ', '札幌ドーム', 'ケーズデンキスタジアム水戸', 'ニンジニアスタジアム'],
        correctIndex: 1,
        imageUrl:
            'https://www.sapporo-dome.co.jp/cms/wp-content/themes/dome/img/cms/img-event-consadole.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['ニンジニアスタジアム', 'カンセキスタジアムとちぎ', '豊田スタジアム', 'タピックスタジアム名護'],
        correctIndex: 2,
        imageUrl:
            'https://sakatori.com/wp-content/uploads/2024/02/IMG_9884-1024x768.jpg',
      ),
    ],

    // プレミアリーグ - チームロゴクイズ - Level 1
    'premierLeague_teamLogo_level1': [
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・ユナイテッド', 'マンチェスター・シティ', 'リヴァプール', 'アーセナル'],
        correctIndex: 2,
        imageUrl:
            'https://football-emblem.com/wp-content/uploads/2021/10/Liverpool-Football-Club.001.jpg',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['アーセナル', 'チェルシー', 'トッテナム', 'ウェストハム'],
        correctIndex: 0,
        imageUrl:
            'https://worldfootballinfo.com/wp-content/uploads/2024/02/72A20362-BD69-4595-9119-62A9617E80A5.png',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['チェルシー', 'エバートン', 'レスター・シティ', 'ブライトン'],
        correctIndex: 0,
        imageUrl:
            'https://bluewolfuchida.com/wp-content/uploads/2023/01/dfaf9303ea50c40bf35cca93291f1ae0.png',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['リヴァプール', 'クリスタル・パレス', 'トッテナム', 'ノリッジ'],
        correctIndex: 2,
        imageUrl:
            'https://prcdn.freetls.fastly.net/release_image/116007/14/116007-14-4862bf2c56b411372647854006cc9340-1920x1080.png?width=1950&height=1350&quality=85%2C65&format=jpeg&auto=webp&fit=bounds&bg-color=fff',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・シティ', 'マンチェスター・ユナイテッド', 'エバートン', 'ブライトン'],
        correctIndex: 1,
        imageUrl:
            'https://bluewolfuchida.com/wp-content/uploads/2022/12/8fbc02f4beb60e1b07a932daeb8bbe8a.png',
      ),
    ],
    // プレミアリーグ - チームロゴクイズ - Level 2
    'premierLeague_teamLogo_level2': [
      Quiz(
        question: 'このチームは？',
        options: ['マンチェスター・ユナイテッド', 'ウェストハム', 'バーンリー', 'アストンヴィラ'],
        correctIndex: 3,
        imageUrl:
            'https://football-emblem.com/wp-content/uploads/2021/12/logo-avfc.009-940x529.jpeg',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['エバートン', 'リーズ', 'ニューカッスル', 'ウェストハム'],
        correctIndex: 1,
        imageUrl:
            'https://tmssl.akamaized.net//images/wappen/head/399.png?lm=1645652224',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['トッテナム', 'アーセナル', 'ブレントフォード', 'ウェストハム'],
        correctIndex: 2,
        imageUrl:
            'https://football-emblem.com/wp-content/uploads/2021/12/logo-brentford.008.jpeg',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['クリスタル・パレス', 'ノリッジ', 'ニューカッスル', 'ブライトン'],
        correctIndex: 2,
        imageUrl:
            'https://m.media-amazon.com/images/I/61EBetbItdL._AC_UF1000,1000_QL80_.jpg',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ブライトン', 'サウサンプトン', 'ボーンマス', 'ブレントフォード'],
        correctIndex: 1,
        imageUrl:
            'https://football-emblem.com/wp-content/uploads/2021/12/logo-southampton.005-940x529.jpeg',
      ),
    ],
    // プレミアリーグ - チームロゴクイズ - Level 3
    'premierLeague_teamLogo_level3': [
      Quiz(
        question: 'このチームは？',
        options: ['	コベントリー', 'ミドルズブラ', 'イプスウィッチ・タウン', 'プレストン・ノースエンド'],
        correctIndex: 0,
        imageUrl:
            'https://image.discovery.indazn.com/ca/v2/ca/image?id=2d14c5f5-a485-439e-80b6-ff46df4cb526&quality=70',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ハル・シティ', 'ミルウォール', 'レクサム', 'ダービー・カウンティ'],
        correctIndex: 1,
        imageUrl:
            'https://play-lh.googleusercontent.com/QsqdKG8o5-xHsv5lYRU5GCt1vlZZNZdnKvIGAzvIpx0n2ewERYkxQmKwKquxRajscg',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['ワトフォード', 'スウォンジー・シティ', 'シェフィールド・ユナイテッド', 'ストーク・シティ'],
        correctIndex: 3,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVUpU6Szx-vNMWEPICRR85eC_6fw2-oypZQg&s',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['レスター・シティ', 'ブラックバーン', 'ノッティンガム・フォレスト', 'ウィガン'],
        correctIndex: 1,
        imageUrl:
            'https://play-lh.googleusercontent.com/kQzVNF1MTyPbRH-nPCvTrSwLI_eubO2N8SpEtekEM_PI1teviSqpNaoa0_7Sse2G8U8',
      ),
      Quiz(
        question: 'このチームは？',
        options: ['レスター・シティ', 'マンチェスター・シティ', 'スウォンジー・シティ', 'バーミンガム・シティ'],
        correctIndex: 0,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2016/03/leicester_city_ver2015.png',
      ),
    ],

    // プレミアリーグ - スタジアムクイズ - Level 1
    'premierLeague_stadium_level1': [
      Quiz(
        question: 'このスタジアムは？',
        options: ['アンフィールド', 'オールド・トラフォード', 'エミレーツ・スタジアム', 'スタンフォード・ブリッジ'],
        correctIndex: 0,
        imageUrl:
            'https://number.ismcdn.jp/mwimgs/b/6/1200/img_b6dccd6cc922afe650499963df6081a8310050.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'エティハド・スタジアム',
          'エミレーツ・スタジアム',
          'トッテナム・ホットスパー・スタジアム',
          'アンフィールド',
        ],
        correctIndex: 1,
        imageUrl:
            'https://worldsports-c.com/images/page_img/a95e85d4a52e19262e7d7a2e703ad5df.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['スタンフォード・ブリッジ', 'エミレーツ・スタジアム', 'オールド・トラフォード', 'エティハド・スタジアム'],
        correctIndex: 2,
        imageUrl:
            'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/38/d7/89.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'トッテナム・ホットスパー・スタジアム',
          'スタンフォード・ブリッジ',
          'エティハド・スタジアム',
          'ロンドン・スタジアム',
        ],
        correctIndex: 0,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3fA8_yuMq1t_EVCcNHjeTy4cSV8tfgukN3Q&s',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['スタンフォード・ブリッジ', 'クレイヴン・コテージ', 'ロンドン・スタジアム', 'セルハースト・パーク'],
        correctIndex: 0,
        imageUrl:
            'https://www.football-zone.net/wp-content/uploads/2023/03/19222212/20230319-Stanford-Bridge-GettyImages.jpg',
      ),
    ],
    // プレミアリーグ - スタジアムクイズ - Level 2
    'premierLeague_stadium_level2': [
      Quiz(
        question: 'このスタジアムは？',
        options: [
          'トッテナム・ホットスパー・スタジアム',
          'セント・ジェームズ・パーク',
          'グディソン・パーク',
          'ヴィラ・パーク',
        ],
        correctIndex: 0,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Tottenham_Hotspur_Stadium.jpg/1280px-Tottenham_Hotspur_Stadium.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['エランド・ロード', 'セント・ジェームズ・パーク', 'ヴィラ・パーク', 'グディソン・パーク'],
        correctIndex: 1,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/St_James_Park.jpg/1280px-St_James_Park.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['ロンドン・スタジアム', 'グディソン・パーク', 'ヴィラ・パーク', 'クレイヴン・コテージ'],
        correctIndex: 2,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Villa_Park.jpg/1280px-Villa_Park.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['セルハースト・パーク', 'ロンドン・スタジアム', 'エランド・ロード', 'クレイヴン・コテージ'],
        correctIndex: 1,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/London_Stadium.jpg/1280px-London_Stadium.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['グディソン・パーク', 'キング・パワー・スタジアム', 'セルハースト・パーク', 'エランド・ロード'],
        correctIndex: 0,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Goodison_Park.jpg/1280px-Goodison_Park.jpg',
      ),
    ],
    // プレミアリーグ - スタジアムクイズ - Level 3
    'premierLeague_stadium_level3': [
      Quiz(
        question: 'このスタジアムは？',
        options: ['キング・パワー・スタジアム', 'セルハースト・パーク', 'クレイヴン・コテージ', 'カーロウ・ロード'],
        correctIndex: 1,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Selhurst_Park.jpg/1280px-Selhurst_Park.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['カーロウ・ロード', 'クレイヴン・コテージ', 'ブラモール・レーン', 'モリニュー・スタジアム'],
        correctIndex: 1,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Craven_Cottage.jpg/1280px-Craven_Cottage.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['モリニュー・スタジアム', 'ブラモール・レーン', 'ディーン・コート', 'ポートマン・ロード'],
        correctIndex: 0,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Molineux_Stadium.jpg/1280px-Molineux_Stadium.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['ポートマン・ロード', 'ブラモール・レーン', 'カーロウ・ロード', 'ディーン・コート'],
        correctIndex: 2,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Carrow_Road.jpg/1280px-Carrow_Road.jpg',
      ),
      Quiz(
        question: 'このスタジアムは？',
        options: ['ディーン・コート', 'ポートマン・ロード', 'ブラモール・レーン', 'GTCスタジアム'],
        correctIndex: 2,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Bramall_Lane.jpg/1280px-Bramall_Lane.jpg',
      ),
    ],

    // プレミアリーグ - 選手名当てクイズ - Level 1
    'premierLeague_playerName_level1': [
      Quiz(
        question: 'この選手は？',
        options: ['アーリング・ハーランド', 'ハリー・ケイン', 'マーカス・ラッシュフォード', 'ブカヨ・サカ'],
        correctIndex: 0,
        imageUrl:
            'https://www.football-zone.net/wp-content/uploads/2025/08/25141824/20250825-Erling-Haaland-Reuters.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['モハメド・サラー', 'サディオ・マネ', 'ルイス・ディアス', 'ダルウィン・ヌニェス'],
        correctIndex: 0,
        imageUrl:
            'https://www.football-zone.net/wp-content/uploads/2025/05/24191424/20250524_salah-reuters.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ブカヨ・サカ', 'フィル・フォーデン', 'マーカス・ラッシュフォード', 'ジェイドン・サンチョ'],
        correctIndex: 1,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2018/02/cfc07961e25f6b224eee28989a8e60d0-scaled.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ケビン・デ・ブライネ', 'ベルナルド・シウバ', 'ロドリ', 'イルカイ・ギュンドアン'],
        correctIndex: 2,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2016/08/Rodri-4.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ジュード・ベリンガム', 'デクラン・ライス', 'メイソン・マウント', 'ジャック・グリーリッシュ'],
        correctIndex: 1,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2017/09/cfc07961e25f6b224eee28989a8e60d0-1-scaled.jpg',
      ),
    ],
    // プレミアリーグ - 選手名当てクイズ - Level 2
    'premierLeague_playerName_level2': [
      Quiz(
        question: 'この選手は？',
        options: ['アラン・シアラー', 'ウェイン・ルーニー', 'リシャルリソン', 'セルヒオ・アグエロ'],
        correctIndex: 2,
        imageUrl: 'https://web.ultra-soccer.jp/image/pcimage?image_id=223936',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ロドリ', 'ベルナルド・シウバ', 'イルカイ・ギュンドアン', 'ジャック・グリーリッシュ'],
        correctIndex: 3,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2020/06/cfc07961e25f6b224eee28989a8e60d0-scaled.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ロベルト・サンチェス', 'ジョーダン・ピックフォード', 'アーロン・ラムズデール', 'ジョアン・ペドロ'],
        correctIndex: 3,
        imageUrl:
            'https://d2mer3ui3eyp7p.cloudfront.net/eyJidWNrZXQiOiJsYWJvbGEtcHJvZCIsImtleSI6InBfYmxvZ19nZC9hbS82ZS8yby9rNi8yNC96aS9zNC93cy9naC9tbi93Zy8zci83My94ay9neF9yZWFsLmpwZWciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjY0MCwiaGVpZ2h0Ijo0ODAsImZpdCI6Im91dHNpZGUifX19',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['マルティン・ウーデゴール', 'デクラン・ライス', 'トーマス・パーティ', 'ジョルジーニョ'],
        correctIndex: 0,
        imageUrl:
            'https://www.football-zone.net/wp-content/uploads/2024/03/14094346/20220314_Odegaard-Getty.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ヴィルヒル・ファン・ダイク', 'マタイス・デ・リフト', 'ナタン・アケ', 'ステファン・デ・フライ'],
        correctIndex: 1,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2018/09/matthijs-de-ligt-manchester-united.jpg',
      ),
    ],
    // プレミアリーグ - 選手名当てクイズ - Level 3
    'premierLeague_playerName_level3': [
      Quiz(
        question: 'この選手は？',
        options: ['イゴーリ・アレクサンドル', 'イゴーリ・ミハイル', 'イゴーリ・ドミトリー', 'イゴーリ・チアゴ'],
        correctIndex: 3,
        imageUrl:
            'https://newsatcl-pctr.c.yimg.jp/t/amd-img/20251204-00010008-theworldw-000-1-view.jpg?pri=l&w=640&h=426&exp=10800',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['ブルーノ・オリベイラ', 'ブルーノ・ソウザ ', 'ブルーノ・ギマランイス', 'ブルーノ・ペレイラ '],
        correctIndex: 2,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2020/07/Bruno-Guimaraes-1.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['エンゾ・フェルナンデス', 'ジャック・グリーリッシュ', 'ロメル・ルカク', 'ポール・ポグバ'],
        correctIndex: 0,
        imageUrl:
            'https://media.gettyimages.com/id/2165617309/ja/%E3%82%B9%E3%83%88%E3%83%83%E3%82%AF%E3%83%95%E3%82%A9%E3%83%88/charlotte-north-carolina-enzo-fernandez-of-chelsea-reacts-during-the-pre-season-friendly.jpg?s=612x612&w=gi&k=20&c=EOMIuZ69Lhnf6N1ZLwnIgwyhlc5z9Dc_ZwPwFDylXEA=',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['クラウディオ・ラニエリ', 'ナイジェル・ピアソン', 'ギェケレシュ', 'クレイグ・シェイクスピア'],
        correctIndex: 2,
        imageUrl:
            'https://www.soccer-king.jp/wp-content/uploads/2024/11/viktor-gyokeres-arsenal.jpg',
      ),
      Quiz(
        question: 'この選手は？',
        options: ['フランク・ランパード', 'シェシュコ', 'スティーブン・ジェラード', 'マーク・ノーブル'],
        correctIndex: 1,
        imageUrl:
            'https://www.theworldmagazine.jp/wp-content/uploads/2025/09/GettyImages-2232925987-min.jpg',
      ),
    ],
  };
}
