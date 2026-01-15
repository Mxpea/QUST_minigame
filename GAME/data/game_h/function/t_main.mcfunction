
effect give @a minecraft:saturation infinite 1 true


#DEBUG
tellraw @a[tag=debug_h] [{"text": "==========","color": "gold"},{"text": "[D  E  B  U  G]","color": "yellow"},{"text": "==========","color": "gold"}]
tellraw @a[tag=debug_h] [{"text": "[setting]   ","color": "green","click_event": {action:"run_command","command":"/tag @p add start_setting"}}]
tellraw @a[tag=debug_h] [{"text": "==========","color": "gold"},{"text": "[DANGER   ZONE]","color": "red"},{"text": "==========","color": "gold"}]
tellraw @a[tag=debug_h] [{"text": "[kill ARMOR_STAND]   ","color":"red","click_event": {action:"run_command","command":"/kill @e[type=minecraft:armor_stand]"}},{"text": "[RUN Load]   ","color":"red","click_event": {action:"run_command","command":"/function #minecraft:load"}}]
tellraw @a[tag=debug_h] [{"text": "[run push]        ","color":"red","click_event": {action:"run_command","command":"/function game_h:random_main"}},{"text": "[run timer]   ","color":"red","click_event": {action:"run_command","command":"/scoreboard players set start1 settings 1"}}]
tellraw @a[tag=debug_h] [{"text": "==================================","color": "gold"}]
tag @a remove debug_h

#after join
execute as @a[tag=!player] at @s[tag=!spectator] if score time DISCOUNT matches 1.. run tp @s 2.39 33.00 134.67
execute as @a[tag=!player] at @s[tag=!spectator] if score time DISCOUNT matches 1.. run tag @s add spectator



#hacker是笨蛋
#LOCATE&SETBLOCK
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run setblock ~ ~-1 ~1 minecraft:piston
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run setblock ~ ~-1 ~2 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run tp @s ~ ~ ~-1

#execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches 1 run scoreboard players set setair3 DISCOUNT 3


execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches 1 run scoreboard players set @s reset 3
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s reset matches 0 run fill ~ ~-1 ~3 ~ ~-1 ~1 minecraft:air

execute positioned 20 92 -69 if block 20 92 -69 oak_button[powered=true] if score S_button DISCOUNT matches 0 run tag @p add start_setting
execute positioned 20 92 -69 if block 20 92 -69 oak_button[powered=true] if score S_button DISCOUNT matches 0.. run scoreboard players set S_button DISCOUNT 2




#platform
execute if score start1 settings matches 1 run scoreboard players set type platform 1
execute if score start1 settings matches 1 run scoreboard players set time DISCOUNT 3661


execute if score time DISCOUNT matches 3661 run scoreboard players set type platform 1
execute if score time DISCOUNT matches 3601 run scoreboard players set type platform 5

execute if score time DISCOUNT matches 3061 run scoreboard players set type platform 2
execute if score time DISCOUNT matches 3061 as @a at @s run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 10 2
execute if score time DISCOUNT matches 3001..3061 run title @a actionbar [{"text":"平台红色区域将在 ","color":"gold"},{"text":"3","color":"red"},{"text":" 秒后坍塌","color":"gold"}]
execute if score time DISCOUNT matches 3001 run scoreboard players set type platform 5
execute if score time DISCOUNT matches 3001 as @a at @s run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 0.5

execute if score time DISCOUNT matches 1861 run scoreboard players set type platform 3
execute if score time DISCOUNT matches 1861 as @a at @s run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 10 2
execute if score time DISCOUNT matches 1801..1861 run title @a actionbar [{"text":"平台红色区域将在 ","color":"gold"},{"text":"3","color":"red"},{"text":" 秒后坍塌","color":"gold"}]
execute if score time DISCOUNT matches 1801 run scoreboard players set type platform 5
execute if score time DISCOUNT matches 1801 as @a at @s run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 0.5

execute if score time DISCOUNT matches 661 run scoreboard players set type platform 4
execute if score time DISCOUNT matches 661 as @a at @s run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 10 2
execute if score time DISCOUNT matches 601..661 run title @a actionbar [{"text":"平台红色区域将在 ","color":"gold"},{"text":"3","color":"red"},{"text":" 秒后坍塌","color":"gold"}]
execute if score time DISCOUNT matches 601 run scoreboard players set type platform 5
execute if score time DISCOUNT matches 601 as @a at @s run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 0.5


