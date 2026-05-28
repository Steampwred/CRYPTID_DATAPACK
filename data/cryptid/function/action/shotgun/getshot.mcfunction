damage @s[tag=!cryptid,tag=!bosscryptid] 15 minecraft:player_attack by @p from @p
damage @s[tag=cryptid] 20 minecraft:player_attack by @p from @p
damage @s[tag=boss.skull] 30 minecraft:player_attack by @p from @p




particle item{item:{id:nether_wart_block}} ~ ~1 ~ 0.4 0.4 0.4 0.1 120
execute rotated as @s[tag=!cryptid,tag=!bosscryptid] facing entity @p eyes run tp @s ^ ^ ^-0.2
playsound minecraft:entity.player.hurt ambient @a ~ ~ ~ 1 0.7







##boss interactions

