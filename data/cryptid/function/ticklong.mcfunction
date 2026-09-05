## 30 sec loop
schedule function cryptid:ticklong 600t

    execute if score .globaltime cryptid.time matches 12001..24000 run scoreboard players operation .global cryptid.world.fury += .global cryptid.world.furyrate

##void fix all entities
tellraw @a[tag=cryptid.debug] {"translate":"cryptid.debug.cull_void","color":"green","bold":true}
execute as @e if predicate cryptid:voidfix unless dimension cryptid:below run function cryptid:action/voidfix