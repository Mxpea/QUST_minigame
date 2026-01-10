#load
scoreboard objectives add random dummy "倒计时"
execute store result score wall random run random value 1..14

execute if score wall random matches 1 run summon minecraft:bat -2 1 145 {Tags:["1"]}
execute if score wall random matches 2 run summon minecraft:bat -2 1 145 {Tags:["2"]}
execute if score wall random matches 3 run summon minecraft:bat -2 1 145 {Tags:["3"]}
execute if score wall random matches 4 run summon minecraft:bat -2 1 145 {Tags:["4"]}
execute if score wall random matches 5 run summon minecraft:bat -2 1 145 {Tags:["5"]}
execute if score wall random matches 6 run summon minecraft:bat -2 1 145 {Tags:["6"]}
execute if score wall random matches 7 run summon minecraft:bat -2 1 145 {Tags:["7"]}
execute if score wall random matches 8 run summon minecraft:bat -2 1 145 {Tags:["8"]}
execute if score wall random matches 9 run summon minecraft:bat -2 1 145 {Tags:["9"]}
execute if score wall random matches 10 run summon minecraft:bat -2 1 145 {Tags:["10"]}
execute if score wall random matches 11 run summon minecraft:bat -2 1 145 {Tags:["11"]}
execute if score wall random matches 12 run summon minecraft:bat -2 1 145 {Tags:["12"]}
execute if score wall random matches 13 run summon minecraft:bat -2 1 145 {Tags:["13"]}
execute if score wall random matches 14 run summon minecraft:bat -2 1 145 {Tags:["14"]}