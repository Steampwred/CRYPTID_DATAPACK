summon minecraft:armor_stand ~ ~ ~ {Invisible:1,CustomName:'[{"translate":"cryptid.entity.empty_obelisk"}]', Tags:["cryptid","cryptid.creep"], Silent:1, Invulnerable:1, NoAI:1,NoGravity:1}
 




execute as @e[type=armor_stand, tag=cryptid.creep, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickcreep"}


execute as @e[type=armor_stand, tag=cryptid.creep] at @s run effect give @s invisibility infinite 1 true
execute as @e[type=armor_stand, tag=cryptid.creep] at @s run item replace entity @s armor.head with potion[minecraft:custom_model_data=1344]

execute as @e[type=armor_stand, tag=cryptid.creep] at @s run attribute @s generic.scale base set 1