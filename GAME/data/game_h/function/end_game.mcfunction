
title @a times 10 70 20
execute as @a at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1
title @a title {"text":"游戏结束!","color":"gold","bold":true}
title @a subtitle [{selector:"@a[tag=!spectator]",color:"yellow"},{"text":"  获胜!","color":"gold"}]
schedule function game_h:title/win1 80
tp @a 0 1 0
scoreboard players set time DISCOUNT 0
tag @a remove spectator