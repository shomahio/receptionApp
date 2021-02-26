#年齢（age）
Age.create([
  { name: '１０代の利用者が多い' },
  { name: '２０代の利用者が多い' },
  { name: '３０代の利用者が多い' },
  { name: '４０代の利用者が多い' },
  { name: '５０代の利用者が多い' },
  { name: '６０代以上の利用者が多い' },
])

#ドリンク
Drink.create([
  { name: 'ワインあり' },
  { name: '日本酒あり' },
  { name: '焼酎あり' },
  { name: 'おしゃれドリンクあり' },
  { name: 'カクテルあり' },
  { name: 'ワインにこだわる' },
  { name: '日本酒にこだわる' },
  { name: '焼酎にこだわる' },
  { name: 'カクテルにこだわる' },
])

#ロケーション
Location.create([
  { name: '夜景が見える' },
  { name: 'ホテル内・ホテル直営' },
  { name: '眺望がいい' },
  { name: '駅近' },
  { name: '海が見える' },
  { name: '隠れ家レストラン' },
  { name: '一軒家レストラン' },
])

#BGM(music)
Music.create([
  { name: 'BGMなし' },
  { name: '洋楽（アップテンポ）' },
  { name: '邦楽（スローテンポ）' },
  { name: '邦楽（アップテンポ）' },
  { name: '邦楽（スローテンポ）' },
  { name: 'クラシック' },
  { name: 'ジャズ' },
  { name: 'その他' },
])

#支払い方法
Payment.create([
  { name: 'クレジットカード可' },
  { name: '現金のみ' },
  { name: '電子マネー決済可' },
  { name: '領収書支払い可' },
])

#席の形式
Room.create([
  { name: '個室あり' },
  { name: '半個室あり' },
  { name: 'カウンターあり' },
  { name: '立ち飲み' },
])

#サービス
Service.create([
  { name: '２時間半以上の宴会可' },
  { name: 'お祝い・サプライズ可' },
  { name: '外国語メニューがある' },
  { name: '食べ放題あり' },
  { name: '飲み放題あり' },
  { name: 'テイクアウトあり' },
])

#スペース
Space.create([
  { name: '感染症対策情報掲載店' },
  { name: '席が広い' },
  { name: 'カップルシート' },
  { name: 'カウンター席' },
  { name: 'ソファー席' },
  { name: '座敷' },
  { name: '掘りごたつ' },
  { name: 'オープンテラス' },
  { name: 'カラオケあり' },
  { name: 'ダーツ' },
  { name: 'ライブ・生演奏' },
  { name: 'スポーツ観戦' },
  { name: 'プロジェクターあり' },
  { name: '電源あり' },
  { name: 'Wi-Fiあり' },
])


#和食
japanesefood = Genre.create(name: "和食")
japanesefood_1 = japanesefood.children.create(name: "日本料理")
japanesefood_2 = japanesefood.children.create(name: "寿司")
japanesefood_3 = japanesefood.children.create(name: "魚介料理・海鮮料理")
japanesefood_4 = japanesefood.children.create(name: "天ぷら・揚げ物")
japanesefood_5 = japanesefood.children.create(name: "そば・うどん・麺類")
japanesefood_6 = japanesefood.children.create(name: "うなぎ・どじょう・あなご")
japanesefood_7 = japanesefood.children.create(name: "お好み焼き・たこ焼き")
japanesefood_8 = japanesefood.children.create(name: "郷土料理")
japanesefood_9 = japanesefood.children.create(name: "丼もの")
japanesefood_10 = japanesefood.children.create(name: "焼き鳥・串焼き・鳥料理")
japanesefood_11 = japanesefood.children.create(name: "すき焼き・しゃぶしゃぶ")
japanesefood_12 = japanesefood.children.create(name: "おでん")

