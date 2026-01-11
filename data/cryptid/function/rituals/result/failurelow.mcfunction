execute store result score @s cryptid.random run random value 1..2
execute if score @s cryptid.random matches 1 run function cryptid:rituals/ritualmishap/low1
execute if score @s cryptid.random matches 2 run function cryptid:rituals/ritualmishap/low2