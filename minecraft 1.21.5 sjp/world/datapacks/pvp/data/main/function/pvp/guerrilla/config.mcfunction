#上級ゲリラ兵の調整用パラメーター（ここの数値だけ書き換えればよい）
#反映：/reload の後、職業を選び直す（または /function main:pvp/guerrilla/config）
#単位：tick = 1/20秒、距離 = ブロック

#銃（sg ショットガン / ak AK47 / gl Garill / p90 SMG / tec Tec9 / rv リボルバー）
#  dmg     1発（1粒）のダメージ        hs      ヘッドショット時のダメージ
#  pellets 1回に出る粒数               range   射程（ブロック）
#  rpm     毎分の発射数（単発銃は連射間隔に換算）
#  spread_c しゃがみ時の拡散角（片側・度×100）  spread_s 立ち時の拡散角（片側・度×100）
#  move    移動中の拡散倍率（×10。10 = 変化なし、20 = 2倍）
#  mag     装弾数                      reload  リロード時間（tick）
#  weight  持っている間の移動速度の増減（-0.15 = 15%遅い、0.1 = 10%速い）
#  far / far_dmg  距離減衰：far ブロックを超えると、ダメージ（ヘッドショット含む）が far_dmg になる（1 = 0.5ハート。far:0 で減衰なし）
data modify storage main:guerrilla param.sg set value {dmg:2,hs:3,pellets:10,range:20,rpm:70,spread_c:1131,spread_s:2180,move:20,mag:5,reload:30,weight:-0.1,far:10,far_dmg:1}
data modify storage main:guerrilla param.ak set value {dmg:3,hs:6,pellets:1,range:40,rpm:600,spread_c:571,spread_s:853,move:40,mag:30,reload:40,weight:-0.15,far:10,far_dmg:1}
data modify storage main:guerrilla param.gl set value {dmg:3,hs:4,pellets:1,range:40,rpm:500,spread_c:571,spread_s:853,move:40,mag:35,reload:40,weight:-0.15,far:10,far_dmg:1}
data modify storage main:guerrilla param.p90 set value {dmg:2,hs:2,pellets:1,range:40,rpm:960,spread_c:571,spread_s:1131,move:15,mag:50,reload:50,weight:0.1,far:10,far_dmg:1}
data modify storage main:guerrilla param.tec set value {dmg:2,hs:3,pellets:1,range:40,rpm:400,spread_c:571,spread_s:571,move:10,mag:20,reload:30,weight:0.15,far:10,far_dmg:1}
data modify storage main:guerrilla param.rv set value {dmg:8,hs:15,pellets:1,range:40,rpm:77,spread_c:286,spread_s:286,move:40,mag:6,reload:50,weight:0.15,far:10,far_dmg:1}

#銃共通
#  hs_radius ヘッドショット判定の半径（目の位置から）   assist アシストとみなす時間（tick）
#  alt_model / alt_color  リロード中・コッキング中の見た目（革の馬鎧の染色色。10進のRGB値）
#  trail_from / trail_size  弾の表示：表示を始める距離（ブロック。手前はクロスヘアにかからないよう出さない）と粒の大きさ
#  whiz_radius  弾がこの距離（ブロック）以内をかすめた敵に風切り音を鳴らす
#  muzzle_fx / shell  発射エフェクト（1 = 閃光と薬莢を出す、0 = 控えめ）と薬莢の見た目のアイテム
#  recoil_smoke  撃ったときに足元から舞う煙の量（0 で出さない）
#  hit_pitch  命中音の高さ（1.0 = 標準。小さいほど低い）  blood  命中時の血の量（粒の数。0 で表示しない）
data modify storage main:guerrilla param.common set value {hs_radius:0.45,assist:140,alt_model:"minecraft:leather_horse_armor",alt_color:4867385,trail_from:3,trail_size:0.6,whiz_radius:2,hit_pitch:0.9,blood:8,muzzle_fx:1,shell:"minecraft:gold_nugget",recoil_smoke:3}


#グレネード：radius 半径 / damage ダメージ
data modify storage main:guerrilla param.grenade set value {radius:4,damage:12}

#頭蓋骨の必要数
data modify storage main:guerrilla param.reward set value {uav:1,bombbow:3,carpet:5,nuke:10}

#UAV：seconds 発光させる秒数
data modify storage main:guerrilla param.uav set value {seconds:10}

#爆撃弓：arrows 矢の本数 / count 爆撃回数 / warn 着弾から1回目までの警告時間（tick） / interval 爆撃の間隔（tick） / radius / damage
data modify storage main:guerrilla param.bombbow set value {arrows:3,count:3,warn:20,interval:10,radius:4,damage:10}

#絨毯爆撃：height 高さ / speed 1tickに進む距離 / duration 飛行時間（tick） / bombs 投下するクリーパーの総数 / radius / damage
data modify storage main:guerrilla param.carpet set value {height:15,speed:0.8,duration:75,bombs:14,radius:4,damage:12}

#内部で使う定数（変更不要）
scoreboard players set #2 GuCalc 2
scoreboard players set #4 GuCalc 4
