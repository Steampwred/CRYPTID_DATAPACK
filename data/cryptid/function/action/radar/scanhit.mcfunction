summon minecraft:item_display ~ ~ ~ {Tags:["cryptid.radar.highlight","cryptid","cryptid.ignore.radar","cryptid.ignore.totemward"], Glowing:1b, item:{count: 1, id: "minecraft:air"}, item_display: "none", glow_color_override: 16711680, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 3.0f, 0.0f], translation: [0.0f, -0.5f, 0.0f]},billboard: "center"}
execute as @n[type=item_display, tag=cryptid.radar.highlight, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickradarhighlight"}

ride @n[distance=..3,type=minecraft:item_display,tag=cryptid.radar.highlight] mount @s
