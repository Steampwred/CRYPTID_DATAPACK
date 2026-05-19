setblock ~ ~-7 ~ minecraft:nether_wart_block
setblock ~ ~-8 ~ minecraft:nether_wart_block
#ssssetblock ~ ~-8 ~1 minecraft:nether_wart_block

particle block_marker{block_state:{Name:nether_wart_block}} ~ ~ ~ 0.2 0.2 0.2 0.1 2


#execute as @s[type=egg, tag=coruptionspreader] run say hi
execute unless predicate cryptid:checkriding run function cryptid:events/general/corruptionsingle