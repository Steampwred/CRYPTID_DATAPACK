###check for bee balm

execute if items entity @s inventory.* sugar[minecraft:custom_data~{cryptid.usedhoney:1b}] run function cryptid:action/player/usebalm
execute if items entity @s hotbar.* sugar[minecraft:custom_data~{cryptid.usedhoney:1b}] run function cryptid:action/player/usebalm



##kill bad shotguns
execute if items entity @s hotbar.* minecraft:crossbow[custom_data~{fakeshotgun:1b}] run function cryptid:action/give/giveshotgun
execute if items entity @s hotbar.* minecraft:crossbow[custom_data~{fakeshotgun:1b}] run clear @s crossbow[custom_data~{fakeshotgun:1b}]


##kill bad axes
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.fakeaxe:1b}] run function cryptid:action/give/giveaxe
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.fakeaxe:1b}] run clear @s crossbow[custom_data~{cryptid.fakeaxe:1b}]


##voidtotem
execute if items entity @s hotbar.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.voidtotem:1}] run effect give @s night_vision 12 12 true


##kill bad radars
execute if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.fakeradar:1b}] run function cryptid:action/give/giveradar

##handtick
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.arm:1b}] run function cryptid:action/arm/tickarm


##tick radar
execute if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.radar:1}] run function cryptid:action/radar/tickradar
execute as @s at @s[scores={cryptid.click=1}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.radar:1}] run function cryptid:action/radar/scanradar

## tick totem
execute if items entity @s weapon.mainhand minecraft:villager_spawn_egg[minecraft:custom_model_data=1319] run execute if entity @e[tag=!cryptid.lessertotem,tag=cryptid, distance=0..5,tag=!cryptid.ignore.totemward] at @s run function cryptid:action/totem1/repell

## Tick athame knife
execute as @s at @s[scores={cryptid.click=1}] unless score @s cryptid.athame.cooldown matches -1.. if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.athame:1}] anchored eyes positioned ^ ^ ^ run function cryptid:rituals/athame/usemainhand
execute as @s at @s[scores={cryptid.click=1}] if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.athame:1}] anchored eyes positioned ^ ^ ^ run function cryptid:rituals/athame/useoffhand

execute if items entity @s[scores={cryptid.athame.cooldown=0}] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.athame:1}] run function cryptid:rituals/athame/return

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

##missing radio
tag @s add cryptid.missingradio
execute as @s if items entity @s weapon.* sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s remove cryptid.missingradio
execute as @s if items entity @s hotbar.* sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s remove cryptid.missingradio
execute as @s if items entity @s inventory.* sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s remove cryptid.missingradio



##axe envets tick
execute as @s at @s[scores={cryptid.click=1}] unless score @s cryptid.axe.cooldown matches 0.. if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.axe:1b}] run function cryptid:action/axe/swing
execute as @s at @s[scores={cryptid.damagedealt2=1..}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.axe:1b}] run function cryptid:action/axe/entitycheck

execute if items entity @s[scores={cryptid.axe.cooldown=-40..-1}] weapon.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.axe:1b}] if score @s cryptid.axe.swings matches ..0 run particle block{block_state:nether_wart_block} ~ ~1 ~ 0.1 0.1 0.1 0.1 1


####machete and warped fungus ticks item checks

execute as @s at @s[scores={cryptid.player.crouch=1..,cryptid.click=1}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run function cryptid:action/sword/clear

execute as @s at @s if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run execute as @e[tag=cryptid, distance=0..5, nbt={HurtTime:7s}] run function cryptid:action/sword/slow

execute as @s at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.fakeblade:1b}] run function cryptid:action/give/givemachete

##general tiem cghecks ------------------------

##lantern and lantern item checks

execute as @s at @s[scores={cryptid.click=1}] unless score @s cryptid.item.lantern.cooldown matches -1.. if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run function cryptid:action/lantern/harmony

execute as @s at @s[scores={cryptid.click=1,cryptid.item.lantern.cooldown=1..}] if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run title @s actionbar [{"translate":"cryptid.item.lantern.cooldown","color":"red"}]

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

execute as @s[scores={cryptid.player.crouch=1..,cryptid.click=1..}] unless score @s cryptid.pick.cooldown matches -1.. at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.pickaxe:1}] run function cryptid:action/pickaxe/usepick



