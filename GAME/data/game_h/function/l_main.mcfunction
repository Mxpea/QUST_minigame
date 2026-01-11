#loadd
scoreboard objectives remove DISCOUNT
scoreboard objectives add DISCOUNT dummy "倒计时"
scoreboard objectives add settings trigger "设置"
scoreboard objectives add life dummy
scoreboard objectives add reset dummy
scoreboard objectives add random dummy "随机数"
scoreboard objectives add platform dummy "平台"

scoreboard players set 1s DISCOUNT 0
scoreboard players set setair3 DISCOUNT 0
scoreboard players set S_button DISCOUNT 0


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
tellraw @a [{"text": "[kill ARMOR_STAND]   ","color":"red","click_event": {action:"run_command","command":"/kill @e[type=minecraft:armor_stand]"}},{"text": "[RUN Load]","color":"red","click_event": {action:"run_command","command":"/function #minecraft:load"}}]
tellraw @a [{"text": "==================================","color": "gold"}]