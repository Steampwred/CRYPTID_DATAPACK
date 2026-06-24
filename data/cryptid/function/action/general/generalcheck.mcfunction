##underground only
execute as @s[tag=cryptid.underground] at @s positioned over world_surface if entity @s[dy=512] run function cryptid:action/general/killsurface


##player mechanics
execute at @s[scores={cryptid.mob.class=3..}] as @a[tag=!cryptid.creator, gamemode=creative, distance=0..7] run tellraw @s "exception.gamemode.cryptid.override [?]"
execute at @s[scores={cryptid.mob.class=3..}] as @a[tag=!cryptid.creator, gamemode=creative, distance=0..7] run gamemode survival


##anticheese
function cryptid:action/breakboats