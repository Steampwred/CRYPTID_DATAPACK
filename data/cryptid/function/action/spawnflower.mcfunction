summon minecraft:armor_stand ~ ~ ~ {CustomName:'[{"translate":"cryptid.entity.corpse_flower"}]', Silent:1, Invisible:1, Tags:["cryptid","cryptid.flower"]}
item replace entity @e[type=armor_stand, sort=nearest, tag=cryptid.flower, limit=1] armor.head with potion[minecraft:custom_model_data=1312]

execute as @e[type=armor_stand, tag=cryptid.flower, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickflower"}



execute if score @s cryptid.infestedtimer matches 100.. run particle falling_dust{block_state:{Name:red_concrete}} ~ ~1 ~ 0.2 0.2 0.2 10 500