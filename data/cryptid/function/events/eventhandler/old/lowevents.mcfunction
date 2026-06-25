
##general events that happen anywhere
execute if score @s cryptid.event.random matches 1..7 run function cryptid:events/cryptid/worldshift
execute if score @s cryptid.event.random matches 1..35 run function cryptid:events/cryptid/flicker
execute if score @s cryptid.event.random matches 36..65 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.event.random matches 28..32 run function cryptid:events/cryptid/prion
execute if score @s cryptid.event.random matches 38..44 run function cryptid:events/cryptid/chunktall
execute if score @s cryptid.event.random matches 29..46 run function cryptid:events/cryptid/placestructure
execute if score @s cryptid.event.random matches 26..30 run function cryptid:events/cryptid/chunkerror
execute if score @s cryptid.event.random matches 25 run function cryptid:events/cryptid/chunkgrass
execute if score @s cryptid.event.random matches 26 run function cryptid:events/cryptid/chunkleaves
execute if score @s cryptid.event.random matches 27 run function cryptid:events/cryptid/chunkred
execute if score @s cryptid.event.random matches 28 run function cryptid:events/cryptid/chunktorch
execute if score @s cryptid.event.random matches 19..32 run function cryptid:events/cryptid/radiodead
execute if score @s cryptid.event.random matches 26..31 run function cryptid:events/cryptid/fireworks

###regular events that are spaced out
execute if score @s cryptid.event.random matches 1..3 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.event.random matches 4..6 run function cryptid:events/cryptid/shy1
execute if score @s cryptid.event.random matches 7..9 run function cryptid:events/cryptid/infest1
execute if score @s cryptid.event.random matches 10..12 run function cryptid:events/cryptid/skinned1
execute if score @s cryptid.event.random matches 13..15 run function cryptid:events/cryptid/screendash
execute if score @s cryptid.event.random matches 16..18 run function cryptid:events/cryptid/prion
execute if score @s cryptid.event.random matches 19..21 run function cryptid:events/cryptid/staringmen
execute if score @s cryptid.event.random matches 22..24 run function cryptid:events/cryptid/nerve
execute if score @s cryptid.event.random matches 25..30 run function cryptid:events/cryptid/owl
execute if score @s cryptid.event.random matches 28..30 run function cryptid:events/cryptid/tpcollect
execute if score @s cryptid.event.random matches 31..33 run function cryptid:events/cryptid/hunger
execute if score @s cryptid.event.random matches 34..36 run function cryptid:events/cryptid/sinkhole
execute if score @s cryptid.event.random matches 37 run function cryptid:events/cryptid/angrystalker
execute if score @s cryptid.event.random matches 40..41 run function cryptid:events/cryptid/setnight
execute if score @s cryptid.event.random matches 42..45 run function cryptid:events/cryptid/uncanny2
execute if score @s cryptid.event.random matches 46..48 run function cryptid:events/cryptid/whisper1
execute if score @s cryptid.event.random matches 49..51 run function cryptid:events/cryptid/ant
execute if score @s cryptid.event.random matches 52..53 run function cryptid:events/cryptid/spawnglass
execute if score @s cryptid.event.random matches 54..58 run function cryptid:events/cryptid/stalker1
execute if score @s cryptid.event.random matches 59..61 run function cryptid:events/general/spawnheadpeeper
execute if score @s cryptid.event.random matches 62..65 run function cryptid:events/sky/lowskyroamer
execute if score @s cryptid.event.random matches 66..69 run function cryptid:events/general/breakerant
execute if score @s cryptid.event.random matches 71..73 run function cryptid:events/cryptid/screendash2
execute if score @s cryptid.event.random matches 75..75 run function cryptid:events/cryptid/youngheadpeeper



##fix radio
execute if score @s cryptid.event.random matches 41..200 run tag @s remove deadradio



##random messages
execute at @s[scores={cryptid.player.flux=..-3}] if score @s cryptid.event.random matches 41..60 run function cryptid:events/cryptid/message1