##item info
##totem
execute as @s at @s if items entity @s[tag=!cryptid.info.totem] weapon.mainhand minecraft:villager_spawn_egg[minecraft:custom_model_data=1319] run tellraw @s {"translate":"cryptid.info.totem","color":"dark_red"}
execute as @s at @s if items entity @s[tag=!cryptid.info.totem] weapon.mainhand minecraft:villager_spawn_egg[minecraft:custom_model_data=1319] run tag @s add cryptid.info.totem
##catcher
execute as @s at @s if items entity @s[tag=!cryptid.info.catcher] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.catcher:1}] run tellraw @s {"translate":"cryptid.info.catcher","color":"dark_red"}
execute as @s at @s if items entity @s[tag=!cryptid.info.catcher] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.catcher:1}] run tag @s add cryptid.info.catcher

execute as @s at @s if items entity @s[tag=!cryptid.info.pick] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.pickaxe:1}] run tellraw @s {"translate":"cryptid.info.pick","color":"dark_red"}
execute as @s at @s if items entity @s[tag=!cryptid.info.pick] weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={cryptid.pickaxe:1}] run tag @s add cryptid.info.pick


##shotgun
execute as @s[tag=!cryptid.info.shotgun] at @s if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:1b}] run tellraw @s {"translate":"cryptid.info.shotgun","color":"dark_red"}
execute as @s[tag=!cryptid.info.shotgun] at @s if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{cryptid.shotgun:1b}] run tag @s add cryptid.info.shotgun
##sword
execute as @s[tag=!cryptid.info.blade] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run tellraw @s {"translate":"cryptid.info.blade","color":"dark_red"}
execute as @s[tag=!cryptid.info.blade] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.blade:1}] run tag @s add cryptid.info.blade
##lantern
execute as @s[tag=!cryptid.info.lantern] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run tellraw @s {"translate":"cryptid.info.lantern","color":"dark_red"}
execute as @s[tag=!cryptid.info.lantern] at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.lantern:1b}] run tag @s add cryptid.info.lantern


##other shotguns

execute unless score @s cryptid.shotgun.cooldown matches -1.. if items entity @s weapon.* minecraft:crossbow[custom_data~{cryptid.shotgun:1b},charged_projectiles=[{count: 1, components: {"minecraft:custom_name": '{"color":"gray","italic":true,"text":"empty"}'}, id: "minecraft:firework_rocket"}]] run function cryptid:action/shotgun/reload

##############title display


execute unless score @s cryptid.player.titlecooldown matches -2147483648..2147483647 if items entity @s[scores={cryptid.sprinting=0,cryptid.walking=0,cryptid.inair=0}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:1b}] run title @s[tag=!deadradio] actionbar ["",{"translate":"cryptid.radio.prefix","color":"red"},": <",{"translate":"cryptid.radio.flux","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.flux","name":"@s"}},{"color":"#996633","text":"}, "},"<",{"translate":"cryptid.radio.harmony","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.harmony","name":"@s"}},{"color":"#996633","text":"},"},"<",{"translate":"cryptid.radio.strength","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.strength","name":"@s"}},{"color":"#996633","text":"}"}]

execute unless score @s cryptid.player.titlecooldown matches -2147483648..2147483647 if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run function cryptid:tick/player/harmonycheck

execute unless score @s cryptid.player.titlecooldown matches -2147483648..2147483647 if items entity @s[scores={cryptid.sprinting=0,cryptid.walking=0,cryptid.inair=0}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:3b}] run title @s[tag=!deadradio] actionbar ["",{"translate":"cryptid.radio.prefix","color":"red"},": <",{"translate":"cryptid.radio.heart_distance","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.player.heart.distance","name":"@s"}},{"text":"}, ","color":"#996633"},"<",{"translate":"cryptid.radio.event_chance","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"translate":"cryptid.radio.one_in","color":"white"},{"score":{"objective":"cryptid.player.event","name":"@s"}},{"text":"}, ","color":"#996633"},"<",{"translate":"cryptid.radio.heart_capsules","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.maxlives","name":"@s"}},{"text":"}","color":"#996633"}]

execute unless score @s cryptid.player.titlecooldown matches -2147483648..2147483647 if items entity @s weapon.offhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run function cryptid:tick/player/harmonycheck

##disc1
execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run playsound cryptid.disc1 ambient @a[distance=0..30] ~ ~ ~ 1200 1 1
execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run time add 3000
execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run tellraw @s {"translate":"cryptid.item.tape.crumbles","color":"dark_red"}



execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.tape:1b}] run item replace entity @s weapon.mainhand with air


###use totem2
execute as @s[scores={cryptid.click=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.totem2:1}] run function cryptid:action/totem2/placetotem2