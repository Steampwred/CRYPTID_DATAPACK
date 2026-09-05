execute unless entity @n[tag=cryptid.crawler,distance=..250] run scoreboard players add @s cryptid.crawlerspawn 1

playsound minecraft:cryptid.earth.ambient ambient @s

execute if score @s cryptid.crawlerspawn matches 1 run tellraw @s {"translate":"cryptid.event.crawler.plunder","color":"dark_red"}
execute if score @s cryptid.crawlerspawn matches 1 run function cryptid:events/cryptid/flicker2

execute if score @s cryptid.crawlerspawn matches 2 run tellraw @s {"translate":"cryptid.event.crawler.darkness","color":"dark_red"}
execute if score @s cryptid.crawlerspawn matches 2 run function cryptid:events/cryptid/flicker5

execute if score @s cryptid.crawlerspawn matches 3 run function cryptid:events/underground/spawncrawler
execute if score @s cryptid.crawlerspawn matches 3 run playsound minecraft:cryptid.crawler.spawn ambient @a ~ ~10 ~50 1000 0.7




##end
execute if score @s cryptid.crawlerspawn matches ..-1 run scoreboard players set @s cryptid.crawlerspawn 0
execute if score @s cryptid.crawlerspawn matches 3.. run scoreboard players set @s cryptid.crawlerspawn 0