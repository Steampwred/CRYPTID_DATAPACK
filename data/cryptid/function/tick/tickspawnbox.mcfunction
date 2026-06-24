execute as @s[tag=!init] run scoreboard players set @s cryptid.timer 2000
execute as @s[tag=!init] run playsound minecraft:cryptid.jelly.cloud ambient @a ~ ~ ~ 0.16 0.1
execute as @s[tag=!init] run tag @s add init



execute if score @p cryptid.trigger.tutorialskip matches 1 run scoreboard players set @s cryptid.timer 80
execute as @p if score @s cryptid.trigger.tutorialskip matches 1 run scoreboard players reset @s cryptid.trigger.tutorialskip

##display tutorials

execute if score @s cryptid.timer matches 1900 run tellraw @a[distance=0..10] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"Scroll up for more info! (And turn up entity distance in video settings!)","bold":false,"color":"red"}, {"text":"\n\nCLICK TO JOIN DISCORD","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/RZjTKNRJpR"}}, {"text":"\n"}]
execute if score @s cryptid.timer matches 1900 run tellraw @a[distance=0..10] ["skip tutorial: ",{"text":"CLICK ","clickEvent":{"action":"run_command","value":"/trigger cryptid.trigger.tutorialskip set 1"},"bold":true,"color":"red"}]


execute if score @s cryptid.timer matches 1600..2000 run title @a[distance=0..10] actionbar {"text":"Welcome to CRYPTID. This tutorial will help increase your life expectancy.","color":"red"}

execute if score @s cryptid.timer matches 1400..1600 run title @a[distance=0..10] actionbar {"text":"In your inventory you have been given several starter items. Do not lose them.","color":"red"}

execute if score @s cryptid.timer matches 1200..1400 run title @a[distance=0..10] actionbar {"text":"The radio is by far the most useful, displaying everything you need to know to survive.","color":"red"}

execute if score @s cryptid.timer matches 1000..1200 run title @a[distance=0..10] actionbar {"text":"Displayed on it will be your harmony and flux, you can think of these as how much this world likes you.","color":"red"}

execute if score @s cryptid.timer matches 800..1000 run title @a[distance=0..10] actionbar {"text":"But keeping good behavior only delays destruction, it does not prevent it.","color":"red"}

execute if score @s cryptid.timer matches 600..800 run title @a[distance=0..10] actionbar {"text":"Keeping away from the hearts, and staying the light will serve you well.","color":"red"}

execute if score @s cryptid.timer matches 400..600 run title @a[distance=0..10] actionbar {"text":"But if you choose a more violent approach, I cannot stop you.","color":"red"}

execute if score @s cryptid.timer matches 200..400 run title @a[distance=0..10] actionbar {"text":"Crafting special items, like the one you were just given, will be of huge benefit to you.","color":"red"}

execute if score @s cryptid.timer matches 80..200 run title @a[distance=0..10] actionbar {"text":"Remember, your lives and time are both limited.","color":"red"}

execute if score @s cryptid.timer matches 0..80 run title @a[distance=0..10] actionbar {"text":"Find the root below the bedrock, and save our world.","color":"red"}



##bugfix
execute as @a[tag=tutorial.active, distance=9..] run playsound minecraft:cryptid.screen.corrupted ambient @a
execute as @a[tag=tutorial.active, distance=9..] run tellraw @a {"text":"Do not.","color":"red"}
execute as @a[tag=tutorial.active, distance=9..] at @e[tag=cryptid.spawnbox, type=armor_stand, limit=1] positioned ~ ~5 ~ run tp @s ~ ~ ~


##particle
particle minecraft:crimson_spore ~ ~-3 ~ 0.1 0.1 0.1 0.1 50


## end
execute if score @s cryptid.timer matches ..0 run function cryptid:tick/player/tutorial/killtutorial