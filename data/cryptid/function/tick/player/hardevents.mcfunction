
##ancient evil
execute if score .global cryptid.day matches 1 run tellraw @a {"text":"An ancient evil has awakened in the depths of the world","color":"dark_red"}


execute if score .global cryptid.day matches 4 run function cryptid:events/cryptid/tortured
execute if score .global cryptid.day matches 4 run title @s actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":" A Tortured Soul has spawned nearby","color":"dark_red"}]

execute if score .global cryptid.day matches 8 run function cryptid:events/sky/eyewatcher
execute if score .global cryptid.day matches 8 run title @s actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":" You have been noticed, seek shelter underground","color":"dark_red"}]

execute if score .global cryptid.day matches 12 run function cryptid:events/cryptid/spire
execute if score .global cryptid.day matches 12 run title @s actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":" Large seismic activity detected","color":"dark_red"}]

execute if score .global cryptid.day matches 15 run function cryptid:events/sky/fathead
execute if score .global cryptid.day matches 15 run title @s actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":" Something large has noticed you","color":"dark_red"}]
