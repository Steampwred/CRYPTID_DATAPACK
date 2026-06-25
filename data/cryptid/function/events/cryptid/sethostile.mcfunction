## infested become corupt
execute as @e[tag=cryptid.infested,tag=!cryptid.evilmob, tag=!cryptid.brainparasite, tag=!cryptid, distance=2..20, sort=nearest, limit=5, type=#cryptid:infestable] at @s run function cryptid:action/hostile/hostileinit
## normal become infested 
execute as @e[tag=!cryptid,tag=!cryptid.evilmob, tag=!cryptid.brainparasite, tag=!cryptid.infested, distance=2..20, sort=nearest, limit=5, type=#cryptid:infestable] at @s run function cryptid:action/hostile/infestinit
