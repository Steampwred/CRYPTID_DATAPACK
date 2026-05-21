execute if score @s cryptid.timer matches -3 if score @p cryptid.player.id = @s cryptid.player.id in cryptid:below run spreadplayers ~ ~ 100 10 under -80 true @p
execute if score @s cryptid.timer matches -3 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run playsound cryptid.house.fake ambient @s ~ ~ ~ 1 1.2


execute if score @s cryptid.timer matches -25 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"WELCOM","color":"red"}
execute if score @s cryptid.timer matches -50 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"WE","color":"red"}
execute if score @s cryptid.timer matches -100 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"ARE","color":"red"}
execute if score @s cryptid.timer matches -125 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"ALL","color":"red"}
execute if score @s cryptid.timer matches -150 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"SO","color":"red"}
execute if score @s cryptid.timer matches -200 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"PROUD","color":"red"}
execute if score @s cryptid.timer matches -250 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"OF","color":"red"}
execute if score @s cryptid.timer matches -275 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"YOU","color":"red"}


execute if score @s cryptid.timer matches -312 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s[name="BaronOfMinecraft"] title {"text":"Baron","color":"red"}


execute if score @s cryptid.timer matches -400 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"WE","color":"red"}
execute if score @s cryptid.timer matches -425 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"CANT","color":"red"}
execute if score @s cryptid.timer matches -450 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"WAIT","color":"red"}
execute if score @s cryptid.timer matches -475 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"TO","color":"red"}
execute if score @s cryptid.timer matches -500 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"BE","color":"red"}
execute if score @s cryptid.timer matches -550 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"FINNALLY","color":"red"}
execute if score @s cryptid.timer matches -600 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"WITH","color":"red"}
execute if score @s cryptid.timer matches -637 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"YOU","color":"red"}
execute if score @s cryptid.timer matches -650 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"T O G E T H E R","color":"red"}
execute if score @s cryptid.timer matches -660 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run title @s title {"text":"S U B S U M E D","color":"red"}


#execute if score @s cryptid.timer matches -80 if score @s cryptid.player.id = @e[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] player.id run execute in overworld run tp @s 0 200 0
execute if score @s cryptid.timer matches -700 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id run tp @s @n[tag=cryptid.dreamofanotherworld]

execute if score @s cryptid.timer matches -700 run forceload remove ~ ~ ~ ~
execute if score @s cryptid.timer matches -700 run kill @s



## Sound effect loop
scoreboard players remove @s cryptid.anitimer 1
execute if score @s cryptid.anitimer matches 0 run scoreboard players set @s cryptid.anitimer 10

execute as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id run effect give @s resistance 1 255 true
execute if score @s cryptid.anitimer matches 1 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run effect give @s night_vision 1 0 true
execute if score @s cryptid.anitimer matches 7 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] cryptid.player.id at @s run playsound cryptid.heartbeat ambient @s ~ ~ ~ 1 1.4