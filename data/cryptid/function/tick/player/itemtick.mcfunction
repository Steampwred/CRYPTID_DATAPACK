
###check for bee balm

execute if items entity @s inventory.* sugar[minecraft:custom_data~{cryptid.usedhoney:1b}] run function cryptid:action/player/usebalm
execute if items entity @s hotbar.* sugar[minecraft:custom_data~{cryptid.usedhoney:1b}] run function cryptid:action/player/usebalm


##kill bad shotguns
execute if items entity @s hotbar.* minecraft:crossbow[custom_data~{fakeshotgun:1b}] run function cryptid:action/give/giveshotgun
execute if items entity @s hotbar.* minecraft:crossbow[custom_data~{fakeshotgun:1b}] run clear @s crossbow[custom_data~{fakeshotgun:1b}]


execute if items entity @s hotbar.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.voidtotem:1}] run effect give @s night_vision 12 12 true


##kill bad radars
execute if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.fakeradar:1b}] run function cryptid:action/give/giveradar

##handtick
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.arm:1b}] run function cryptid:action/arm/tickarm


##tick radar
execute if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.radar:1}] run function cryptid:action/radar/tickradar
execute as @s at @s[scores={cryptid.click=1}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.radar:1}] run function cryptid:action/radar/scanradar

## tick totem
execute if items entity @s weapon.mainhand minecraft:villager_spawn_egg[minecraft:custom_model_data=1319] run execute if entity @e[tag=!cryptid.lessertotem,tag=cryptid, distance=0..5] at @s run function cryptid:action/repell

## Tick knife
execute as @s at @s[scores={cryptid.click=1}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.athame:1}] anchored eyes positioned ^ ^ ^ run function cryptid:action/ritual/athame/usemainhand
execute as @s at @s[scores={cryptid.click=1}] if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.athame:1}] anchored eyes positioned ^ ^ ^ run function cryptid:action/ritual/athame/useoffhand


##read totem

execute if items entity @s hotbar.* minecraft:villager_spawn_egg[minecraft:custom_data~{faketotem:1b}] run function cryptid:action/give/givetotem
execute if items entity @s hotbar.* minecraft:villager_spawn_egg[minecraft:custom_data~{faketotem:1b}] run clear @s minecraft:villager_spawn_egg[minecraft:custom_data~{faketotem:1b}] 1


##read trap
execute if items entity @s hotbar.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakebeartrap:1b}] run function cryptid:action/give/givetrap
execute if items entity @s hotbar.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakebeartrap:1b}] run clear @s warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakebeartrap:1b}] 1

##use item
execute if items entity @s[scores={cryptid.click=1..}] weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.beartrap:1}] run function cryptid:action/trap/placetrap


##updating items functions

execute as @s[tag=!deadradio] at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:1b}] run item modify entity @s weapon.mainhand cryptid:setcompass
execute as @s[tag=!deadradio] at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run item modify entity @s weapon.mainhand cryptid:setcompass2
execute as @s[tag=!deadradio] at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:3b}] run item modify entity @s weapon.mainhand cryptid:setcompass3


##eatinghearts logic gross right?
execute as @s at @s if items entity @s container.* minecraft:sugar[minecraft:custom_data~{cryptid.heatenheart:1b}] run function cryptid:events/gainlife

##missing radio
tag @s add cryptid.missingradio
execute as @s if items entity @s weapon.* sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s remove cryptid.missingradio
execute as @s if items entity @s hotbar.* sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s remove cryptid.missingradio
execute as @s if items entity @s inventory.* sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s remove cryptid.missingradio


####machete and warped fungus ticks item checks

execute as @s at @s[scores={cryptid.player.crouch=1..,cryptid.click=1}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run function cryptid:action/sword/clear

execute as @s at @s if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run execute as @e[tag=cryptid, distance=0..5, nbt={HurtTime:7s}] run function cryptid:action/sword/slow

execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakeblade:1b}] run function cryptid:action/give/givemachete

##general tiem cghecks ------------------------

##lantern and lantern item checks
scoreboard players remove @s[scores={cryptid.item.lantern.cooldown=1..}] cryptid.item.lantern.cooldown 1

execute as @s at @s[scores={cryptid.click=1,cryptid.item.lantern.cooldown=..3}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run function cryptid:action/lantern/harmony

execute as @s at @s[scores={cryptid.click=1,cryptid.item.lantern.cooldown=4..}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run title @s actionbar [{"text":"Lantern on cooldown!","color":"red"}]

execute as @s[scores={cryptid.damagetaken=1..}] at @s if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run execute as @e[distance=0.1..5] at @s run function cryptid:action/lantern/ignite

execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakelantern:1b}] run function cryptid:action/give/givelantern
execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakelantern:1b}] run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakelantern:1b}] 1


