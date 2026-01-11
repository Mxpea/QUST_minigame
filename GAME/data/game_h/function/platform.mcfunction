#hacker是笨蛋
execute if score type platform matches 1 run place template minecraft:platform_1 -2 0 127
execute if score type platform matches 2 run place template minecraft:platform_2 -2 0 127
execute if score type platform matches 3 run place template minecraft:platform_3 -2 0 127
execute if score type platform matches 4 run place template minecraft:platform_4 -2 0 127

execute if score type platform matches 5 run fill 9 0 138 -2 0 127 air replace red_glazed_terracotta
scoreboard players set type platform 0