

##darkwave
execute if score @s cryptid.event.random matches 19..50 run function cryptid:events/story/storywave

##normie events
execute if score @s cryptid.event.random matches 1..15 run function cryptid:events/cryptid/flicker
execute if score @s cryptid.event.random matches 16..25 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.event.random matches 25..30 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.event.random matches 13..17 run function cryptid:events/cryptid/shy1
execute if score @s cryptid.event.random matches 0..20 run function cryptid:events/night/lostsoul
execute if score @s cryptid.event.random matches 30..40 run function cryptid:events/cryptid/behindyou


###fury increase at night!!!!



execute if score .random cryptid.player.random matches 1..400 if score .global cryptid.world.fury matches 10.. run scoreboard players add .global cryptid.world.fury 1






##tank
execute if score .global cryptid.world.fury matches 60.. if score @s cryptid.event.random matches 10..11 run function cryptid:events/cryptid/spawntank

execute if score .global cryptid.world.fury matches 60.. if score @s cryptid.event.random matches 6..17 run function cryptid:events/night/spotlight


execute if score .global cryptid.day matches 20.. if score @s cryptid.event.random matches 10..12 run function cryptid:events/cryptid/spawntank

execute if score .global cryptid.day matches 20.. if score @s cryptid.player.heart.distance matches 0..50 if score @s cryptid.event.random matches 0..60 run function cryptid:events/cryptid/spawntank



##doppleganger
execute if score .global cryptid.world.fury matches 30.. if score @s cryptid.event.random matches 14..15 run function cryptid:events/cryptid/dopple1

execute if score .global cryptid.world.fury matches 85.. if score @s cryptid.event.random matches 14..17 run function cryptid:events/cryptid/dopple1

execute if score .global cryptid.world.fury matches 130.. if score @s cryptid.event.random matches 15..25 run function cryptid:events/cryptid/dopple1


