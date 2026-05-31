## infested become corupt
execute as @e[tag=cryptid.infested,type=!armor_stand, type=!villager,tag=!cryptid.evilmob, tag=!cryptid.brainparasite, distance=2..20, sort=nearest, type=!#cryptid:nonliving, type=!#cryptid:projectiles, type=!#can_breathe_under_water ,type=!player, limit=5] at @s run function cryptid:action/hostile/hostileinit
## normal become infested 
execute as @e[type=!armor_stand, type=!villager,tag=!cryptid.evilmob, tag=!cryptid.brainparasite, distance=2..20, sort=random, tag=!cryptid, type=!#cryptid:nonliving, type=!#cryptid:projectiles, type=!#can_breathe_under_water ,type=!player, limit=5] at @s run function cryptid:action/hostile/infestinit
