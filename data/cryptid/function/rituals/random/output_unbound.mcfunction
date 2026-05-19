##check critirea
function cryptid:rituals/result/macrosacrificecheck with storage cryptid:sacrifice craving

execute if entity @s[tag=!ritual.cravingmet] run tellraw @a [{"text":"BRING US ","color":"red"},{"nbt":"craving.display","storage":"cryptid:sacrifice"}]

scoreboard players set @s cryptid.timer -100

execute as @e[tag=sacrifice.mob,distance=..30,type=#cryptid:sacrificeable] run function cryptid:action/general/grounddeath
execute as @e[tag=sacrifice.item,distance=..30,type=item] run kill @s


execute as @e[tag=sacrifice.mob,distance=..30,type=wither] run function cryptid:action/general/glitchdeath


execute if entity @s[tag=ritual.cravingmet] run function cryptid:rituals/result/unboundsuccess

execute store result score @s[tag=ritual.cravingmet] cryptid.ritual.probability run random value 1..30
function cryptid:rituals/result/failure