#洋食・西洋料理
yoshoku = Genre.create(name: "洋食・西洋料理")
yoshoku_1 = yoshoku.children.create(name: "ステーキ・ハンバーグ")
yoshoku_2 = yoshoku.children.create(name: "鉄板焼き")
yoshoku_3 = yoshoku.children.create(name: "西洋各国料理")
yoshoku_4 = yoshoku.children.create(name: "スペイン料理")
yoshoku_5 = yoshoku.children.create(name: "イタリアン")
yoshoku_6 = yoshoku.children.create(name: "パスタ・ピザ")
yoshoku_7 = yoshoku.children.create(name: "フレンチ")
yoshoku_8 = yoshoku.children.create(name: "洋食・欧風料理")

#中華料理
chuka = Genre.create(name: "中華料理")
chuka_1 = chuka.children.create(name: "中華料理")
chuka_1 = chuka.children.create(name: "餃子・肉まん")
chuka_1 = chuka.children.create(name: "中華粥")
chuka_1 = chuka.children.create(name: "中華麺")

#アジア・エスニック料理
asiafood = Genre.create(name: "アジア・エスニック料理")
asiafood_1 = asiafood.children.create(name: "韓国料理")
asiafood_2 = asiafood.children.create(name: "東南アジア料理")
asiafood_3 = asiafood.children.create(name: "南アジア料理")
asiafood_4 = asiafood.children.create(name: "西アジア料理")
asiafood_5 = asiafood.children.create(name: "中南米料理")
asiafood_6 = asiafood.children.create(name: "アフリカ料理")
asiafood_7 = asiafood.children.create(name: "アジア・エスニック（その他）")

#焼肉・ホルモン
yakiniku = Genre.create(name: "焼肉・ホルモン")
yakiniku_1 = yakiniku.children.create(name: "焼肉・ホルモン")
yakiniku_2 = yakiniku.children.create(name: "ジンギスカン")

#鍋
nabe = Genre.create(name: "鍋")
nabe_1 = nabe.children.create(name: "うどんすき")
nabe_2 = nabe.children.create(name: "もつ鍋")
nabe_3 = nabe.children.create(name: "水炊き")
nabe_4 = nabe.children.create(name: "ちりとり鍋・てっちゃん鍋")
nabe_5 = nabe.children.create(name: "中国鍋・火鍋")
nabe_6 = nabe.children.create(name: "ちゃんこ鍋")
nabe_7 = nabe.children.create(name: "韓国鍋")
nabe_8 = nabe.children.create(name: "タイスキ")
nabe_9 = nabe.children.create(name: "鍋（その他）")

#居酒屋・ダイニングバー
izakaya = Genre.create(name: "居酒屋・ダイニングバー")
izakaya_1 = izakaya.children.create(name: "居酒屋")
izakaya_2 = izakaya.children.create(name: "ダイニングバー")
izakaya_3 = izakaya.children.create(name: "居酒屋・ダイニングバー（その他）")

#創作料理・無国籍料理
sousaku = Genre.create(name: "創作料理・無国籍料理")
sousaku_1 = sousaku.children.create(name: "創作料理")
sousaku_2 = sousaku.children.create(name: "イノベーティブ・フュージョン")
sousaku_3 = sousaku.children.create(name: "無国籍料理")

#レストラン
restaurant = Genre.create(name: "レストラン")
restaurant_1 = restaurant.children.create(name: "定食・食堂")
restaurant_2 = restaurant.children.create(name: "レストラン（その他）")

#カフェ・喫茶店
cafe = Genre.create(name: "カフェ")
cafe_1 = cafe.children.create(name: "カフェ")
cafe_2 = cafe.children.create(name: "喫茶店")

#スイーツ
sweets = Genre.create(name: "スイーツ")
sweets_1 = sweets.children.create(name: "洋菓子")
sweets_2 = sweets.children.create(name: "和菓子・甘味処")
sweets_3 = sweets.children.create(name: "中華菓子")
sweets_4 = sweets.children.create(name: "スイーツ（その他）")

#バー・ビアバー
bar = Genre.create(name: "バー")
bar_1 = bar.children.create(name: "バー")
bar_2 = bar.children.create(name: "ビアバー")
bar_3 = bar.children.create(name: "スポーツバー")
bar_4 = bar.children.create(name: "日本酒バー")
bar_5 = bar.children.create(name: "焼酎バー")

#パブ
pub = Genre.create(name: "パブ")
pub_1 = pub.children.create(name: "パブ")

