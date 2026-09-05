playsound minecraft:cryptid.world.detection

tellraw @s {"translate":"chat.cryptid.world.nobody_leaves"}

effect give @s minecraft:blindness 2 2 true


damage @s 1 cryptid:chomp by @s
