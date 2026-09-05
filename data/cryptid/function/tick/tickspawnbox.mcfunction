execute as @s[tag=!init] run scoreboard players set @s cryptid.timer 2000
execute as @s[tag=!init] run scoreboard players set @s cryptid.player.titlecooldown 4000
execute as @s[tag=!init] run playsound minecraft:cryptid.jelly.cloud ambient @a ~ ~ ~ 0.16 0.1
execute as @s[tag=!init] run tag @s add init



execute if score @p cryptid.trigger.tutorialskip matches 1 run scoreboard players set @s cryptid.timer 80
execute as @p if score @s cryptid.trigger.tutorialskip matches 1 run scoreboard players reset @s cryptid.trigger.tutorialskip

##display tutorials

execute if score @s cryptid.timer matches 1900 run tellraw @a[distance=0..10] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"translate":"cryptid.tutorial.scroll_info","bold":false,"color":"red"}, {"text":"\n\n"},{"translate":"cryptid.tutorial.discord_join","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/RZjTKNRJpR"}}, {"text":"\n"}]
execute if score @s cryptid.timer matches 1900 run tellraw @a[distance=0..10] ["",{"translate":"cryptid.tutorial.skip_prefix"},{"text":" "},{"translate":"cryptid.tutorial.skip_click","clickEvent":{"action":"run_command","value":"/trigger cryptid.trigger.tutorialskip set 1"},"bold":true,"color":"red"}]


execute if score @s cryptid.timer matches 1600..2000 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.welcome","color":"red"}

execute if score @s cryptid.timer matches 1400..1600 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.items","color":"red"}

execute if score @s cryptid.timer matches 1200..1400 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.radio","color":"red"}

execute if score @s cryptid.timer matches 1000..1200 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.harmony","color":"red"}

execute if score @s cryptid.timer matches 800..1000 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.behavior","color":"red"}

execute if score @s cryptid.timer matches 600..800 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.hearts","color":"red"}

execute if score @s cryptid.timer matches 400..600 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.violent","color":"red"}

execute if score @s cryptid.timer matches 200..400 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.crafting","color":"red"}

execute if score @s cryptid.timer matches 80..200 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.limited","color":"red"}

execute if score @s cryptid.timer matches 0..80 run title @a[distance=0..10] actionbar {"translate":"cryptid.tutorial.root","color":"red"}



##bugfix
execute as @a[tag=tutorial.active, distance=9..] run playsound minecraft:cryptid.screen.corrupted ambient @a
execute as @a[tag=tutorial.active, distance=9..] run tellraw @a {"translate":"cryptid.tutorial.do_not","color":"red"}
execute as @a[tag=tutorial.active, distance=9..] at @e[tag=cryptid.spawnbox, type=armor_stand, limit=1] positioned ~ ~5 ~ run tp @s ~ ~ ~


##particle
particle minecraft:crimson_spore ~ ~-3 ~ 0.1 0.1 0.1 0.1 50


## end
execute if score @s cryptid.timer matches ..0 run function cryptid:tick/player/tutorial/killtutorial