#ラウンジ
lounge = Genre.create(name: "ラウンジ")
lounge_1 = lounge.children.create(name: "ラウンジ")

#旅館
ryokan = Genre.create(name: "旅館")
ryokan_1 = ryokan.children.create(name: "旅館")

#オーベルジュ
auberge = Genre.create(name: "オーベルジュ")
auberge_1 = auberge.children.create(name: "オーベルジュ")

#北海道
hokkaidou = Place.create(name: "北海道")
hokkaidou_1 = hokkaidou.children.create(name: "札幌市")
hokkaidou_2 = hokkaidou.children.create(name: "旭川・富良野・士別")
hokkaidou_3 = hokkaidou.children.create(name: "函館・松前・檜山")
hokkaidou_4 = hokkaidou.children.create(name: "小樽・ニセコ・積丹")
hokkaidou_5 = hokkaidou.children.create(name: "千歳・石狩・夕張・深川")
hokkaidou_6 = hokkaidou.children.create(name: "洞爺・苫小牧・室蘭・えりも")
hokkaidou_7 = hokkaidou.children.create(name: "稚内・留萌・音威子府")
hokkaidou_8 = hokkaidou.children.create(name: "網走・知床斜里・北見・紋別")
hokkaidou_9 = hokkaidou.children.create(name: "帯広・十勝")
hokkaidou_10 = hokkaidou.children.create(name: "釧路・根室・阿寒・摩周・知床羅臼")

#青森県
aomori = Place.create(name: "青森県")
aomori_1 = aomori.children.create(name: "青森・東津軽・八甲田山")
aomori_2 = aomori.children.create(name: "弘前・黒石・中津軽・南津軽")
aomori_3 = aomori.children.create(name: "八戸・三沢・十和田")
aomori_4 = aomori.children.create(name: "むつ・下北半島")
aomori_5 = aomori.children.create(name: "西津軽・北津軽・五所川原")

#岩手県
iwate = Place.create(name: "岩手県")
iwate_1 = iwate.children.create(name: "盛岡・雫石")
iwate_2 = iwate.children.create(name: "花巻・北上・遠野")
iwate_3 = iwate.children.create(name: "一関・平泉・奥州")
iwate_4 = iwate.children.create(name: "三陸海岸沿岸")
iwate_5 = iwate.children.create(name: "八幡平・二戸")

#宮城県
miyagi = Place.create(name: "宮城県")
miyagi_1 = miyagi.children.create(name: "仙台市")
miyagi_2 = miyagi.children.create(name: "蔵王・白石・名取")
miyagi_3 = miyagi.children.create(name: "大崎・栗原・登米")
miyagi_4 = miyagi.children.create(name: "松島・塩釜・南三陸")

#秋田県
akita = Place.create(name: "秋田県")
akita_1 = akita.children.create(name: "秋田市")
akita_2 = akita.children.create(name: "大館・鹿角")
akita_3 = akita.children.create(name: "能代・男鹿半島・八郎潟")
akita_4 = akita.children.create(name: "田沢湖・角館・大曲")
akita_5 = akita.children.create(name: "横手・湯沢")
akita_6 = akita.children.create(name: "由利本荘・象潟")

#山形県
yamagata = Place.create(name: "山形県")
yamagata_1 = yamagata.children.create(name: "山形・上山")
yamagata_2 = yamagata.children.create(name: "米沢・白布・南陽")
yamagata_3 = yamagata.children.create(name: "庄内平野・出羽三山・鳥海山")
yamagata_4 = yamagata.children.create(name: "新庄・最上")
yamagata_5= yamagata.children.create(name: "天童・寒河江・尾花沢")

#福島県
fukusima = Place.create(name: "福島県")
fukusima_1 = fukusima.children.create(name: "福島・二本松")
fukusima_2 = fukusima.children.create(name: "郡山・三春")
fukusima_3 = fukusima.children.create(name: "白河")
fukusima_4 = fukusima.children.create(name: "いわき・相馬")
fukusima_5= fukusima.children.create(name: "会津若松周辺")
fukusima_6= fukusima.children.create(name: "佐賀喜多方・西会津・只見県")
fukusima_7= fukusima.children.create(name: "南会津")

