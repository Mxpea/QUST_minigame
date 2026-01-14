
execute store result score effect random run random value 1..100
##template
#execute if score effect random matches 1 run effect give @a ***

#positive
execute if score effect random matches 1..8 run effect give @a[tag=!spectator] jump_boost 3 5
execute if score effect random matches 1..8 as @a[tag=!spectator] at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1
execute if score effect random matches 1..8 run title @a[tag=!spectator] title ""
execute if score effect random matches 1..8 run title @a[tag=!spectator] subtitle {text:"跳跃提升!",color:"green"}

#negative
execute if score effect random matches 10..20 run effect give @a[tag=!spectator] speed 5 1
execute if score effect random matches 10..20 as @a[tag=!spectator] at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1
execute if score effect random matches 10..20 run title @a[tag=!spectator] title ""
execute if score effect random matches 10..20 run title @a[tag=!spectator] subtitle {text:"速度提升!",color:"green"}

execute if score effect random matches 9 at @r[tag=!spectator] run summon armor_stand ~ ~ ~ {Tags:["wind"],NoGravity:true,Invisible:true}
execute if score effect random matches 9 at @r[tag=!spectator] run summon armor_stand ~ ~ ~ {Tags:["wind"],NoGravity:true,Invisible:true}
execute if score effect random matches 9 at @r[tag=!spectator] run summon armor_stand ~ ~ ~ {Tags:["wind"],NoGravity:true,Invisible:true}
execute as @e[type=armor_stand,tag=wind] at @s run spreadplayers ~ ~ 5 10 under 3 false @s
execute as @e[type=armor_stand,tag=wind] at @s run summon wind_charge ~ 10 ~ {Tags:["trace"]}
kill @e[type=armor_stand,tag=wind]
execute if score effect random matches 9 run title @a[tag=!spectator] title ""
execute if score effect random matches 9 as @a[tag=!spectator] at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1
execute if score effect random matches 9 run title @a[tag=!spectator] subtitle {text:"风弹!",color:"green"}



scoreboard players set effect random 0
