tag @s add active

playsound minecraft:cryptid.music.presenceloop ambient @a[distance=0..50]


tellraw @a {"translate":"chat.cryptid.boss.intro.greeting"}





##reset tags

scoreboard players set @s cryptid.boss.musictime 0
scoreboard players set @s cryptid.boss.10 20
scoreboard players set @s cryptid.bosstime 0
