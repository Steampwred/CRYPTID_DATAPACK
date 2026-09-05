summon vindicator ~ ~112 ~ {NoAI:1b,DeathLootTable:"minecraft:empty",Invulnerable:1b,DisabledSlots:4144959, Invisible:1, NoGravity:1b, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.sky_philogen"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spotlight"],ArmorItems:[{},{},{},{id:stone_button}],ArmorDropChances:[0f,0f,0f,0f]}

#summon vindicator ~ ~110 ~ {NoAI:1b,DeathLootTable:"minecraft:empty",Invulnerable:1b,DisabledSlots:4144959, Invisible:1, NoGravity:1b, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.sky_ray"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spotlight2"],ArmorItems:[{},{},{},{id:air,components:{"minecraft:custom_model_data":1360},count:1}],ArmorDropChances:[0f,0f,0f,0f]}
summon item_display ~ ~110 ~ {CustomName:'[{"translate":"cryptid.entity.sky_ray"}]',Tags:["cryptid","cryptid.spotlight2"],item:{id:potion,components:{custom_model_data:1360},count:1},item_display:"head",view_range:5,width:500,height:600,teleport_duration:8}


## Give spotlight 1 and 2 the same id.
execute as @e[type=vindicator, tag=cryptid.spotlight, sort=nearest, limit=1, tag=!cryptid.markerapplied] run execute store result score @s cryptid.mob.id run scoreboard players add .global cryptid.mob.id 1
execute as @e[type=item_display, tag=cryptid.spotlight2, sort=nearest, limit=1, tag=!cryptid.markerapplied] run scoreboard players operation @s cryptid.mob.id = @n[type=vindicator, tag=cryptid.spotlight, tag=!cryptid.markerapplied] cryptid.mob.id

## Place spotlight near player
execute as @e[type=vindicator, tag=cryptid.spotlight, sort=nearest, limit=1, tag=!cryptid.markerapplied] at @s run spreadplayers ~ ~ 1 40 under 100 true @s
execute as @e[type=vindicator, tag=cryptid.spotlight, sort=nearest, limit=1, tag=!cryptid.markerapplied] at @s run tp @s ~ ~112 ~ 0 90
execute as @n[type=vindicator, tag=cryptid.spotlight, tag=!cryptid.markerapplied] at @s run tp @n[type=item_display, tag=cryptid.spotlight2, tag=!cryptid.markerapplied] ^ ^ ^5

## apply tickmarkers
execute as @e[type=vindicator, tag=cryptid.spotlight, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspotlight"}
execute as @e[type=item_display, tag=cryptid.spotlight2, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspotlight2"}







##other
execute as @e[type=vindicator, tag=cryptid.spotlight] at @s run attribute @s minecraft:generic.scale base set 3

execute positioned ~ ~-20 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.spotlight] minecraft:invisibility infinite 1 true
execute positioned ~ ~-20 ~ run effect give @e[type=item_display, sort=nearest, tag=cryptid.spotlight2] minecraft:invisibility infinite 1 true

execute positioned ~ ~-20 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.spotlight,limit=1] cryptid.mob.class 2
execute positioned ~ ~-20 ~ run scoreboard players set @e[type=item_display, sort=nearest, tag=cryptid.spotlight2,limit=1] cryptid.mob.class 2

playsound minecraft:cryptid.ambient.spirit ambient @a ~ ~100 ~ 100 0.54
execute as @s store result score @s cryptid.player.random run random value 1..4
execute if score @s cryptid.player.random matches 1 run execute as @a at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest, limit=1, type=item_display, tag=cryptid.spotlight2]
execute if score @s cryptid.player.random matches 1 run execute as @p at @s run function cryptid:events/cryptid/flicker5


team join cryptid.nocollide @e[tag=cryptid.spotlight2, type=item_display]