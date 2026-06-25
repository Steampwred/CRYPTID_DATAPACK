scoreboard players add @a[distance=..20] cryptid.player.harmony 18000
scoreboard players remove .global cryptid.world.fury 150
#function cryptid:rituals/initial/orificecraving

execute store result score @s cryptid.player.random run random value 1..8
execute if score @s cryptid.player.random matches 1 run tellraw @a[distance=..10] {"text":"W E   A R E   S A T I A T E D","color":"red","bold":true}
execute if score @s cryptid.player.random matches 2 run tellraw @a[distance=..10] {"text":"NƎWIƆƎԀS S∩OIɹ∩Ɔ","color":"red","bold":true}
execute if score @s cryptid.player.random matches 3 run tellraw @a[distance=..10] {"text":"W E   A R E   P L E A S E D","color":"red","bold":false}
execute if score @s cryptid.player.random matches 4 run tellraw @a[distance=..10] {"text":" ᵧₒᵤ ₜₕₐₙₖ ᵧₒᵤ    ₜₕₐₙₖ ᵧₒᵤ (:","color":"red","bold":false}
execute if score @s cryptid.player.random matches 5 run tellraw @a[distance=..10] {"text":"W̸̥̓I̴̳̚T̷̗́N̵̟̓È̷̦Ś̶̯S̷̫͘ ̷̮̽S̸̹̚A̷͇̒M̴̻͌S̶͇̓Ȃ̵̠Ř̴̹À̶̟","color":"red","bold":true}
execute if score @s cryptid.player.random matches 6 run tellraw @a[distance=..10] {"text":"DEVOUR","color":"red","bold":true}
execute if score @s cryptid.player.random matches 7 run tellraw @a[distance=..10] {"text":"Enjoy your peace ;(","color":"red","bold":true}
execute if score @s cryptid.player.random matches 8 run tellraw @a[distance =..10] [{"text":"We.","color":"dark_red"},{"text":".. ours","color":"dark_red","obfuscated":true},{"text":"elv","color":"dark_red"},{"text":"es the mighty","color":"dark_red","obfuscated":true},{"text":" ROOT ","color":"dark_red"},{"text":"Burst","color":"dark_red","obfuscated":true},{"text":" forth","color":"dark_red"},{"text":"h and","color":"dark_red","obfuscated":true},{"text":" BREATH .. ... ","color":"dark_red"},{"selector":"@p","color":"dark_red"},{"text":" ","color":"dark_red"},{"text":"HEART","color":"dark_red","obfuscated":true},{"text":". ","color":"dark_red"},{"text":".. NUL","color":"dark_red"},{"text":"L","color":"dark_red","obfuscated":true},{"text":" is ","color":"dark_red"},{"text":"the good light","color":"dark_red","obfuscated":true},{"text":".... ","color":"dark_red"},{"text":"Texa","color":"dark_red","obfuscated":true},{"text":"s","color":"dark_red"}]


