summon chicken ~ ~3 ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Lesser Bone Worm"}]',Health:120,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.worm","cryptid.radarignore"],attributes:[{id:"generic.gravity",base:1f},{id:"generic.movement_speed",base:0.25f},{id:"generic.step_height",base:1024f},{id:"generic.scale",base:0.0625f},{id:"generic.knockback_resistance",base:1f},{id:"generic.max_health",base:120f}]}
effect give @e[type=chicken, tag=cryptid.worm] invisibility infinite 1 true

summon chicken ~ ~1.2 ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Lesser Bone Worm"}]',Health:120,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.worm","cryptid.radarignore"],attributes:[{id:"generic.gravity",base:1f},{id:"generic.movement_speed",base:0.25f},{id:"generic.step_height",base:1024f},{id:"generic.scale",base:0.0625f},{id:"generic.knockback_resistance",base:1f},{id:"generic.max_health",base:120f}]}
effect give @e[type=chicken, tag=cryptid.worm] invisibility infinite 1 true

summon chicken ~ ~2.2 ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Lesser Bone Worm"}]',Health:120,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.worm","cryptid.radarignore"],attributes:[{id:"generic.gravity",base:1f},{id:"generic.movement_speed",base:0.25f},{id:"generic.step_height",base:1024f},{id:"generic.scale",base:0.0625f},{id:"generic.knockback_resistance",base:1f},{id:"generic.max_health",base:120f}]}
effect give @e[type=chicken, tag=cryptid.worm] invisibility infinite 1 true

summon chicken ~ ~3.3 ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Lesser Bone Worm"}]',Health:120,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.worm","cryptid.radarignore"],attributes:[{id:"generic.gravity",base:1f},{id:"generic.movement_speed",base:0.25f},{id:"generic.step_height",base:1024f},{id:"generic.scale",base:0.0625f},{id:"generic.knockback_resistance",base:1f},{id:"generic.max_health",base:120f}]}
effect give @e[type=chicken, tag=cryptid.worm] invisibility infinite 1 true

execute as @e[type=chicken, tag=cryptid.worm, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickboneworm"}
