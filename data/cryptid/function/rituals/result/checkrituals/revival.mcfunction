execute positioned ~ ~-4 ~ if predicate cryptid:alter/revival if items entity @e[distance=..8,tag=sacrifice.item,type=item] contents sugar[minecraft:custom_data~{cryptid.fullheart:1b}] run tag @s add ritual.requirmentmet
#function cryptid:rituals/result/rewardevent/revival
## tag add pass, then wait until orifice gone for better pacing then give reqa
execute if entity @s[tag=ritual.translate] run tellraw @a[distance=..15] {"text":"Ritual Codename:","color":"dark_purple","bold":true,"extra":[{"text":" REVIVAL","color":"aqua","bold":false}]}
