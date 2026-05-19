## Fx
playsound entity.item.break player @a[distance=..10] ~ ~ ~ 1 0.5
particle item{item:{id:chain}} ~ ~ ~ 0.3 0.3 0.3 0.4 50
execute on vehicle unless entity @s[tag=NoAItrue] run data merge entity @s {NoAI:0b}

tag @s remove NoAItrue
execute on vehicle run tag @s remove chained

## Cooldown reset
execute at @a if score @s cryptid.player.id = @p cryptid.player.id run scoreboard players set @p cryptid.athame.cooldown 60

# remove
kill @e[distance=..0.5,tag=cryptid.chain,type=minecraft:block_display,limit=2]
kill @s