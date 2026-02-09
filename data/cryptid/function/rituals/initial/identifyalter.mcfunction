## Checks Alter and assigns custom nbt data for current ritual type

## Check alter predicates, Store alter type
data remove storage cryptid:ritual alter

execute anchored feet positioned ~ ~-4 ~ if predicate cryptid:alter/exorcise run scoreboard players remove @s cryptid.ritual.stability 50
execute anchored feet positioned ~ ~-4 ~ store success storage cryptid:ritual alter.exorcise int 1 if predicate cryptid:alter/exorcise

execute anchored feet positioned ~ ~-4 ~ if predicate cryptid:alter/revival run scoreboard players remove @s cryptid.ritual.stability 5
execute anchored feet positioned ~ ~-4 ~ store success storage cryptid:ritual alter.revival int 1 if predicate cryptid:alter/revival

execute anchored feet positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem run scoreboard players remove @s cryptid.ritual.stability 15
execute anchored feet positioned ~ ~-4 ~ store success storage cryptid:ritual alter.voidtotem int 1 if predicate cryptid:alter/voidtotem

## Modify storage, stores Type Name
execute if data storage cryptid:ritual {alter:{exorcise:1}} run data modify storage cryptid:ritual alter.type set value "exorcise"
execute if data storage cryptid:ritual {alter:{revival:1}} run data modify storage cryptid:ritual alter.type set value "revival"
execute if data storage cryptid:ritual {alter:{voidtotem:1}} run data modify storage cryptid:ritual alter.type set value "voidtotem"

# INVALID alter 
execute anchored feet positioned ~ ~-4 ~ unless predicate cryptid:alter/exorcise unless predicate cryptid:alter/revival unless predicate cryptid:alter/voidtotem run scoreboard players set @s cryptid.timer 200