#茨城県
ibaraki = Place.create(name: "茨城県")
ibaraki_1 = ibaraki.children.create(name: "水戸・笠間")
ibaraki_2 = ibaraki.children.create(name: "つくば・土浦・石岡")
ibaraki_3 = ibaraki.children.create(name: "守谷・取手・牛久・稲敷")
ibaraki_4 = ibaraki.children.create(name: "鹿島・水郷周辺")
ibaraki_5= ibaraki.children.create(name: "北茨城・奥久慈周辺")
ibaraki_6= ibaraki.children.create(name: "常総・古河")

#栃木県
tochigi = Place.create(name: "栃木県")
tochigi_1 = tochigi.children.create(name: "宇都宮・鹿沼")
tochigi_2 = tochigi.children.create(name: "日光・鬼怒川")
tochigi_3 = tochigi.children.create(name: "真岡・益子・烏山")
tochigi_4 = tochigi.children.create(name: "那須・塩原")
tochigi_5= tochigi.children.create(name: "小山・佐野・栃木")

#東京都
tokyo = Place.create(name: "東京都")
tokyo_1 = tokyo.children.create(name: "銀座・新橋・有楽町")
tokyo_2 = tokyo.children.create(name: "東京・日本橋")
tokyo_3 = tokyo.children.create(name: "渋谷・恵比寿・代官山")
tokyo_4 = tokyo.children.create(name: "新宿・代々木・大久保")
tokyo_5 = tokyo.children.create(name: "池袋～高田馬場・早稲田")
tokyo_6 = tokyo.children.create(name: "原宿・表参道・青山")
tokyo_7 = tokyo.children.create(name: "六本木・麻布・広尾")
tokyo_8 = tokyo.children.create(name: "赤坂・永田町・溜池")
tokyo_9 = tokyo.children.create(name: "四ツ谷・市ヶ谷・飯田橋")
tokyo_10 = tokyo.children.create(name: "秋葉原・神田・水道橋")
tokyo_11 = tokyo.children.create(name: "上野・浅草・日暮里")
tokyo_12 = tokyo.children.create(name: "両国・錦糸町・小岩")
tokyo_13 = tokyo.children.create(name: "築地・湾岸・お台場")
tokyo_14 = tokyo.children.create(name: "浜松町・田町・品川")
tokyo_15 = tokyo.children.create(name: "大井・蒲田")
tokyo_16 = tokyo.children.create(name: "目黒・白金・五反田")
tokyo_17 = tokyo.children.create(name: "東急沿線")
tokyo_18 = tokyo.children.create(name: "京王・小田急沿線")
tokyo_19 = tokyo.children.create(name: "中野～西荻窪")
tokyo_20 = tokyo.children.create(name: "吉祥寺・三鷹・武蔵境")
tokyo_21 = tokyo.children.create(name: "西武沿線")
tokyo_22 = tokyo.children.create(name: "板橋・東武沿線")
tokyo_23 = tokyo.children.create(name: "大塚・巣鴨・駒込・赤羽")
tokyo_24 = tokyo.children.create(name: "千住・綾瀬・葛飾")
tokyo_25 = tokyo.children.create(name: "小金井・国分寺・国立")
tokyo_26 = tokyo.children.create(name: "調布・府中・狛江")
tokyo_27 = tokyo.children.create(name: "町田・稲城・多摩")
tokyo_28 = tokyo.children.create(name: "西東京市周辺")
tokyo_29 = tokyo.children.create(name: "立川市・八王子市周辺")
tokyo_30 = tokyo.children.create(name: "福生・青梅周辺")
tokyo_31 = tokyo.children.create(name: "伊豆諸島・小笠原")

#群馬県
gunma = Place.create(name: "群馬県")
gunma_1 = gunma.children.create(name: "前橋・高崎")
gunma_2 = gunma.children.create(name: "桐生・伊勢崎・太田・館林")
gunma_3 = gunma.children.create(name: "沼田・みなかみ・尾瀬・赤城")
gunma_4 = gunma.children.create(name: "渋川・伊香保・草津・吾妻")
gunma_5 = gunma.children.create(name: "富岡・藤岡・安中")

