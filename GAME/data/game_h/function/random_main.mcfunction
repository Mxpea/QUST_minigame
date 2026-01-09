#loadd
scoreboard objectives add random dummy "倒计时"
execute store result score wall random run random value 1..14

execute if score wall random matches 1 run summon minecraft:bat -2 1 145 {CustomName:"1"}
execute if score wall random matches 2 run summon minecraft:bat -2 1 145 {CustomName:"2"}
execute if score wall random matches 3 run summon minecraft:bat -2 1 145 {CustomName:"3"}
execute if score wall random matches 4 run summon minecraft:bat -2 1 145 {CustomName:"4"}
execute if score wall random matches 5 run summon minecraft:bat -2 1 145 {CustomName:"5"}
execute if score wall random matches 6 run summon minecraft:bat -2 1 145 {CustomName:"6"}
execute if score wall random matches 7 run summon minecraft:bat -2 1 145 {CustomName:"7"}
execute if score wall random matches 8 run summon minecraft:bat -2 1 145 {CustomName:"8"}
execute if score wall random matches 9 run summon minecraft:bat -2 1 145 {CustomName:"9"}
execute if score wall random matches 10 run summon minecraft:bat -2 1 145 {CustomName:"10"}
execute if score wall random matches 11 run summon minecraft:bat -2 1 145 {CustomName:"11"}
execute if score wall random matches 12 run summon minecraft:bat -2 1 145 {CustomName:"12"}
execute if score wall random matches 13 run summon minecraft:bat -2 1 145 {CustomName:"13"}
execute if score wall random matches 14 run summon minecraft:bat -2 1 145 {CustomName:"14"}