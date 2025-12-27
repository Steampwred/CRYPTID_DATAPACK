## first alter check only gives readout, second alter check actually applies stability changes (to avoid exploiting by changing alter type, and still give players a live update on the ritual)
scoreboard players operation .buffer cryptid.ritual.stability = @s cryptid.ritual.stability

## Check alter predicates
execute anchored feet positioned ~ ~-2 ~ if predicate cryptid:alter/revival run scoreboard players remove .buffer cryptid.ritual.stability 5


## enchanting table translate
execute as @s[tag=ritual.translate] run tellraw @a[distance=..10] {"text":"Ritual Stability: ","color":"dark_purple","bold":true,"extra":[{"score":{"name":".buffer","objective":"cryptid.ritual.stability"},"color":"aqua","bold":false}]}

## End
scoreboard players reset .buffer cryptid.ritual.stability