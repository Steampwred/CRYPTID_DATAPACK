
function cryptid:rituals/result/macrosacrificecheck with storage cryptid:sacrifice craving

execute if entity @s[tag=!ritual.cravingmet] run tellraw @a [{"text":"bring me ","color":"red"},{"nbt":"craving.display","storage":"cryptid:sacrifice"}]
execute if entity @s[tag=ritual.cravingmet] run tellraw @a {"text": "yummy","color": "dark_red"}

scoreboard players set @s cryptid.timer -100


execute as @e[tag=sacrifice.mob,distance=..10,type=#cryptid:innocent] run function cryptid:action/general/grounddeath
execute as @e[tag=sacrifice.item,distance=..10,type=item] run kill @s

#function cryptid:rituals/initial/fleshydemand

execute store result score @s[tag=ritual.cravingmet] cryptid.ritual.probability run random value 1..30
function cryptid:rituals/result/failure