
##regular mid events that can happen anywhere
execute if score @s cryptid.event.random matches 1..5 run function cryptid:events/cryptid/worldshift
execute if score @s cryptid.event.random matches 1..30 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.event.random matches 38..40 run function cryptid:events/cryptid/chunktall
execute if score @s cryptid.event.random matches 29..56 run function cryptid:events/cryptid/placestructure
execute if score @s cryptid.event.random matches 25..30 run function cryptid:events/cryptid/chunkgrass
execute if score @s cryptid.event.random matches 26..30 run function cryptid:events/cryptid/chunkleaves
execute if score @s cryptid.event.random matches 27..30 run function cryptid:events/cryptid/chunkred
execute if score @s cryptid.event.random matches 28..30 run function cryptid:events/cryptid/chunktorch
execute at @s[scores={cryptid.player.flux=..-2}] if score @s cryptid.event.random matches 21..50 run function cryptid:events/cryptid/message1




##spaced out events
execute if score @s cryptid.event.random matches 0..3 run function cryptid:events/cryptid/sinkhole
execute if score @s cryptid.event.random matches 4 run function cryptid:events/cryptid/angrystalker
execute if score @s cryptid.event.random matches 6..7 run function cryptid:events/cryptid/setnight
execute if score @s cryptid.event.random matches 9..12 run function cryptid:events/cryptid/uncanny2
execute if score @s cryptid.event.random matches 13..15 run function cryptid:events/cryptid/whisper1
execute if score @s cryptid.event.random matches 16..18 run function cryptid:events/cryptid/ant
execute if score @s cryptid.event.random matches 19..21 run function cryptid:events/cryptid/lampost
execute if score @s cryptid.event.random matches 22..24 run function cryptid:events/cryptid/watcher1
execute if score @s cryptid.event.random matches 25..27 run function cryptid:events/cryptid/jelly1
execute if score @s cryptid.event.random matches 28..30 run function cryptid:events/cryptid/tweaker
execute if score @s cryptid.event.random matches 31..43 run function cryptid:events/cryptid/stalker1
execute if score @s cryptid.event.random matches 34..36 run function cryptid:events/cryptid/shy2
execute if score @s cryptid.event.random matches 37..45 run function cryptid:events/cryptid/mimic
execute if score @s cryptid.event.random matches 40..42 run function cryptid:events/cryptid/flicker3
execute if score @s[y=60, dy=400] cryptid.event.random matches 43..45 run function cryptid:events/cryptid/altar
execute if score @s cryptid.event.random matches 46..48 run function cryptid:events/cryptid/radiodead
execute if score @s cryptid.event.random matches 49..51 run function cryptid:events/general/screencorrupt
execute if score @s cryptid.event.random matches 52..54 run function cryptid:events/cryptid/screendash
execute if score @s cryptid.event.random matches 55..57 run function cryptid:events/cryptid/staringmen
execute if score @s cryptid.event.random matches 58..60 run function cryptid:events/cryptid/glitchtool
execute if score @s cryptid.event.random matches 61..63 run function cryptid:events/cryptid/interactionblock
execute if score @s cryptid.event.random matches 64..66 run function cryptid:events/cryptid/nerve
execute if score @s cryptid.event.random matches 67..69 run function cryptid:events/general/sprayevent
execute if score @s cryptid.event.random matches 70..72 run function cryptid:events/cryptid/skinned1
execute if score @s cryptid.event.random matches 73..75 run function cryptid:events/cryptid/tortured
execute if score @s cryptid.event.random matches 76..78 run function cryptid:events/cryptid/owl
execute if score @s cryptid.event.random matches 79..81 run function cryptid:events/cryptid/flooreye
execute if score @s cryptid.event.random matches 82..84 run function cryptid:events/general/distort1
execute if score @s cryptid.event.random matches 85..87 run function cryptid:events/cryptid/jellyswarm
execute if score @s cryptid.event.random matches 88..90 run function cryptid:events/general/breakerant
execute if score @s cryptid.event.random matches 91..93 run function cryptid:events/general/invisibleguy
execute if score @s cryptid.event.random matches 94..96 run function cryptid:events/cryptid/spire
execute if score @s cryptid.event.random matches 97..99 run function cryptid:events/cryptid/spawnglass
execute if score @s cryptid.event.random matches 100..102 run function cryptid:events/cryptid/pinhead
execute if score @s cryptid.event.random matches 103..105 run function cryptid:events/general/spawnheadpeeper


##events that only happen at higher fury levels

execute if score .global cryptid.world.fury matches 20.. if score @s cryptid.event.random matches 28..34 run function cryptid:events/cryptid/builder1

execute if score .global cryptid.world.fury matches 20.. if score @s cryptid.event.random matches 35..38 run function cryptid:events/cryptid/fractal

execute if score .global cryptid.world.fury matches 20.. if score @s cryptid.event.random matches 25..35 run function cryptid:events/cryptid/sethostile

execute if score .global cryptid.world.fury matches 20.. if score @s cryptid.event.random matches 35..45 run function cryptid:events/cryptid/flicker5

execute if score .global cryptid.world.fury matches 75.. if score @s cryptid.event.random matches 35..39 run function cryptid:events/cryptid/chomper