function game_h:platform
scoreboard players set start1 settings 0


#OTHER
scoreboard players enable @a settings
function game_h:fancy_visiual
team join default @a[team=]


##wall
execute if score cylc DISCOUNT matches 1 if score time DISCOUNT matches 1..3661 run function game_h:random_main
execute if score cylc DISCOUNT matches 1 if score time DISCOUNT matches 1..3661 run function game_h:random_effect
execute if score cylc DISCOUNT matches 0 run scoreboard players set cylc DISCOUNT 40


#DISCOUNT
execute if score S_button DISCOUNT matches 1.. run scoreboard players remove S_button DISCOUNT 1
execute if score time DISCOUNT matches 1.. run scoreboard players remove time DISCOUNT 1
execute if score cylc DISCOUNT matches 1.. run scoreboard players remove cylc DISCOUNT 1
scoreboard players operation time_s DISCOUNT = time DISCOUNT
scoreboard players operation time_s DISCOUNT /= 20 C

execute if score time DISCOUNT matches 3062.. run title @a actionbar [{"text":"游戏时间剩余: ","color":"gold"},{"text":""},{"score":{"name":"time_s","objective":"DISCOUNT"},"color":"yellow"},{"text":" 秒","color":"gold"}]
execute if score time DISCOUNT matches 1862..3000 run title @a actionbar [{"text":"游戏时间剩余: ","color":"gold"},{"text":""},{"score":{"name":"time_s","objective":"DISCOUNT"},"color":"yellow"},{"text":" 秒","color":"gold"}]
execute if score time DISCOUNT matches 662..1800 run title @a actionbar [{"text":"游戏时间剩余: ","color":"gold"},{"text":""},{"score":{"name":"time_s","objective":"DISCOUNT"},"color":"yellow"},{"text":" 秒","color":"gold"}]
execute if score time DISCOUNT matches 2..600 run title @a actionbar [{"text":"游戏时间剩余: ","color":"gold"},{"text":""},{"score":{"name":"time_s","objective":"DISCOUNT"},"color":"yellow"},{"text":" 秒","color":"gold"}]
execute if score time DISCOUNT matches 1 run title @a actionbar [{"text":"正在等待场地清空...","color":"gold"}]

#execute if score setair3 DISCOUNT matches 1.. run scoreboard players remove setair3 DISCOUNT 1
execute as @e[type=minecraft:armor_stand] if score @s reset matches 1.. run scoreboard players remove @s reset 1

#execute if score 1s DISCOUNT matches 1.. run scoreboard players remove 1s DISCOUNT 1
execute as @e[type=minecraft:armor_stand] run scoreboard players remove @s DISCOUNT 1
execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches ..0 run scoreboard players remove @s life 1
    #RESET
execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches ..0 run scoreboard players set @s DISCOUNT 5
#execute if score 1s DISCOUNT matches 0 run scoreboard players set 1s DISCOUNT 5


#execute if score tp @s -1 0 128




#faild
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ structure_void run summon lightning_bolt
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ structure_void run tag @s add spectator
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ structure_void run tag @s remove player
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ structure_void run scoreboard players remove @s score 3
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ structure_void run tp @s 2.39 33.00 134.67

#end game
    #时间结束终止游戏
execute if score time DISCOUNT matches 1 run schedule function game_h:end_game 6s
execute if score time DISCOUNT matches 1 run tag @a[tag=player] add winner
    #场上仅剩一人结束
execute store result score playercount C run execute if entity @a[tag=player,limit=2]
execute if score playercount C matches 0 if score time DISCOUNT matches 1.. run function game_h:end_game
execute if score playercount C matches 1 if score time DISCOUNT matches 1.. run tag @a[tag=player] add winner







#???
setblock 2 33 126 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["↑","gay","",""]},is_waxed:0b}
setblock 2 34 125 minecraft:player_head[rotation=8]{profile:{name:"this_hacker"}}