#埼玉県
saitama = Place.create(name: "埼玉県")
saitama_1 = saitama.children.create(name: "さいたま市")
saitama_2 = saitama.children.create(name: "川口・越谷・春日部・三郷")
saitama_3 = saitama.children.create(name: "和光・新座・志木・川越")
saitama_4 = saitama.children.create(name: "上尾・久喜・行田")
saitama_5 = saitama.children.create(name: "熊谷・本庄・東松山・寄居")
saitama_6 = saitama.children.create(name: "所沢・飯能")
saitama_7 = saitama.children.create(name: "秩父・長瀞")

#千葉県
chiba = Place.create(name: "千葉県")
chiba_1 = chiba.children.create(name: "千葉市")
chiba_2 = chiba.children.create(name: "船橋・市川・浦安")
chiba_3 = chiba.children.create(name: "柏・松戸")
chiba_4 = chiba.children.create(name: "成田・佐倉・佐原")
chiba_5 = chiba.children.create(name: "銚子・九十九里")
chiba_6 = chiba.children.create(name: "市原・木更津・富津")
chiba_7 = chiba.children.create(name: "勝浦・鴨川・館山")

#神奈川県
kanagawa = Place.create(name: "神奈川県")
kanagawa_1 = kanagawa.children.create(name: "横浜市")
kanagawa_2 = kanagawa.children.create(name: "鎌倉・湘南")
kanagawa_3 = kanagawa.children.create(name: "川崎市")
kanagawa_4 = kanagawa.children.create(name: "横須賀・逗子・葉山・三浦")
kanagawa_5 = kanagawa.children.create(name: "相模原・大和周辺")
kanagawa_6 = kanagawa.children.create(name: "海老名・厚木周辺")
kanagawa_7 = kanagawa.children.create(name: "小田原周辺")
kanagawa_8 = kanagawa.children.create(name: "箱根・湯河原")

#新潟県
niigata = Place.create(name: "新潟県")
niigata_1 = niigata.children.create(name: "新潟・三条・佐渡")
niigata_2 = niigata.children.create(name: "長岡・柏崎")
niigata_3 = niigata.children.create(name: "上越・糸魚川・妙高")
niigata_4 = niigata.children.create(name: "魚沼・十日町・湯沢")
niigata_5 = niigata.children.create(name: "五泉・新発田・村上")

#富山県
toyama = Place.create(name: "富山県")
toyama_1 = toyama.children.create(name: "富山")
toyama_2 = toyama.children.create(name: "黒部・魚津周辺・下新川")
toyama_3 = toyama.children.create(name: "中新川")
toyama_4 = toyama.children.create(name: "大崎・栗原・登米")
toyama_5 = toyama.children.create(name: "高岡・氷見")

#石川県
ishikawa = Place.create(name: "石川県")
ishikawa_1 = ishikawa.children.create(name: "金沢")
ishikawa_2 = ishikawa.children.create(name: "加賀・白山")
ishikawa_3 = ishikawa.children.create(name: "能登南部")
ishikawa_4 = ishikawa.children.create(name: "能登北部")

#福井県
fukui = Place.create(name: "福井県")
fukui_1 = fukui.children.create(name: "福井・芦原・永平寺")
fukui_2 = fukui.children.create(name: "武生・鯖江周辺")
fukui_3 = fukui.children.create(name: "敦賀・若狭周辺")
fukui_4 = fukui.children.create(name: "大野・勝山")

#山梨県
yamanashi = Place.create(name: "山梨県")
yamanashi_1 = yamanashi.children.create(name: "甲府・山梨・笛吹")
yamanashi_2 = yamanashi.children.create(name: "北杜・小淵沢・南アルプス")
yamanashi_3 = yamanashi.children.create(name: "富士五湖・忍野・富士吉田")
yamanashi_4 = yamanashi.children.create(name: "身延・下部温泉")
yamanashi_5 = yamanashi.children.create(name: "大月・都留・道志")

