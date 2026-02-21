execute store result score @s cryptid.player.random run random value 1..20000

execute if score @s cryptid.player.random matches 1 run data merge entity @s {CustomName:'{"text":"Lsᴉsdǝs"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 2 run data merge entity @s {CustomName:'{"text":"ɹǝɔuɐɔ"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 3 run data merge entity @s {CustomName:'{"text":"ɯsᴉloqɯǝ"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 4 run data merge entity @s {CustomName:'{"text":"ƃuᴉɥʇɐǝɹq"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 5 run data merge entity @s {CustomName:'{"text":"sᴉsoʇɐɯoɹɥɔoɯǝɐH"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 6 run data merge entity @s {CustomName:'{"text":"0x2ff689d09"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 7 run data merge entity @s {CustomName:'{"text":"0x7ff6474009"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 8 run data merge entity @s {CustomName:'{"text":"0000000000000000"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 9 run data merge entity @s {CustomName:'{"text":"invalid"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 10 run data merge entity @s {CustomName:'{"text":"ɐᴉɯǝu∀"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 11 run data merge entity @s {CustomName:'{"text":"64"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 12 run data merge entity @s {CustomName:'{"text":"ɐɹndɹnԀ"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 13 run data merge entity @s {CustomName:'{"text":"lightsout"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 14 run data merge entity @s {CustomName:'{"text":"0x32"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 15 run data merge entity @s {CustomName:'{"text":"lɐɹᴉʌ"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 16 run data merge entity @s {CustomName:'{"text":"4"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 17 run data merge entity @s {CustomName:'{"text":"16"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 18 run data merge entity @s {CustomName:'{"text":"666"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 19 run data merge entity @s {CustomName:'{"text":"0x00007FF8D5E7CD29"}',CustomNameVisible:1b,NoAI:1}
execute if score @s cryptid.player.random matches 20 run data merge entity @s {CustomName:'{"text":"cryptid.entity.class.5"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 21 run data merge entity @s {CustomName:'{"text":"invalid.method"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 22 run data merge entity @s {CustomName:'{"text":"kill()"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 23 run data merge entity @s {CustomName:'{"text":"inGround"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 24 run data merge entity @s {CustomName:'{"text":"Calcified"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 25 run data merge entity @s {CustomName:'{"text":"Mastadon"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 26 run data merge entity @s {CustomName:'{"text":"vradio"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 27 run data merge entity @s {CustomName:'{"text":"sk1n"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 28 run data merge entity @s {CustomName:'{"text":"H2"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 29 run data merge entity @s {CustomName:'{"text":"artery"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 30 run data merge entity @s {CustomName:'{"text":"tag.harrow.trackable"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 31 run data merge entity @s {CustomName:'{"text":"tag.fhursday"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 32 run data merge entity @s {CustomName:'{"text":"tag.thordude"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 33 run data merge entity @s {CustomName:'{"text":"tag.steampwred"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 34 run data merge entity @s {CustomName:'{"text":"betyourlife"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 35 run data merge entity @s {CustomName:'{"text":"Hersical"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 36 run data merge entity @s {CustomName:'{"text":"tag.harrow.trackable"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 38 run data merge entity @s {CustomName:'{"text":"tag.BaronOfSomething"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 39 run data merge entity @s {CustomName:'{"text":"tag.null"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 40 run data merge entity @s {CustomName:'{"text":"Freedom"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 41 run data merge entity @s {CustomName:'{"text":"Navoj"}',CustomNameVisible:1b}

execute if score @s cryptid.player.random matches 1..80 run tag @s add cryptid.cursed
execute if score @s cryptid.player.random matches 1..80 run tag @s add cryptid
execute if score @s cryptid.player.random matches 1..80 run function cryptid:action/general/spawntickmarker {"name":"tickcursed"}



execute if score @p cryptid.player.harmony matches -20000..-10000 run execute store result score @s cryptid.player.random run random value 1..1000

execute if score @p cryptid.player.harmony matches -10000..-5000 run execute store result score @s cryptid.player.random run random value 1..1600

execute if score @p cryptid.player.harmony matches -5000..5000 run execute store result score @s cryptid.player.random run random value 1..2500

execute if score @p cryptid.player.harmony matches 5000..20000 run execute store result score @s cryptid.player.random run random value 1..3200


execute if score @s cryptid.player.random matches 1..12 run function cryptid:events/underground/spawndecimator

##spawn tumors, this can be reworked later

execute if score .global cryptid.world.fury matches 40..70 if entity @a[distance=1..70] at @s if entity @s[y=-21, dy=60] run function cryptid:events/general/spawntumor
execute if score .global cryptid.world.fury matches 40..70 if entity @a[distance=1..70] at @s if entity @s[y=-21, dy=60] run kill @s


execute as @s at @s if score @s[y=53,dy=-128] cryptid.player.random matches 38..44 run function cryptid:events/cryptid/grabber

tag @s add cryptid.nameinit

