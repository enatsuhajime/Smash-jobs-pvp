#毎tick（ゲリラ兵・回復スナイパーの処理の最後に呼ぶ）
execute store result score #now SdCalc run time query gametime
#前のtickで下げた最大体力を戻す（体力はプレイヤーのtickで既に切り詰められている）
execute as @a[tag=SdCut] unless score @s SdCutT = #now SdCalc run function main:pvp/silent_damage/restore
#このtickの合計ダメージを反映する：最大体力を「今の体力 − 合計」まで一時的に下げる
execute as @a[tag=SdPending] run function main:pvp/silent_damage/apply
