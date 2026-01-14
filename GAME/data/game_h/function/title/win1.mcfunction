tellraw @a [{text:"游戏结束！",color:"gold"}]
execute as @a run tellraw @s [{"text":"你的最终得分为: ","color":"yellow"},{"text":" "},{"score":{"name":"@s","objective":"score"},"color":"aqua"}]

effect clear @a[tag=!exclude]
tag @a remove spectator
tp @a 0 1 0