#長野県
nagano = Place.create(name: "長野県")
nagano_1 = nagano.children.create(name: "長野・志賀高原・北信濃")
nagano_2 = nagano.children.create(name: "松本・美ヶ原・上高地")
nagano_3 = nagano.children.create(name: "軽井沢・佐久")
nagano_4 = nagano.children.create(name: "上田・小諸・蓼科・諏訪")
nagano_5 = nagano.children.create(name: "安曇野・白馬")
nagano_6 = nagano.children.create(name: "南信州")
nagano_7 = nagano.children.create(name: "木曽路")

#岐阜県
gifu = Place.create(name: "岐阜県")
gifu_1 = gifu.children.create(name: "岐阜・大垣・揖斐川")
gifu_2 = gifu.children.create(name: "美濃加茂・郡上")
gifu_3 = gifu.children.create(name: "多治見・恵那・中津川")
gifu_4 = gifu.children.create(name: "高山・飛騨・下呂・白川")

#静岡県
shizuoka = Place.create(name: "静岡県")
shizuoka_1 = shizuoka.children.create(name: "静岡市（静岡・清水）")
shizuoka_2 = shizuoka.children.create(name: "浜松・掛川・磐田")
shizuoka_3 = shizuoka.children.create(name: "焼津・藤枝・御前崎")
shizuoka_4 = shizuoka.children.create(name: "富士山周辺")
shizuoka_5 = shizuoka.children.create(name: "沼津・伊豆半島")

#愛知県
aichi = Place.create(name: "愛知県")
aichi_1 = aichi.children.create(name: "名古屋市")
aichi_2 = aichi.children.create(name: "一宮・稲沢・愛西")
aichi_3 = aichi.children.create(name: "犬山・瀬戸・愛知郡")
aichi_4 = aichi.children.create(name: "大府・常滑・知多")
aichi_5 = aichi.children.create(name: "豊田・岡崎・西尾")
aichi_6 = aichi.children.create(name: "田原・豊橋・新城")

#三重県
mie = Place.create(name: "三重県")
mie_1 = mie.children.create(name: "津・松阪")
mie_2 = mie.children.create(name: "四日市・鈴鹿・亀山")
mie_3 = mie.children.create(name: "伊勢・志摩・鳥羽")
mie_4 = mie.children.create(name: "伊賀")
mie_5 = mie.children.create(name: "熊野・尾鷲")

#滋賀県
shiga = Place.create(name: "滋賀県")
shiga_1 = shiga.children.create(name: "大津市")
shiga_2 = shiga.children.create(name: "甲賀・湖南")
shiga_3 = shiga.children.create(name: "湖東")
shiga_4 = shiga.children.create(name: "湖北")
shiga_5 = shiga.children.create(name: "湖西")

#京都府
kyoto = Place.create(name: "京都府")
kyoto_1 = kyoto.children.create(name: "京都市")
kyoto_2 = kyoto.children.create(name: "宇治・南山城")
kyoto_3 = kyoto.children.create(name: "亀岡・丹波・福知山")
kyoto_4 = kyoto.children.create(name: "天橋立・丹後半島")

#大阪府
osaka = Place.create(name: "大阪府")
osaka_1 = osaka.children.create(name: "大阪市")
osaka_2 = osaka.children.create(name: "堺・泉南")
osaka_3 = osaka.children.create(name: "豊中・池田・高槻")
osaka_4 = osaka.children.create(name: "北河内・東大阪")
osaka_5 = osaka.children.create(name: "南河内")

#兵庫県
hyogo = Place.create(name: "兵庫県")
hyogo_1 = hyogo.children.create(name: "神戸市")
hyogo_2 = hyogo.children.create(name: "宝塚・西宮・尼崎")
hyogo_3 = hyogo.children.create(name: "明石・東播磨・北播磨")
hyogo_4 = hyogo.children.create(name: "姫路・中播磨・西播磨")
hyogo_5 = hyogo.children.create(name: "淡路島")
hyogo_6 = hyogo.children.create(name: "丹波篠山")
hyogo_7 = hyogo.children.create(name: "城崎・山陰海岸・但馬山地")

