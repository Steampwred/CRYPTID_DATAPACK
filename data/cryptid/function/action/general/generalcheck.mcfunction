##increase fury when near
execute store result score @s cryptid.random run random value 1..2000
execute if entity @p[distance=0..10] if entity @s[scores={cryptid.mob.class=3..4}] if score @s cryptid.random matches 1 run scoreboard players add .global cryptid.world.fury 10
execute if entity @p[distance=0..10] if entity @s[scores={cryptid.mob.class=4..6}] if score @s cryptid.random matches 1..2 run scoreboard players add .global cryptid.world.fury 10


##underground only
execute as @s[tag=cryptid.underground] at @s positioned over world_surface if entity @s[dy=512] run function cryptid:action/general/killsurface


##player mechanics
execute at @s[scores={cryptid.mob.class=3..}] as @a[tag=!cryptid.creator, gamemode=creative, distance=0..7] run tellraw @s "exception.gamemode.cryptid.override [?]"
execute at @s[scores={cryptid.mob.class=3..}] as @a[tag=!cryptid.creator, gamemode=creative, distance=0..7] run gamemode survival


##anticheese
function cryptid:action/breakboats