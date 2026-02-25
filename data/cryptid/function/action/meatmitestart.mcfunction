summon armor_stand ~ ~ ~ {Invisible:1b, CanBreakDoors:1,CustomName:'[{"text":"Fleshy Outcrop"}]',Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.meatmite"],active_effects:[{id:levitation,duration:1928391,amplifier:3,show_particles:0b},{id:invisibility,duration:12039012,amplifier:1,show_particles:0b},{id:strength,duration:1203902,amplifier:-12,show_particles:0b}]}

particle dust_pillar{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0 500

playsound minecraft:entity.bogged.hurt ambient @a ~ ~ ~ 1 0.1

fill ~ ~-4 ~ ~ ~ ~ minecraft:red_concrete

execute as @e[type=armor_stand, tag=cryptid.meatmite, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickmeatmite"}