#奈良県
nara = Place.create(name: "奈良県")
nara_1 = nara.children.create(name: "奈良市")
nara_2 = nara.children.create(name: "生駒・大和郡山")
nara_3 = nara.children.create(name: "橿原・御所・飛鳥")
nara_4 = nara.children.create(name: "天理・宇陀・山の辺")
nara_5 = nara.children.create(name: "五條・吉野山・大峰")

#和歌山県
wakayama = Place.create(name: "和歌山県")
wakayama_1 = wakayama.children.create(name: "和歌山・高野山下")
wakayama_2 = wakayama.children.create(name: "海南・有田路")
wakayama_3 = wakayama.children.create(name: "御坊・みなべ")
wakayama_4 = wakayama.children.create(name: "白浜・田辺")
wakayama_5 = wakayama.children.create(name: "新宮・串本・勝浦")

#鳥取県
tottori = Place.create(name: "鳥取県")
tottori_1 = tottori.children.create(name: "鳥取市・鳥取県東部")
tottori_2 = tottori.children.create(name: "倉吉・三朝周辺")
tottori_3 = tottori.children.create(name: "米子・境港・大山周辺")

#島根県
shimane = Place.create(name: "島根県")
shimane_1 = shimane.children.create(name: "松江・安来周辺")
shimane_2 = shimane.children.create(name: "出雲周辺・奥出雲")
shimane_3 = shimane.children.create(name: "浜田・江津・大田周辺")
shimane_4 = shimane.children.create(name: "益田・津和野周辺")
shimane_5 = shimane.children.create(name: "隠岐の島々")

#岡山県
okayama = Place.create(name: "岡山県")
okayama_1 = okayama.children.create(name: "岡山・吉備")
okayama_2 = okayama.children.create(name: "倉敷・笠岡・井原")
okayama_3 = okayama.children.create(name: "高梁・蒜山高原")
okayama_4 = okayama.children.create(name: "津山・奥津・美作")
okayama_5 = okayama.children.create(name: "牛窓・備前")

#広島県
hiroshima = Place.create(name: "広島県")
hiroshima_1 = hiroshima.children.create(name: "広島市")
hiroshima_2 = hiroshima.children.create(name: "福山市")
hiroshima_3 = hiroshima.children.create(name: "尾道市")
hiroshima_4 = hiroshima.children.create(name: "東広島市")
hiroshima_5 = hiroshima.children.create(name: "呉・竹原・三原")
hiroshima_6 = hiroshima.children.create(name: "宮島・廿日市・大竹")
hiroshima_7 = hiroshima.children.create(name: "三次・庄原")
hiroshima_8 = hiroshima.children.create(name: "芸北・三段峡")

#山口県
yamaguchi = Place.create(name: "山口県")
yamaguchi_1 = yamaguchi.children.create(name: "山口・防府")
yamaguchi_2 = yamaguchi.children.create(name: "下関")
yamaguchi_3 = yamaguchi.children.create(name: "萩・長門")
yamaguchi_4 = yamaguchi.children.create(name: "周南")
yamaguchi_5 = yamaguchi.children.create(name: "岩国・柳井")
yamaguchi_6 = yamaguchi.children.create(name: "宇部・小野田")

#徳島県
tokushima = Place.create(name: "徳島県")
tokushima_1 = tokushima.children.create(name: "徳島・鳴門")
tokushima_2 = tokushima.children.create(name: "阿南・日和佐")
tokushima_3 = tokushima.children.create(name: "阿波・美馬")
tokushima_4 = tokushima.children.create(name: "三好")

#香川県
kagawa = Place.create(name: "香川県")
kagawa_1 = kagawa.children.create(name: "高松")
kagawa_2 = kagawa.children.create(name: "坂出・丸亀・塩飽諸島")
kagawa_3 = kagawa.children.create(name: "観音寺・琴平周辺")
kagawa_4 = kagawa.children.create(name: "さぬき・東かがわ")
kagawa_5 = kagawa.children.create(name: "小豆島")

#愛媛県
ehime = Place.create(name: "愛媛県")
ehime_1 = ehime.children.create(name: "松山・伊予")
ehime_2 = ehime.children.create(name: "今治・新居浜・しまなみ海道")
ehime_3 = ehime.children.create(name: "大洲・内子・久万")
ehime_4 = ehime.children.create(name: "和島・愛南")

