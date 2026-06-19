## 75-90 Safe  
execute if score .global cryptid.day matches 20.. if score @s cryptid.event.random matches 85..90 run function cryptid:events/cryptid/spawntank

## 50-74 Mild
execute if score .global cryptid.world.fury matches 60.. if score @s cryptid.event.random matches 60..74 run function cryptid:events/night/spotlight

## 11-49 Danger 
execute if score .global cryptid.world.fury matches 30.. if score @s cryptid.event.random matches 40..49 run function cryptid:events/cryptid/dopple1
execute if score .global cryptid.world.fury matches 85.. if score @s cryptid.event.random matches 30..39 run function cryptid:events/cryptid/dopple1
execute if score .global cryptid.world.fury matches 130.. if score @s cryptid.event.random matches 20..29 run function cryptid:events/cryptid/dopple1
execute if score .global cryptid.world.fury matches 60.. if score @s cryptid.event.random matches 15..19 run function cryptid:events/cryptid/spawntank
execute if score .global cryptid.day matches 20.. if score @s cryptid.event.random matches 11..14 run function cryptid:events/cryptid/spawntank

## 1-10 Extreme
execute if score .global cryptid.day matches 20.. if score @s cryptid.player.heart.distance matches 0..20 if score @s cryptid.event.random matches 6..10 run function cryptid:events/cryptid/spawntank
execute if score @s cryptid.event.random matches 4..5 run function cryptid:events/cryptid/shy1
execute if score @s cryptid.event.random matches 3 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.event.random matches 2 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.event.random matches 1 run function cryptid:events/cryptid/flicker

## Major Overlapping Events (>15 Range)
execute if score @s cryptid.event.random matches 19..50 run function cryptid:events/story/storywave
execute if score @s cryptid.event.random matches 1..20 run function cryptid:events/night/lostsoul
execute if score @s cryptid.event.random matches 30..40 run function cryptid:events/cryptid/behindyou

### fury increase at night!!!!
execute if score .random cryptid.player.random matches 1..400 if score .global cryptid.world.fury matches 10.. run scoreboard players add .global cryptid.world.fury 1