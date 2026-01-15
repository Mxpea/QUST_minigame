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
scoreboard objectives add score dummy "得分"

scoreboard players set 1s DISCOUNT 0
scoreboard players set setair3 DISCOUNT 0
scoreboard players set S_button DISCOUNT 0
scoreboard players set cylc DISCOUNT 0
scoreboard players set time_s DISCOUNT 0
scoreboard players set 20 C 20
scoreboard players set effect random 0
scoreboard players set start_delay DISCOUNT 0
scoreboard players set playercount C 0

scoreboard objectives setdisplay sidebar score

title @a times 0 40t 0

gamerule fall_damage false
gamerule fire_damage false
gamerule mob_drops false
gamerule mob_griefing false
gamerule advance_time false

#team
team add red "红队"
team add blue "蓝队"
team add default "无队伍"
team empty red
team empty blue

team join default @a

team modify red color red
team modify blue color blue
team modify red collisionRule never
team modify blue collisionRule never
team modify default collisionRule never

tag @a remove exclude

scoreboard players set time DISCOUNT 0
effect clear @a[tag=!exclude]
tag @a remove spectator
#tp @a 0 1 0


execute positioned 2 35 143 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run kill @s
summon minecraft:glow_item_frame 2.50 35.50 143.97 {Invisible: 0b, ItemDropChance: 1.0f, Item: {id: "minecraft:filled_map", count: 1, components: {"minecraft:map_id": 34}}, OnGround: 0b, Air: 300s, ItemRotation: 0b, block_pos: [I; 2, 35, 143], Invulnerable: 0b, Fixed: 0b, Motion: [0.0d, 0.0d, 0.0d], Rotation: [180.0f, 0.0f], Facing: 2b, Fire: 0s, PortalCooldown: 0, fall_distance: 0.0d}




tellraw @a [{"text": "[","color": "gold"},{"text": "MINIGAME","color": "green"},{"text": "] ","color": "gold"},{"text": "重载成功","color": "blue"}]
tellraw @a [{"text": "[","color": "gold"},{"text": "MINIGAME","color": "green"},{"text": "] ","color": "gold"},{"text": "POWERED BY ","color": "gold"},{"text": "[MMMAPI]","color": "yellow",click_event: {action:"open_url",url:"https://github.com/Mxpea/Mxpea-s-Multiplayer-Motion-API"}}]

#start
#tellraw @a [{"text": "==========","color": "gold"},{"text": "[D  E  B  U  G]","color": "yellow"},{"text": "==========","color": "gold"}]
#tellraw @a [{"text": "[setting]   ","color": "green","click_event": {action:"run_command","command":"/tag @p add start_setting"}}]
#tellraw @a [{"text": "==========","color": "gold"},{"text": "[DANGER   ZONE]","color": "red"},{"text": "==========","color": "gold"}]
#tellraw @a [{"text": "[kill ARMOR_STAND]   ","color":"red","click_event": {action:"run_command","command":"/kill @e[type=minecraft:armor_stand]"}},{"text": "[RUN Load]   ","color":"red","click_event": {action:"run_command","command":"/function #minecraft:load"}}]
#tellraw @a [{"text": "[run push]        ","color":"red","click_event": {action:"run_command","command":"/function game_h:random_main"}},{"text": "[run timer]   ","color":"red","click_event": {action:"run_command","command":"/scoreboard players set start1 settings 1"}}]
#tellraw @a [{"text": "==================================","color": "gold"}]
