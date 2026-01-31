execute unless block ~ ~1 ~ #cryptid:occultfocus as @s[tag=ritual.translate] run tellraw @a[distance=..10] {"text":"Ritual Focus Invalid","color":"dark_purple","bold":true}
execute unless block ~ ~1 ~ #cryptid:occultfocus as @s run fill ~ ~1 ~ ~ ~1 ~ air destroy
execute unless block ~ ~1 ~ #cryptid:occultfocus as @s run return fail


scoreboard players add @s cryptid.ritual.focicount 1
#execute if block ~ ~1 ~ #cryptid:occultfocus run summon armor_stand ~ ~1 ~ {Tags:["cryptid","cryptid.occultfocusmarker"],Invisible:1b,NoGravity:1b}
#execute if block ~ ~1 ~ #cryptid:occultfocus as @n[tag=cryptid.occultfocusmarker] at @s run function cryptid:action/general/spawntickmarker {"name":"tickocultfocus"}
execute if score @s cryptid.ritual.focicount matches 6.. run fill ~ ~ ~ ~ ~1 ~ air destroy
execute if score @s[tag=ritual.translate] cryptid.ritual.focicount matches 6.. run tellraw @a[distance=..10] {"text":"Maximum Foci Reached","color":"dark_purple","bold":true}


particle dust_color_transition{from_color:[0.2,0.2,0.2],to_color:[1.0,1.0,1.0],scale:4} ~ ~1 ~ 0.5 0.5 0.5 3 80
playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 1 1.4

##### Stability Values of each Focus Block

### Tier 0 Focus Blocks
execute if block ~ ~1 ~ redstone_block run scoreboard players remove @s cryptid.ritual.stability 1
execute if block ~ ~1 ~ red_terracotta run scoreboard players remove @s cryptid.ritual.stability 3
execute if block ~ ~1 ~ nether_wart_block run scoreboard players remove @s cryptid.ritual.stability 5
execute if block ~ ~1 ~ netherrack run scoreboard players remove @s cryptid.ritual.stability 8
execute if block ~ ~1 ~ red_concrete run scoreboard players remove @s cryptid.ritual.stability 15

### Tier 1 Focus Blocks
execute if block ~ ~1 ~ copper_block run scoreboard players add @s cryptid.ritual.stability 3
execute if block ~ ~1 ~ iron_block run scoreboard players add @s cryptid.ritual.stability 4
# single use
execute if block ~ ~1 ~ amethyst_block run scoreboard players add @s cryptid.ritual.stability 5


# Tier 2 Focus Blocks
execute if block ~ ~1 ~ gold_block run scoreboard players add @s cryptid.ritual.stability 7
execute if block ~ ~1 ~ emerald_block run scoreboard players add @s cryptid.ritual.stability 10
# single use
execute if block ~ ~1 ~ redstone_block run scoreboard players add @s cryptid.ritual.stability 10
execute if block ~ ~1 ~ lapis_block run scoreboard players add @s cryptid.ritual.stability 10

# Tier 3 Focus Blocks
execute if block ~ ~1 ~ diamond_block run scoreboard players add @s cryptid.ritual.stability 13
execute if block ~ ~1 ~ netherite_block run scoreboard players add @s cryptid.ritual.stability 15

##### Transmute Focuses to less valueble blocks

fill ~ ~1 ~ ~ ~1 ~ nether_wart_block replace redstone_block
fill ~ ~1 ~ ~ ~1 ~ nether_wart_block replace lapis_block
fill ~ ~1 ~ ~ ~1 ~ nether_wart_block replace amethyst_block 


fill ~ ~1 ~ ~ ~1 ~ red_concrete replace netherrack
fill ~ ~1 ~ ~ ~1 ~ netherrack replace red_terracotta
fill ~ ~1 ~ ~ ~1 ~ red_terracotta replace nether_wart_block
fill ~ ~1 ~ ~ ~1 ~ nether_wart_block replace copper_block

fill ~ ~1 ~ ~ ~1 ~ copper_block replace iron_block
fill ~ ~1 ~ ~ ~1 ~ iron_block replace gold_block
fill ~ ~1 ~ ~ ~1 ~ gold_block replace emerald_block
fill ~ ~1 ~ ~ ~1 ~ emerald_block replace diamond_block
fill ~ ~1 ~ ~ ~1 ~ diamond_block replace netherite_block







