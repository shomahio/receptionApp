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
cafe_1 = cafe.create(name: "カフェ")
cafe_2 = cafe.create(name: "喫茶店")

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
ryokan_1 = Genre.create(name: "旅館")

#オーベルジュ
auberge = Genre.create(name: "オーベルジュ")
auberge_1 = auberge.children.create(name: "オーベルジュ")


