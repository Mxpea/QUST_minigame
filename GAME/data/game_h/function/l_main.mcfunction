#loadd
#hacker是笨蛋
scoreboard objectives remove DISCOUNT
scoreboard objectives add DISCOUNT dummy "倒计时"
scoreboard objectives add settings trigger "设置"
scoreboard objectives add life dummy
scoreboard objectives add reset dummy
scoreboard objectives add random dummy "随机数"
scoreboard objectives add platform dummy "平台"
scoreboard objectives add C dummy

scoreboard players set 1s DISCOUNT 0
scoreboard players set setair3 DISCOUNT 0
scoreboard players set S_button DISCOUNT 0
scoreboard players set cylc DISCOUNT 0
scoreboard players set time_s DISCOUNT 0
scoreboard players set 20 C 20


#team
team add red "红队"
team add blue "蓝队"
team empty red
team empty blue

team modify red color red
team modify blue color blue
team modify red collisionRule never
team modify blue collisionRule never

tellraw @a [{"text": "[","color": "gold"},{"text": "MINIGAME","color": "green"},{"text": "] ","color": "gold"},{"text": "重载成功","color": "blue"}]

#start
tellraw @a [{"text": "==========","color": "gold"},{"text": "[D  E  B  U  G]","color": "yellow"},{"text": "==========","color": "gold"}]
tellraw @a [{"text": "[setting]   ","color": "green","click_event": {action:"run_command","command":"/tag @p add start_setting"}}]
tellraw @a [{"text": "==========","color": "gold"},{"text": "[DANGER   ZONE]","color": "red"},{"text": "==========","color": "gold"}]
tellraw @a [{"text": "[kill ARMOR_STAND]   ","color":"red","click_event": {action:"run_command","command":"/kill @e[type=minecraft:armor_stand]"}},{"text": "[RUN Load]   ","color":"red","click_event": {action:"run_command","command":"/function #minecraft:load"}}]
tellraw @a [{"text": "[run push]        ","color":"red","click_event": {action:"run_command","command":"/function game_h:random_main"}},{"text": "[run timer]   ","color":"red","click_event": {action:"run_command","command":"/scoreboard players set start1 settings 1"}}]
tellraw @a [{"text": "==================================","color": "gold"}]
