
#locate&clone
execute as @e[type=minecraft:bat,name=1] at @s run clone -2 1 162 9 5 162 ~ ~ ~
execute as @e[type=minecraft:bat,name=2] at @s run clone -2 1 164 9 5 164 ~ ~ ~
execute as @e[type=minecraft:bat,name=3] at @s run clone -2 1 166 9 5 166 ~ ~ ~
execute as @e[type=minecraft:bat,name=4] at @s run clone -2 1 168 9 5 168 ~ ~ ~
execute as @e[type=minecraft:bat,name=5] at @s run clone -2 1 170 9 5 170 ~ ~ ~
execute as @e[type=minecraft:bat,name=6] at @s run clone -2 1 172 9 5 172 ~ ~ ~
execute as @e[type=minecraft:bat,name=7] at @s run clone -2 1 174 9 5 174 ~ ~ ~
execute as @e[type=minecraft:bat,name=8] at @s run clone -2 1 176 9 5 176 ~ ~ ~
execute as @e[type=minecraft:bat,name=9] at @s run clone -2 1 178 9 5 178 ~ ~ ~
execute as @e[type=minecraft:bat,name=10] at @s run clone -2 1 180 9 5 180 ~ ~ ~

execute as @e[type=minecraft:bat,name=1] at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=2] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=3] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=4] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=5] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=6] at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=7] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=8] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=9] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}
execute as @e[type=minecraft:bat,name=10] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}



#moreprocess
execute as @e[type=armor_stand,tag=this] run scoreboard players set @s life 25
tag @e[type=armor_stand] remove this

execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s life matches 0 run fill ~ ~-1 ~4 ~ ~-1 ~2 minecraft:air
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s life matches 0 run fill ~12 ~15 ~ ~ ~-15 ~2 minecraft:air destroy

#kill
kill @e[type=armor_stand,scores={life=0}]



tp @e[type=minecraft:bat] 0 -100 0
kill @e[type=bat]