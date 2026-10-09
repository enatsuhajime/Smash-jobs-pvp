#後片付け（試合終了時など）：全員の一時的な最大体力の変更を戻す
execute as @a[tag=SdCut] run function main:pvp/silent_damage/restore
execute as @a[tag=SdPending] run function main:pvp/silent_damage/restore
tag @a remove SdPending
