
execute store result score @s cryptid.player.random run random value 1..10


execute if score @s cryptid.player.random matches 1 run title @s title {"text":"\ua014","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 2 run title @s title {"text":"\ua015","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 3 run title @s title {"text":"\ua016","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 4 run title @s title {"text":"\ua017","font":"minecraft:images"}
