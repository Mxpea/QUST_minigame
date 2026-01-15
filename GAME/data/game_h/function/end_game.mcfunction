
title @a times 10 70 20
execute as @a at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1
title @a title {"text":"游戏结束!","color":"gold","bold":true}
title @a subtitle [{selector:"@a[tag=winner]",color:"yellow"},{"text":"  获胜!","color":"gold"}]
schedule function game_h:title/win1 80
scoreboard players set time DISCOUNT 0
tag @a remove spectator
tag @a remove player
tag @a remove winner
execute positioned 2 35 143 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run kill @s
summon minecraft:glow_item_frame 2.50 35.50 143.97 {Invisible: 0b, ItemDropChance: 1.0f, Item: {id: "minecraft:filled_map", count: 1, components: {"minecraft:map_id": 34}}, OnGround: 0b, Air: 300s, ItemRotation: 0b, block_pos: [I; 2, 35, 143], Invulnerable: 0b, Fixed: 0b, Motion: [0.0d, 0.0d, 0.0d], Rotation: [180.0f, 0.0f], Facing: 2b, Fire: 0s, PortalCooldown: 0, fall_distance: 0.0d}
