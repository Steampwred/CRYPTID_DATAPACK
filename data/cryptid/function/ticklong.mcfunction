## 1 minute loop
#schedule function cryptid:ticklong 1200t

    execute if score .globaltime cryptid.time matches 13000..24000 if score .global cryptid.world.fury matches 100.. run scoreboard players operation .global cryptid.world.fury += .global cryptid.world.furyrate
