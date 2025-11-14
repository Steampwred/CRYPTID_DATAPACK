
##general events that can happen anywhere
execute if score @s cryptid.event.random matches 1..20 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.event.random matches 29..56 run function cryptid:events/cryptid/placestructure
execute if score @s cryptid.event.random matches 25..26 run function cryptid:events/cryptid/chunkgrass
execute if score @s cryptid.event.random matches 27..38 run function cryptid:events/cryptid/chunkred
execute if score @s cryptid.event.random matches 28..29 run function cryptid:events/cryptid/chunktorch
execute if score @s cryptid.event.random matches 29..33 run function cryptid:events/cryptid/behindyou


##spaced events
execute if score @s cryptid.event.random matches 1..2 run function cryptid:events/cryptid/jelly1
execute if score @s cryptid.event.random matches 30..56 run function cryptid:events/cryptid/shy2
execute if score @s cryptid.event.random matches 7..15 run function cryptid:events/cryptid/mimic
execute if score @s cryptid.event.random matches 9..12 run function cryptid:events/cryptid/flicker3
execute if score @s[y=60, dy=400] cryptid.event.random matches 10..14 run function cryptid:events/cryptid/altar
execute if score @s cryptid.event.random matches 15..18 run function cryptid:events/cryptid/radiodead
execute if score @s cryptid.event.random matches 19..21 run function cryptid:events/general/screencorrupt
execute if score @s cryptid.event.random matches 22..24 run function cryptid:events/cryptid/glitchtool
execute if score @s cryptid.event.random matches 25..27 run function cryptid:events/cryptid/interactionblock
execute if score @s cryptid.event.random matches 28..30 run function cryptid:events/general/sprayevent
execute if score @s cryptid.event.random matches 31..33 run function cryptid:events/cryptid/tortured
execute if score @s cryptid.event.random matches 34..36 run function cryptid:events/cryptid/flooreye
execute if score @s cryptid.event.random matches 37..39 run function cryptid:events/general/distort1
execute if score @s cryptid.event.random matches 40..42 run function cryptid:events/cryptid/jellyswarm
execute if score @s cryptid.event.random matches 43..45 run function cryptid:events/cryptid/fakemountain
execute if score @s cryptid.event.random matches 46..48 run function cryptid:events/cryptid/ant
execute if score @s cryptid.event.random matches 49..51 run function cryptid:events/cryptid/sinkhole
execute if score @s cryptid.event.random matches 52 run function cryptid:events/cryptid/angrystalker
execute if score @s cryptid.event.random matches 53..57 run function cryptid:events/cryptid/setnight
execute if score @s cryptid.event.random matches 58..60 run function cryptid:events/cryptid/uncanny2
execute if score @s cryptid.event.random matches 61..63 run function cryptid:events/cryptid/whisper1
execute if score @s cryptid.event.random matches 64..66 run fillbiome ~3 ~3 ~3 ~-3 ~-3 ~-3 cryptid:soma
execute if score @s cryptid.event.random matches 67..69 run function cryptid:events/general/breakerant
execute if score @s cryptid.event.random matches 70..72 run function cryptid:events/general/invisibleguy
execute if score @s cryptid.event.random matches 73..75 run function cryptid:events/cryptid/spire
execute if score @s cryptid.event.random matches 76..78 run function cryptid:events/cryptid/pinhead
execute if score @s cryptid.event.random matches 79..84 run function cryptid:events/sky/lowskyroamer
execute if score @s cryptid.event.random matches 86..89 run function cryptid:events/cryptid/screendash2
execute if score @s cryptid.event.random matches 91..92 run function cryptid:events/cryptid/youngheadpeeper




##events that only happen at higher fury levels

execute if score .global cryptid.world.fury matches 140.. if score @s cryptid.event.random matches 30..39 run function cryptid:events/cryptid/fractal

execute if score .global cryptid.world.fury matches 75.. if score @s cryptid.event.random matches 25..39 run function cryptid:events/cryptid/sethostile

execute if score .global cryptid.world.fury matches 45.. if score @s cryptid.event.random matches 35..45 run function cryptid:events/cryptid/flicker5

execute if score .global cryptid.world.fury matches 25.. if score @s cryptid.event.random matches 14..33 run function cryptid:events/cryptid/dopple1

execute if score .global cryptid.world.fury matches 110.. if score @s cryptid.event.random matches 34 run execute as @s at @s run function cryptid:events/cryptid/worldsky

execute if score .global cryptid.world.fury matches 10.. if score @s cryptid.event.random matches 14..21 run execute as @e[type=!player, sort=furthest, limit=2, distance=1..30] at @s run function cryptid:events/underground/spawndecimator

execute if score .global cryptid.world.fury matches 110.. if score @s cryptid.event.random matches 14 run execute as @e[type=!player, sort=furthest, limit=1, distance=15..20] at @s run function cryptid:events/general/spawnglitch

execute if score .global cryptid.world.fury matches 75.. if score @s cryptid.event.random matches 35..46 run function cryptid:events/cryptid/chomper


