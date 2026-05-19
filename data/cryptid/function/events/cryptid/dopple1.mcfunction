execute store result score @s cryptid.player.random run random value 1..7
execute if score @s cryptid.player.random matches 1 run tellraw @s {"text":":)","color":"red"}


execute store result score @s cryptid.player.random run random value 1..10


summon vindicator ~ ~120 ~ {CustomName:'[{"text":"Friend"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.dopple"],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.player.random matches 1 run summon villager ~ ~122 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 2 run summon cow ~ ~123 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 3 run summon sheep ~ ~124 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 4 run summon chicken ~ ~125 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 5 run summon pig ~ ~126 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 6 run summon horse ~ ~127 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 7 run summon wolf ~ ~128 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 8 run summon llama ~ ~129 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 9 run summon witch ~ ~130 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 10 run summon spider ~ ~131 ~ {Invulnerable:1b, PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.doppleclone"],ArmorDropChances:[0f,0f,0f,0f]}





execute positioned ~ ~120 ~ run execute store result score @e[tag=!init,type=vindicator, sort=nearest, tag=cryptid.dopple, limit=1] cryptid.dopple.id run data get entity @e[type=vindicator, sort=nearest, tag=cryptid.dopple, limit=1] UUID[0]

execute positioned ~ ~120 ~ run tag @e[tag=!init,type=vindicator, sort=nearest, tag=cryptid.dopple, limit=1] add init


execute positioned ~ ~120 ~ run scoreboard players operation @e[tag=!init,tag=cryptid.doppleclone, sort=nearest, limit=1] cryptid.dopple.id = @e[type=vindicator, sort=nearest, tag=cryptid.dopple, limit=1] cryptid.dopple.id

execute positioned ~ ~120 ~ run tag @e[tag=!init,sort=nearest, tag=cryptid.doppleclone, limit=1] add init


execute positioned ~ ~120 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.dopple] minecraft:invisibility infinite 1 true
execute positioned ~ ~120 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.dopple] minecraft:slowness infinite 1 true
execute positioned ~ ~120 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.dopple] minecraft:weakness infinite 200 true
execute positioned ~ ~120 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.dopple] minecraft:regeneration infinite 1 true

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.jump_strength base set 0.3

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.step_height base set 5

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.scale base set 0.3

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.knockback_resistance base set 200

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.fall_damage_multiplier base set 0

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.water_movement_efficiency base set 1

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.max_health base set 40

execute positioned ~ ~120 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] minecraft:generic.follow_range base set 20000

execute positioned ~ ~120 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.dopple,limit=1] cryptid.mob.class 6


execute as @e[type=vindicator, tag=cryptid.dopple, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdopple"}

execute positioned ~ ~120 ~ as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.dopple] at @s run function cryptid:action/general/placerandom {"min":"40","max":"90","underheight":"500"}


team join cryptid.nocollide @e[tag=cryptid.dopple, type=vindicator]
team join cryptid.nocollide @e[tag=cryptid.doppleclone]

function cryptid:events/cryptid/flicker4


