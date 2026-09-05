summon minecraft:vindicator ~ 400 ~ {Invisible:1,CustomName:'[{"translate":"cryptid.entity.invisguy"}]', Tags:["cryptid","cryptid.invisguy"], Silent:1b, Invulnerable:1}
scoreboard players set @a[distance=..25] cryptid.player.titlecooldown 40
title @p actionbar [{"translate":"cryptid.message.invisguy.help","color":"dark_red"}]




execute as @e[type=vindicator, tag=cryptid.invisguy, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickinvisguy"}


execute as @e[type=vindicator, tag=cryptid.invisguy] at @s run effect give @s invisibility infinite 1 true
execute as @e[type=vindicator, tag=cryptid.invisguy] at @s run effect give @s speed infinite 1 true

execute as @e[type=vindicator, tag=cryptid.invisguy] at @s run attribute @s generic.scale base set 2