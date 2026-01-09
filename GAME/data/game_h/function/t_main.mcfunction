

#LOCATE&SETBLOCK
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run setblock ~ ~-1 ~1 minecraft:piston
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run setblock ~ ~-1 ~2 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s DISCOUNT matches 1 run tp @s ~ ~ ~-1

#execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches 1 run scoreboard players set setair3 DISCOUNT 3


execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches 1 run scoreboard players set @s reset 3
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s reset matches 0 run fill ~ ~-1 ~3 ~ ~-1 ~1 minecraft:air








#OTHER
scoreboard players enable @a settings


#DISCOUNT
#execute if score setair3 DISCOUNT matches 1.. run scoreboard players remove setair3 DISCOUNT 1
execute as @e[type=minecraft:armor_stand] if score @s reset matches 1.. run scoreboard players remove @s reset 1

#execute if score 1s DISCOUNT matches 1.. run scoreboard players remove 1s DISCOUNT 1
execute as @e[type=minecraft:armor_stand] run scoreboard players remove @s DISCOUNT 1
execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches ..0 run scoreboard players remove @s life 1
    #RESET
execute as @e[type=minecraft:armor_stand] if score @s DISCOUNT matches ..0 run scoreboard players set @s DISCOUNT 5
#execute if score 1s DISCOUNT matches 0 run scoreboard players set 1s DISCOUNT 5