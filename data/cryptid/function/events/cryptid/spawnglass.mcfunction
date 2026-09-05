execute anchored eyes positioned ^ ^ ^5 run setblock ~ ~ ~ glass
execute anchored eyes positioned ^ ^ ^5 run summon armor_stand ~ ~ ~ {Tags:["cryptid", "cryptid.hidinghouse","cryptid.timer"],Invisible:1, Silent:1, NoGravity:1, NoAI:1}
tellraw @p {"translate":"chat.cryptid.fake_error.path_ignore","color":"#F07178"}

execute as @e[type=armor_stand, tag=cryptid.hidinghouse] at @s run attribute @s minecraft:generic.scale base set 0.01

execute as @e[type=armor_stand, tag=cryptid.hidinghouse, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickhidinghouse"}


function cryptid:events/cryptid/flicker4
