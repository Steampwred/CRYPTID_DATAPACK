execute store result score @s cryptid.player.random run random value 1..6
execute if score @s cryptid.player.random matches 1 run tellraw @s {"text":"Look up.","color":"red"}

summon minecraft:vindicator ~ ~200 ~ {CustomName:'[{"text":"Curator"}]', Tags:["cryptid","cryptid.fractal"], Silent:1, Invulnerable:1, NoAI:1,NoGravity:1}
spreadplayers ~ ~ 30 90 false @e[type=vindicator, tag=cryptid.fractal, sort=nearest,limit=1,tag=!cryptid.fractalinit]
 
execute as @e[type=vindicator, tag=cryptid.fractal] at @s run effect give @s invisibility infinite 1 true
execute as @e[type=vindicator, tag=cryptid.fractal] at @s run item replace entity @s armor.head with potion[minecraft:custom_model_data=1337]

execute as @e[type=vindicator, tag=cryptid.fractal] at @s run attribute @s generic.scale base set 32


execute as @e[type=vindicator, tag=cryptid.fractal, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickfractal"}


execute as @e[type=vindicator, tag=cryptid.fractal, tag=!cryptid.fractalinit] at @s run tp @s ~ ~80 ~
execute as @e[type=vindicator, tag=cryptid.fractal, tag=!cryptid.fractalinit] at @s run tag @s add cryptid.fractalinit

scoreboard players set @a[distance=0..50] cryptid.player.eventscore 8


function cryptid:events/cryptid/flicker