#START
tellraw @a[tag=start_setting] [{"text": "===========","color": "gold"},{"text": "[GAME SETTINGS]","color": "green"},{"text": "===========","color": "gold"}]
tellraw @a[tag=start_setting] [{"text": "[随机分队]   ","color": "green","click_event": {action:"run_command","command":"/trigger settings set 1"}},{"text": "[开始游戏]   ","color": "green","click_event": {action:"run_command","command":"/trigger settings set 2"}},{"text": "[取消分队]","color": "green","click_event": {action:"run_command","command":"/trigger settings set 3"}}]
tellraw @a[tag=start_setting] [{"text": "[加入蓝队]   ","color": "green","click_event": {action:"run_command","command":"/trigger settings set 10"}},{"text": "[加入红队]   ","color": "green","click_event": {action:"run_command","command":"/trigger settings set 11"}},{"text": "[清空得分]","color": "red","click_event": {action:"run_command","command":"/trigger settings set 12"}}]
tellraw @a[tag=start_setting] [{"text": "====================================","color": "gold"}]
tag @a remove start_setting

#run
 #1 随机分队
schedule function game_h:reset 1t replace
execute as @a if score @s settings matches 1 run function game_h:random_team
 #2 开始游戏
execute as @a if score @s settings matches 2 if score playercount C matches 2 run tp @a 4.00 1.00 133.00
execute as @a if score @s settings matches 2 if score playercount C matches 2 run gamemode adventure @a[gamemode=!spectator]
execute as @a if score @s settings matches 2 if score playercount C matches 2 run scoreboard players set start_delay DISCOUNT 61
execute as @a if score @s settings matches 2 if score playercount C matches 2 run place template minecraft:platform_1 -2 0 127
execute as @a if score @s settings matches 2 if score playercount C matches 2 run tag @a remove spectator
execute as @a if score @s settings matches 2 if score playercount C matches 2 run tag @a add player

execute as @a if score @s settings matches 2 if score playercount C matches 1 run tellraw @a [{"text":"无法开始游戏,场上玩家不足2人!","color":"red"}]

  #2.1 title
  execute if score start_delay DISCOUNT matches 61 run title @a title [{"text":"墙壁将在","color":"gold"},{"text":" 3 ","color":"red"},{"text":"秒后推出!","color":"gold"}]
  execute if score start_delay DISCOUNT matches 61 as @a at @s run playsound ui.button.click player @a ~ ~ ~
  execute if score start_delay DISCOUNT matches 41 run title @a title [{"text":"墙壁将在","color":"gold"},{"text":" 2 ","color":"red"},{"text":"秒后推出!","color":"gold"}]
  execute if score start_delay DISCOUNT matches 41 as @a at @s run playsound ui.button.click player @a ~ ~ ~
  execute if score start_delay DISCOUNT matches 21 run title @a title [{"text":"墙壁将在","color":"gold"},{"text":" 1 ","color":"red"},{"text":"秒后推出!","color":"gold"}]
  execute if score start_delay DISCOUNT matches 21 as @a at @s run playsound ui.button.click player @a ~ ~ ~
  execute if score start_delay DISCOUNT matches 1 run title @a title [{"text":"墙壁已经推出!","color":"gold"}]
  execute if score start_delay DISCOUNT matches 1 as @a at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~


execute if score start_delay DISCOUNT matches 1 run scoreboard players set start1 settings 1
execute if score start_delay DISCOUNT matches 1 run effect give @a jump_boost infinite 1 true
  #2.2 DISCOUNT

execute if score start_delay DISCOUNT matches 1.. run scoreboard players remove start_delay DISCOUNT 1

 #3 取消分队
execute as @a if score @s settings matches 3 run team empty blue
execute as @a if score @s settings matches 3 run team empty red
execute as @a if score @s settings matches 3 run team join default @a
 #10 加入蓝队
execute as @a if score @s settings matches 10 run team join blue @s
 #11 加入红队
execute as @a if score @s settings matches 11 run team join red @s
  #12 清空得分
execute as @a if score @s settings matches 12 run tellraw @s [{"text":"[点击此处确认]","color":"yellow","click_event": {action:"run_command","command":"/tag @s add clear_score"}},{"text":" 清空得分后将无法恢复！你确定要这么干吗?  此操作需要管理员权限.","color":"red"}]
execute as @a[tag=clear_score] run scoreboard objectives remove score
execute as @a[tag=clear_score] run scoreboard objectives add score dummy "得分"
execute as @a[tag=clear_score] run scoreboard objectives setdisplay sidebar score
execute as @a[tag=clear_score] run tag @s remove clear_score

scoreboard players set @a settings 0