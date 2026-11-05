tag @s add active

playsound minecraft:cryptid.music.presenceloop ambient @a[distance=0..50]


tellraw @a {"translate":"chat.cryptid.boss.intro.greeting"}


tp @e[tag=boss.ring] 0 71 0
tp @s[tag=boss.core2] 0 69 0
tp @e[tag=boss.core1] 0 70 0
tp @e[tag=boss.core3] 0 58 0
##reset tags

scoreboard players set @s cryptid.boss.musictime 0
scoreboard players set @s cryptid.boss.10 20
scoreboard players set @s cryptid.bosstime 0
