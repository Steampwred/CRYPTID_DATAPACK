execute unless block ~ ~1 ~ #cryptid:occultfocus as @s[tag=ritual.translate] run tellraw @a[distance=..10] {"text":"Ritual Focus Invalid","color":"dark_purple","bold":true}

# Tier 0 Focus Blocks
execute if block ~ ~1 ~ redstone_block run scoreboard players remove @s cryptid.ritual.stability 1
execute if block ~ ~1 ~ red_terracotta run scoreboard players remove @s cryptid.ritual.stability 3
execute if block ~ ~1 ~ nether_wart_block run scoreboard players remove @s cryptid.ritual.stability 5
execute if block ~ ~1 ~ netherrack run scoreboard players remove @s cryptid.ritual.stability 8
execute if block ~ ~1 ~ red_concrete run scoreboard players remove @s cryptid.ritual.stability 15


# Tier 1 Focus Blocks

execute if block ~ ~1 ~ copper_block run scoreboard players add @s cryptid.ritual.stability 3
execute if block ~ ~1 ~ waxed_copper_block run scoreboard players add @s cryptid.ritual.stability 3
execute if block ~ ~1 ~ iron_block run scoreboard players add @s cryptid.ritual.stability 4
execute if block ~ ~1 ~ amethyst_block run scoreboard players add @s cryptid.ritual.stability 5


# Tier 2 Focus Blocks
execute if block ~ ~1 ~ lapis_block run scoreboard players add @s cryptid.ritual.stability 7
execute if block ~ ~1 ~ gold_block run scoreboard players add @s cryptid.ritual.stability 10

# Tier 3 Focus Blocks
execute if block ~ ~1 ~ diamond_block run scoreboard players add @s cryptid.ritual.stability 13
execute if block ~ ~1 ~ netherite_block run scoreboard players add @s cryptid.ritual.stability 15

