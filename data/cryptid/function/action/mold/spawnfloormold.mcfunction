summon armor_stand ~ ~ ~ {Invisible:1,Silent:1,Invincible:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"entity.cryptid.moldy_mass.name"}]',Tags:["cryptid","cryptid.floormold"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:1.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

execute as @e[type=armor_stand, tag=cryptid.floormold, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickfloormold"}





item replace entity @e[type=armor_stand, sort=nearest, limit=1, tag=cryptid.molder] armor.head with potion[custom_model_data=1374]
