
particle item{item:{id:red_concrete}} ~ ~ ~ 0.3 0.3 0.3 0.2 180
playsound minecraft:entity.wither.hurt ambient @a ~ ~ ~ 0.2 0.1


## spawn chains
execute as @s[tag=!chained] run function cryptid:action/chaindebuff/spawnchain

execute as @n[tag=cryptid.athameproj,type=item_display] run kill @s 


damage @s 4 cryptid:chomp by @p