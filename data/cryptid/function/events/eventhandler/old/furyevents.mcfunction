##normie events
#execute if score @s cryptid.event.random matches 1..15 run function cryptid:events/cryptid/flicker
#execute if score @s cryptid.event.random matches 16..25 run function cryptid:events/cryptid/flicker2
#execute if score @s cryptid.event.random matches 25..30 run function cryptid:events/cryptid/flicker5
#execute if score @s cryptid.event.random matches 13..17 run function cryptid:events/cryptid/shy1



##entity events
execute if score .global cryptid.world.fury matches 40.. if score @s cryptid.event.random matches 20..35 run function cryptid:events/sky/lowskyroamer
execute if score .global cryptid.world.fury matches 60.. if score @s cryptid.event.random matches 36..50 run function cryptid:events/cryptid/spawntank
execute if score .global cryptid.world.fury matches 80.. if score @s cryptid.event.random matches 51..65 run function cryptid:events/sky/wyrm
execute if score .global cryptid.world.fury matches 120.. if score @s cryptid.event.random matches 66..80 run function cryptid:events/cryptid/youngheadpeeper

