
#locate&clone
execute as @e[type=minecraft:bat,name=1] at @s run clone -2 1 162 9 5 162 ~ ~ ~
execute as @e[type=minecraft:bat,name=1] at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=2] at @s run clone -2 1 164 9 5 164 ~ ~ ~
execute as @e[type=minecraft:bat,name=2] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=3] at @s run clone -2 1 166 9 5 166 ~ ~ ~
execute as @e[type=minecraft:bat,name=3] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=4] at @s run clone -2 1 168 9 5 168 ~ ~ ~
execute as @e[type=minecraft:bat,name=4] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=5] at @s run clone -2 1 170 9 5 170 ~ ~ ~
execute as @e[type=minecraft:bat,name=5] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=6] at @s run clone -2 1 172 9 5 172 ~ ~ ~
execute as @e[type=minecraft:bat,name=6] at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=7] at @s run clone -2 1 174 9 5 174 ~ ~ ~
execute as @e[type=minecraft:bat,name=7] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=8] at @s run clone -2 1 176 9 5 176 ~ ~ ~
execute as @e[type=minecraft:bat,name=8] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=9] at @s run clone -2 1 178 9 5 178 ~ ~ ~
execute as @e[type=minecraft:bat,name=9] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=10] at @s run clone -2 1 180 9 5 180 ~ ~ ~
execute as @e[type=minecraft:bat,name=10] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=11] at @s run clone -2 1 182 9 5 182 ~ ~ ~
execute as @e[type=minecraft:bat,name=11] at @s run summon minecraft:armor_stand ~3 ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=12] at @s run clone -2 1 184 9 5 184 ~ ~ ~
execute as @e[type=minecraft:bat,name=12] at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=13] at @s run clone -2 1 186 9 5 186 ~ ~ ~
execute as @e[type=minecraft:bat,name=13] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=14] at @s run clone -2 1 188 9 5 188 ~ ~ ~
execute as @e[type=minecraft:bat,name=14] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=15] at @s run clone -2 1 190 9 5 190 ~ ~ ~
execute as @e[type=minecraft:bat,name=15] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=16] at @s run clone -2 1 192 9 5 192 ~ ~ ~
execute as @e[type=minecraft:bat,name=16] at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=17] at @s run clone -2 1 194 9 5 194 ~ ~ ~
execute as @e[type=minecraft:bat,name=17] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=18] at @s run clone -2 1 196 9 5 196 ~ ~ ~
execute as @e[type=minecraft:bat,name=18] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=19] at @s run clone -2 1 198 9 5 198 ~ ~ ~
execute as @e[type=minecraft:bat,name=19] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}

execute as @e[type=minecraft:bat,name=20] at @s run clone -2 1 200 9 5 200 ~ ~ ~
execute as @e[type=minecraft:bat,name=20] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["poz1","this"],NoGravity:true,Invisible:true}


#moreprocess
execute as @e[type=armor_stand,tag=this] run scoreboard players set @s life 25
tag @e[type=armor_stand] remove this

execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s life matches 0 run fill ~ ~-1 ~4 ~ ~-1 ~2 minecraft:air
execute as @e[type=minecraft:armor_stand] at @s if entity @s[tag=poz1] if score @s life matches 0 run fill ~12 ~15 ~ ~-12 ~-15 ~2 minecraft:air destroy

#kill
kill @e[type=armor_stand,scores={life=0}]



tp @e[type=minecraft:bat] 0 -100 0
kill @e[type=bat]