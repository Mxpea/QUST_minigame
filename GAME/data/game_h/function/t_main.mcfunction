

#LOCATE&SETBLOCK
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run setblock ~ ~-1 ~1 minecraft:piston
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run setblock ~ ~-1 ~2 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run tp @s ~ ~ ~-1

#execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches 1 run scoreboard players set setair3 DISCOUNT 3


execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches 1 run scoreboard players set @s reset 3
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s reset matches 0 run fill ~ ~-1 ~3 ~ ~-1 ~1 minecraft:air

execute positioned 0 2 2 if block 0 2 2 oak_button[powered=true] if score S_button DISCOUNT matches 0 run tag @p add start_setting
execute positioned 0 2 2 if block 0 2 2 oak_button[powered=true] if score S_button DISCOUNT matches 0.. run scoreboard players set S_button DISCOUNT 2




#platform
execute if score start1 settings matches 1 run scoreboard players set type platform 1
execute if score start1 settings matches 1 run scoreboard players set time DISCOUNT 3600
function game_h:platform
scoreboard players set start1 settings 0


#OTHER
scoreboard players enable @a settings


#DISCOUNT
execute if score S_button DISCOUNT matches 1.. run scoreboard players remove S_button DISCOUNT 1


#execute if score setair3 DISCOUNT matches 1.. run scoreboard players remove setair3 DISCOUNT 1
execute as @e[type=minecraft:armor_stand] if score @s reset matches 1.. run scoreboard players remove @s reset 1

#execute if score 1s DISCOUNT matches 1.. run scoreboard players remove 1s DISCOUNT 1
execute as @e[type=minecraft:armor_stand] run scoreboard players remove @s DISCOUNT 1
execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches ..0 run scoreboard players remove @s life 1
    #RESET
execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches ..0 run scoreboard players set @s DISCOUNT 5
#execute if score 1s DISCOUNT matches 0 run scoreboard players set 1s DISCOUNT 5


#execute if score tp @s -1 0 128



















#START
tellraw @a[tag=start_setting] [{"text": "===========","color": "gold"},{"text": "[GAME SETTINGS]","color": "green"},{"text": "===========","color": "gold"}]
tellraw @a[tag=start_setting] [{"text": "[随机分队]   ","color": "green","click_event": {action:"run_command","command":"/trigger settings set 1"}},{"text": "[开始游戏]   ","color": "green","click_event": {action:"run_command","command":"/trigger settings set 2"}},{"text": "[取消分队]","color": "green","click_event": {action:"run_command","command":"/trigger settings set 3"}}]
tellraw @a[tag=start_setting] [{"text": "[加入蓝队]   ","color": "green","click_event": {action:"run_command","command":"/trigger settings set 10"}},{"text": "[加入红队]","color": "green","click_event": {action:"run_command","command":"/trigger settings set 11"}}]
tellraw @a[tag=start_setting] [{"text": "====================================","color": "gold"}]
tag @a remove start_setting

#run
 #1 随机分队
schedule function game_h:reset 1t replace
execute as @a if score @s settings matches 1 run function game_h:random_team
 #2 开始游戏
execute as @a if score @s settings matches 2 run tp @s 4.00 1.00 133.00
 #3 取消分队
execute as @a if score @s settings matches 3 run team empty blue
execute as @a if score @s settings matches 3 run team empty red
 #10 加入蓝队
execute as @a if score @s settings matches 10 run team join blue @s
 #11 加入红队
execute as @a if score @s settings matches 11 run team join red @s


scoreboard players set @a settings 0