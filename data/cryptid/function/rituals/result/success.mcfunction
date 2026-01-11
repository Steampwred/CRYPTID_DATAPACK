
tag @s add ritual.success

## check for revival alter and reward our devout servant
execute anchored feet positioned ~ ~-2 ~ if predicate cryptid:alter/revival run return run function cryptid:rituals/result/rewardevent/revival
execute anchored feet positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem run return run function cryptid:rituals/result/rewardevent/voidtotem