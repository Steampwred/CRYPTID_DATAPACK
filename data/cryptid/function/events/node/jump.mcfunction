execute store result score @s cryptid.player.random run random value 1..30


execute if score @s cryptid.player.random matches 1 run summon minecraft:lightning_bolt

execute if score @s cryptid.player.random matches 2 run give @a[distance=0..20] rotten_flesh[custom_name='["",{"translate":"cryptid.item.gift.treat","italic":false}]']

execute if score @s cryptid.player.random matches 3 run give @a[distance=0..20] rotten_flesh[custom_name='["",{"translate":"cryptid.item.gift.smile","italic":false}]']

execute if score @s cryptid.player.random matches 4 run give @a[distance=0..20] rotten_flesh[custom_name='["",{"translate":"cryptid.item.gift.food","italic":false}]']

execute if score @s cryptid.player.random matches 5 run give @a[distance=0..20] rotten_flesh[custom_name='["",{"translate":"cryptid.item.gift.hunger","italic":false}]']

execute if score @s cryptid.player.random matches 6 run give @a[distance=0..20] rotten_flesh[custom_name='["",{"translate":"cryptid.item.gift.glitch","italic":false}]']

execute if score @s cryptid.player.random matches 7 run give @a[distance=0..20] rotten_flesh[custom_name='["",{"translate":"cryptid.item.gift.feast","italic":false}]']

execute if score @s cryptid.player.random matches 8 run give @a[distance=0..20] paper[custom_name='["",{"translate":"cryptid.item.gift.love","italic":false}]']

execute if score @s cryptid.player.random matches 8 run give @a[distance=0..20] paper[custom_name='["",{"translate":"cryptid.item.gift.warm_bodies","italic":false}]']


execute if score @s cryptid.player.random matches 10 run give @a[distance=0..20] paper[custom_name='["",{"translate":"cryptid.item.gift.ha","italic":false}]']

execute if score @s cryptid.player.random matches 11 run give @a[distance=0..20] paper[custom_name='["",{"translate":"cryptid.item.gift.deep_earth","italic":false}]']

execute if score @s cryptid.player.random matches 12 run give @a[distance=0..20] paper[custom_name='["",{"translate":"cryptid.item.gift.lonely_road","italic":false}]']

execute if score @s cryptid.player.random matches 13 run give @a[distance=0..20] paper[custom_name='["",{"translate":"cryptid.item.gift.tired","italic":false}]']

execute if score @s cryptid.player.random matches 15 run give @a[distance=0..20] paper[custom_name='["",{"translate":"cryptid.item.gift.you","italic":false}]']

execute if score @s cryptid.player.random matches 16 run give @a[distance=0..20] diamond[custom_name='["",{"translate":"cryptid.item.gift.reward","italic":false}]']

execute if score @s cryptid.player.random matches 17 run give @a[distance=0..20] bone[custom_name='["",{"translate":"cryptid.item.gift.soon","italic":false}]']

execute if score @s cryptid.player.random matches 18 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.not_too_late","color":"dark_red"}]

execute if score @s cryptid.player.random matches 19 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.moon","color":"dark_red"}]

execute if score @s cryptid.player.random matches 20 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.feed_us","color":"dark_red"}]

execute if score @s cryptid.player.random matches 21 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.please","color":"dark_red"}]

execute if score @s cryptid.player.random matches 22 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.heart","color":"dark_red"}]

execute if score @s cryptid.player.random matches 23 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.behind_you","color":"dark_red"}]

execute if score @s cryptid.player.random matches 24 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.smile","color":"dark_red"}]

execute if score @s cryptid.player.random matches 25 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.red_sunshine","color":"dark_red"}]

execute if score @s cryptid.player.random matches 26 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.feed_us","color":"dark_red"}]

execute if score @s cryptid.player.random matches 27 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.cryptid","color":"dark_red"}]

execute if score @s cryptid.player.random matches 28 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.red_eyes","color":"dark_red"}]

execute if score @s cryptid.player.random matches 29 run tellraw @a[distance=0..5] ["",{"translate":"cryptid.event.random.them","color":"dark_red"}]