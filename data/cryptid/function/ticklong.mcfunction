## 30 sec loop
schedule function cryptid:ticklong 600t

    execute if score .globaltime cryptid.time matches 12001..24000 run scoreboard players operation .global cryptid.world.fury += .global cryptid.world.furyrate
