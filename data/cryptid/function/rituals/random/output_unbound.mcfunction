
function cryptid:rituals/result/macrosacrificecheck with storage cryptid:sacrifice craving

scoreboard players set @s cryptid.timer -100


execute as @e[tag=sacrifice.mob,distance=..10,type=#cryptid:innocent] run function cryptid:action/general/grounddeath
execute as @e[tag=sacrifice.item,distance=..10,type=item] run kill @s

function cryptid:rituals/initial/fleshydemand

scoreboard players set @s cryptid.ritualrangecap 30
function cryptid:rituals/result/failure