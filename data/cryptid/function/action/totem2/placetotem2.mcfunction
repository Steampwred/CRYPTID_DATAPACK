summon armor_stand ~ ~ ~ {PersistenceRequired:1b,NoAI:1, Tags:["cryptid.totem2"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1416},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.totem2:1}] 1
particle minecraft:large_smoke ~ ~2 ~ 1.5 1.5 1.5 0.1 330
playsound minecraft:block.amethyst_block.break ambient @a ~ ~ ~ 1 0.01