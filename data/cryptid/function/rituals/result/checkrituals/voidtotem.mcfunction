execute positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem if items entity @e[distance=..8,tag=sacrifice.item,type=item] contents totem_of_undying run tag @s add ritual.requirmentmet
#function cryptid:rituals/result/rewardevent/voidtotem


#execute positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem if entity @e[distance=..8,tag=sacrifice.mob,limit=2,type=sheep] run tag @s add ritual.requirmentmet