##replace bad nightmare catcher
execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakecatcher:1b}] run function cryptid:action/give/givecatcher
execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakecatcher:1b}] run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakecatcher:1b}] 1
##replace bad pickaxe
execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakepick:1b}] run function cryptid:action/give/givepick
execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakepick:1b}] run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakepick:1b}] 1

##nightmare catcher


execute as @s[scores={cryptid.click=1..}] at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.catcher:1}] run function cryptid:action/catcher/placecatcher

execute as @s[scores={cryptid.player.crouch=1..,cryptid.click=1..,cryptid.pick.cooldown=..2}] at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.pickaxe:1}] run function cryptid:action/pickaxe/usepick



##item info
##totem
execute as @s at @s if items entity @s[tag=!cryptid.info.totem] weapon.mainhand minecraft:villager_spawn_egg[minecraft:custom_model_data=1319] run tellraw @s {"text":"[???] item.obtained.totem. This server totem requires fuel to function.\n {Hold it to ward}, at the cost of breaking it","color":"dark_red"}
execute as @s at @s if items entity @s[tag=!cryptid.info.totem] weapon.mainhand minecraft:villager_spawn_egg[minecraft:custom_model_data=1319] run tag @s add cryptid.info.totem
##catcher
execute as @s at @s if items entity @s[tag=!cryptid.info.catcher] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.catcher:1}] run tellraw @s {"text":"[???] item.obtained.dream_catcher. This thing will keep your nightmares away... at a cost\n Place it down to keep hearts away at night.\n However, it will attract other unwanted attention","color":"dark_red"}
execute as @s at @s if items entity @s[tag=!cryptid.info.catcher] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.catcher:1}] run tag @s add cryptid.info.catcher

execute as @s at @s if items entity @s[tag=!cryptid.info.pick] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.pickaxe:1}] run tellraw @s {"text":"[???] item.obtained.pickaxe. Quite the heavy item. It'll make finding hearts a bit easier, and its a good pickaxe before you get some diamonds","color":"dark_red"}
execute as @s at @s if items entity @s[tag=!cryptid.info.pick] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.pickaxe:1}] run tag @s add cryptid.info.pick


##shotgun
execute as @s[tag=!cryptid.info.shotgun] at @s if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:1b}] run tellraw @s {"text":"[???] item.obtained.shotgun. Theres no ammo for it. Upgrade it by dropping two shotguns together. The range is limited, but you can break glass and doors with it as well. Just hold it steady, and watch out for kickback.","color":"dark_red"}
execute as @s[tag=!cryptid.info.shotgun] at @s if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:1b}] run tag @s add cryptid.info.shotgun
##sword
execute as @s[tag=!cryptid.info.blade] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run tellraw @s {"text":"[???] item.obtained.machete. That thing looks a little rusty. It's a good melee, and clears flesh out fast.","color":"dark_red"}
execute as @s[tag=!cryptid.info.blade] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run tag @s add cryptid.info.blade
##lantern
execute as @s[tag=!cryptid.info.lantern] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run tellraw @s {"text":"[???] item.obtained.lantern. Pretty sure that thing has a soul trapped inside of it. Don't light your friends on fire.","color":"dark_red"}
execute as @s[tag=!cryptid.info.shotgun] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run tag @s add cryptid.info.lantern


##other shotguns

execute unless items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shot:1}] run tag @s remove shootingun


execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:1}] run item replace entity @s weapon.mainhand with crossbow[charged_projectiles=[{id:"minecraft:firework_rocket", count:1, components:{"minecraft:custom_model_data":1300,custom_data:{cryptid.shotgunarrow:1b},custom_name:'["",{"text":"Shrapnel round","italic":false}]'}}], custom_name='["",{"text":"Bloodsteel Shotgun","italic":false,"color":"red"}]',lore=['["",{"text":"Smells like copper","italic":false,"color":"dark_red"}]'],custom_data={cryptid.shotgun:1,cryptid.shot:1,cryptid.item:1},custom_model_data=1300]

execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:1}] run item replace entity @s weapon.offhand with crossbow[charged_projectiles=[{id:"minecraft:firework_rocket", count:1, components:{"minecraft:custom_model_data":1300,custom_data:{cryptid.shotgunarrow:1b},custom_name:'["",{"text":"Shrapnel round","italic":false}]'}}], custom_name='["",{"text":"Bloodsteel Shotgun","italic":false,"color":"red"}]',lore=['["",{"text":"Smells like copper","italic":false,"color":"dark_red"}]'],custom_data={cryptid.shotgun:1,cryptid.shot:1,cryptid.item:1},custom_model_data=1300]

execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:2}] run item replace entity @s weapon.mainhand with crossbow[custom_name='["",{"text":"Bloodsteel Double Barrel Shotgun","italic":false,"color":"red"}]',lore=['["",{"text":"When one barrel isn\'t enough.","italic":false,"color":"gray"}]'],charged_projectiles=[{id:"minecraft:firework_rocket", count:1, components:{"minecraft:custom_model_data":1300,custom_data:{cryptid.shotgunarrow:2b},custom_name:'["",{"text":"Shrapnel round","italic":false}]'}}],custom_data={cryptid.shotgun:2,cryptid.shot:1,cryptid.item:1},custom_model_data=1301]

execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:2}] run item replace entity @s weapon.offhand with crossbow[custom_name='["",{"text":"Bloodsteel Double Barrel Shotgun","italic":false,"color":"red"}]',lore=['["",{"text":"When one barrel isn\'t enough.","italic":false,"color":"gray"}]'],charged_projectiles=[{id:"minecraft:firework_rocket", count:1, components:{"minecraft:custom_model_data":1300,custom_data:{cryptid.shotgunarrow:2b},custom_name:'["",{"text":"Shrapnel round","italic":false}]'}}],custom_data={cryptid.shotgun:2,cryptid.shot:1,cryptid.item:1},custom_model_data=1301]

execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:3}] run item replace entity @s weapon.mainhand with crossbow[custom_name='["",{"text":"Bloodsteel Quad Barrel Shotgun","italic":false,"color":"red"}]',lore=['["",{"text":"And when that dont work, just add more gun","italic":false,"color":"gray"}]'],charged_projectiles=[{id:"minecraft:firework_rocket", count:1, components:{"minecraft:custom_model_data":1300,custom_data:{cryptid.shotgunarrow:3b},custom_name:'["",{"text":"Shrapnel round","italic":false}]'}}],custom_data={cryptid.shotgun:3,cryptid.shot:1,cryptid.item:1},custom_model_data=1302]

execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:3}] run item replace entity @s weapon.offhand with crossbow[custom_name='["",{"text":"Bloodsteel Quad Barrel Shotgun","italic":false,"color":"red"}]',lore=['["",{"text":"And when that dont work, just add more gun","italic":false,"color":"gray"}]'],charged_projectiles=[{id:"minecraft:firework_rocket", count:1, components:{"minecraft:custom_model_data":1300,custom_data:{cryptid.shotgunarrow:3b},custom_name:'["",{"text":"Shrapnel round","italic":false}]'}}],custom_data={cryptid.shotgun:3,cryptid.shot:1,cryptid.item:1},custom_model_data=1302]

execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data~{cryptid.shot:1}] run function cryptid:tick/tickshotgun

##############title display

execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run function cryptid:tick/player/harmonycheck




execute if items entity @s[scores={cryptid.sprinting=0,cryptid.walking=0,cryptid.inair=0}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:1b}] run title @s[tag=!deadradio] actionbar ["",{"text":"[RADIO]","color":"red"},": <",{"text":"Flux Rating","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.flux","name":"@s"}},{"color":"#996633","text":"}, "},"<",{"text":"Harmony","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.harmony","name":"@s"}},{"color":"#996633","text":"},"},"<",{"text":"Strength Rating","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.strength","name":"@s"}},{"color":"#996633","text":"}"}]

#execute if items entity @s[scores={cryptid.sprinting=0,cryptid.walking=0,cryptid.inair=0}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run title @s[tag=!deadradio] actionbar ["",{"text":"[RADIO]","color":"red"},": <",{"text":"Tracking Cryptid","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"selector":"@e[tag=cryptid,sort=nearest, limit=1]"},{"text":"}, ","color":"#996633"},"<",{"text":"Cryptid Class","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.mob.class","name":"@e[tag=cryptid, sort=nearest, limit=1]"}},{"text":"}","color":"#996633"}]


execute if items entity @s[scores={cryptid.sprinting=0,cryptid.walking=0,cryptid.inair=0}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:3b}] run title @s[tag=!deadradio] actionbar ["",{"text":"[RADIO]","color":"red"},": <",{"text":"Distance To Heart","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.player.heart.distance","name":"@s"}},{"text":"}, ","color":"#996633"},"<",{"text":"Event Percent","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"text":"0.000","color":"white"},{"score":{"objective":"cryptid.player.event","name":"@s"}},{"text":"}, ","color":"#996633"},"<",{"text":"Heart Capsules","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.maxlives","name":"@s"}},{"text":"}","color":"#996633"}]



##disc1
execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run playsound cryptid.disc1 ambient @a[distance=0..30] ~ ~ ~ 1200 1 1
execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run time add 3000
execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run tellraw @s {"text":"The tape crumbles in your hands","color":"dark_red"}



execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run item replace entity @s weapon.mainhand with air


##radio