#高知県
kouchi = Place.create(name: "高知県")
kouchi_1 = kouchi.children.create(name: "高知・南国・嶺北")
kouchi_2 = kouchi.children.create(name: "安芸・室戸岬")
kouchi_3 = kouchi.children.create(name: "土佐・横浪")
kouchi_4 = kouchi.children.create(name: "四万十川流域・足摺岬")

#福岡県
hukuoka = Place.create(name: "福岡県")
hukuoka_1 = hukuoka.children.create(name: "福岡市")
hukuoka_2 = hukuoka.children.create(name: "太宰府・宗像・糟屋郡")
hukuoka_3 = hukuoka.children.create(name: "北九州市")
hukuoka_4 = hukuoka.children.create(name: "北九州市周辺")
hukuoka_5 = hukuoka.children.create(name: "筑豊")
hukuoka_6 = hukuoka.children.create(name: "久留米・筑後")
hukuoka_7 = hukuoka.children.create(name: "糸島")

#佐賀県
saga = Place.create(name: "佐賀県")
saga_1 = saga.children.create(name: "佐賀・鳥栖")
saga_2 = saga.children.create(name: "唐津・伊万里・有田")
saga_3 = saga.children.create(name: "武雄・多久・小城")
saga_4 = saga.children.create(name: "嬉野・鹿島")

#長崎県
nagasaki = Place.create(name: "長崎県")
nagasaki_1 = nagasaki.children.create(name: "長崎・西彼杵")
nagasaki_2 = nagasaki.children.create(name: "佐世保・平戸")
nagasaki_3 = nagasaki.children.create(name: "雲仙・島原")
nagasaki_4 = nagasaki.children.create(name: "諫早・大村")
nagasaki_5 = nagasaki.children.create(name: "五島・壱岐・対馬")

#熊本県
kumamoto = Place.create(name: "熊本県")
kumamoto_1 = kumamoto.children.create(name: "熊本周辺・宇土・山都")
kumamoto_2 = kumamoto.children.create(name: "阿蘇")
kumamoto_3 = kumamoto.children.create(name: "菊池・山鹿・玉名")
kumamoto_4 = kumamoto.children.create(name: "八代・水俣・人吉")
kumamoto_5 = kumamoto.children.create(name: "天草")

#大分県
oita = Place.create(name: "大分県")
oita_1 = oita.children.create(name: "大分・竹田・臼杵")
oita_2 = oita.children.create(name: "湯布院・別府")
oita_3 = oita.children.create(name: "国東半島")
oita_4 = oita.children.create(name: "中津・宇佐・日田")

#宮崎県
miyazaki = Place.create(name: "宮崎県")
miyazaki_1 = miyazaki.children.create(name: "宮崎市周辺")
miyazaki_2 = miyazaki.children.create(name: "日南・串間")
miyazaki_3 = miyazaki.children.create(name: "都城・えびの")
miyazaki_4 = miyazaki.children.create(name: "西都・日向・椎葉")
miyazaki_5 = miyazaki.children.create(name: "延岡・高千穂")

#鹿児島県
kagoshima = Place.create(name: "鹿児島県")
kagoshima_1 = kagoshima.children.create(name: "鹿児島・南薩摩")
kagoshima_2 = kagoshima.children.create(name: "薩摩川内・出水・北薩摩")
kagoshima_3 = kagoshima.children.create(name: "伊佐・霧島")
kagoshima_4 = kagoshima.children.create(name: "大隅半島")
kagoshima_5 = kagoshima.children.create(name: "諸島・列島")

#沖縄県
okinawa = Place.create(name: "沖縄県")
okinawa_1 = okinawa.children.create(name: "那覇市")
okinawa_2 = okinawa.children.create(name: "本島北部")
okinawa_3 = okinawa.children.create(name: "本島中部")
okinawa_4 = okinawa.children.create(name: "本島南部")
okinawa_5 = okinawa.children.create(name: "石垣島・宮古島・先島諸島")
okinawa_6 = okinawa.children.create(name: "久米島・慶良間群島")