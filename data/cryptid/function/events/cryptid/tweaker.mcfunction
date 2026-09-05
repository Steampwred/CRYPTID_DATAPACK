execute store result score @s cryptid.player.random run random value 1..5
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.tweaker.error","color":"red"}


summon minecraft:vindicator ~ ~200 ~ {Tags:["cryptid","cryptid.tweaker"], Silent:1, Invulnerable:1, NoAI:1}


execute as @e[type=vindicator, tag=cryptid.tweaker, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticktweaker"}


execute as @e[type=vindicator, tag=cryptid.tweaker, sort=nearest,limit=1] at @s run function cryptid:action/general/placerandom {"min":"30","max":"100","underheight":"500"}

execute as @e[type=vindicator, tag=cryptid.tweaker, sort=nearest,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1, Tags:["cryptid","cryptid.anomaly"]}