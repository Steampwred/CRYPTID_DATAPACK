##ancient evil
scoreboard players set @s cryptid.player.titlecooldown 40


execute if score .global cryptid.day matches 1 run tellraw @a {"translate":"cryptid.event.day1.ancient_evil","color":"dark_red"}

execute if score .global cryptid.day matches 2 run function cryptid:events/cryptid/fireworks

execute if score .global cryptid.day matches 4 run function cryptid:events/cryptid/tortured
execute if score .global cryptid.day matches 4 run title @a actionbar ["",{"text":"\ua022 ","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.event.day4.tortured_soul","color":"dark_red"}]

execute if score .global cryptid.day matches 6 run function cryptid:events/cryptid/fractal
execute if score .global cryptid.day matches 6 run title @a actionbar ["",{"text":"\ua022 ","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.event.day6.fractal","color":"dark_red"}]

execute if score .global cryptid.day matches 8 run function cryptid:events/sky/eyewatcher
execute if score .global cryptid.day matches 8 run title @a actionbar ["",{"text":"\ua022 ","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.event.day8.eyewatcher","color":"dark_red"}]

execute if score .global cryptid.day matches 12 run function cryptid:events/cryptid/spire
execute if score .global cryptid.day matches 12 run title @a actionbar ["",{"text":"\ua022 ","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.event.day12.spire","color":"dark_red"}]

execute if score .global cryptid.day matches 15 run function cryptid:events/sky/fathead
execute if score .global cryptid.day matches 15 run title @a actionbar ["",{"text":"\ua022 ","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.event.day15.fathead","color":"dark_red"}]