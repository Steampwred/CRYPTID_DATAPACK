execute at @a if score @s cryptid.player.id = @p cryptid.player.id run tag @p add cryptid.athameprojowner

scoreboard players set @a[tag=cryptid.athameprojowner] cryptid.athame.cooldown 2
tp @s ~ ~ ~ facing entity @p[tag=cryptid.athameprojowner] feet
function cryptid:rituals/athame/rayinit

tag @a remove cryptid.athameprojowner

particle item{item:{id:red_concrete}} ~ ~ ~ 0.3 0.3 0.3 0.2 180
playsound minecraft:cryptid.sword.hit ambient @a[distance=..15] ~ ~ ~
#minecraft:entity.wither.hurt ambient @a ~ ~ ~ 0.2 0.1



kill @s