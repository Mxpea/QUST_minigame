#loadd
scoreboard objectives remove DISCOUNT
scoreboard objectives add DISCOUNT dummy "倒计时"
scoreboard objectives add settings trigger "设置"
scoreboard objectives add life dummy
scoreboard objectives add reset dummy
scoreboard objectives add random dummy "随机数"

scoreboard players set 1s DISCOUNT 0
scoreboard players set setair3 DISCOUNT 0


#team
team add red "红队"
team add blue "蓝队"
team empty red
team empty blue

tellraw @a [{"text": "[","color": "gold"},{"text": "MINIGAME","color": "green"},{"text": "] ","color": "gold"},{"text": "重载成功","color": "blue"}]

#start
tellraw @a [{"text": "==========","color": "gold"},{"text": "[GAME SETTINGS]","color": "green"},{"text": "==========","color": "gold"}]
tellraw @a [{"text": "==========","color": "gold"},{"text": "[DANGER   ZONE]","color": "red"},{"text": "==========","color": "gold"}]
tellraw @a [{"text": "[kill ARMOR_STAND]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=minecraft:armor_stand]"}}]
tellraw @a [{"text": "==================================","color": "gold"}]