
execute as @e[type=!armor_stand, type=!villager,tag=!cryptid.evilmob, tag=!cryptid.evilcore, distance=2..20, sort=random, tag=!cryptid, type=!#cryptid:nonliving, type=!#cryptid:projectiles, type=!#can_breathe_under_water, limit=4] at @s run function cryptid:action/hostile/inithostile

effect give @e[type=zombified_piglin, tag=cryptid.evilcore] minecraft:invisibility infinite 255 true
