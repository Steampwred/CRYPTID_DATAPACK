

data remove storage cryptid:sacrifice craving
## Decide current craving of the Flesh
execute store result score @s cryptid.random run random value 1..7

#execute store success storage cryptid:sacrifice craving.5innocent int 1 if score @s cryptid.random matches 1
#execute store success storage cryptid:sacrifice craving.5undead int 1 if score @s cryptid.random matches 2
#execute store success storage cryptid:sacrifice craving.pet int 1 if score @s cryptid.random matches 3
execute store success storage cryptid:sacrifice craving.2goats int 1 if score @s cryptid.random matches 1..7
#execute store success storage cryptid:sacrifice craving.2villagers int 1 if score @s cryptid.random matches 5
#execute store success storage cryptid:sacrifice craving.warden int 1 if score @s cryptid.random matches 6
#execute store success storage cryptid:sacrifice craving.wither int 1 if score @s cryptid.random matches 7



## STORE craving as "Type"
execute if data storage cryptid:sacrifice {craving:{5innocent:1}} run data modify storage cryptid:sacrifice craving.type set value "5innocent"
execute if data storage cryptid:sacrifice {craving:{5undead:1}} run data modify storage cryptid:sacrifice craving.type set value "5undead"
execute if data storage cryptid:sacrifice {craving:{pet:1}} run data modify storage cryptid:sacrifice craving.type set value "pet"
execute if data storage cryptid:sacrifice {craving:{2goats:1}} run data modify storage cryptid:sacrifice craving.type set value "2goats"
execute if data storage cryptid:sacrifice {craving:{2villagers:1}} run data modify storage cryptid:sacrifice craving.type set value "2villagers"
execute if data storage cryptid:sacrifice {craving:{warden:1}} run data modify storage cryptid:sacrifice craving.type set value "warden"
execute if data storage cryptid:sacrifice {craving:{wither:1}} run data modify storage cryptid:sacrifice craving.type set value "wither"

## store diplay name


execute if data storage cryptid:sacrifice {craving:{5innocent:1}} run data modify storage cryptid:sacrifice craving.display set value "FIVE INNOCENTS"
execute if data storage cryptid:sacrifice {craving:{5undead:1}} run data modify storage cryptid:sacrifice craving.display set value "FIVE UNDEAD"
execute if data storage cryptid:sacrifice {craving:{pet:1}} run data modify storage cryptid:sacrifice craving.display set value "A PET MOST DEAR"
execute if data storage cryptid:sacrifice {craving:{2goats:1}} run data modify storage cryptid:sacrifice craving.display set value "TWO GOATS"
execute if data storage cryptid:sacrifice {craving:{2villagers:1}} run data modify storage cryptid:sacrifice craving.display set value "TWO VILLAGERS"
execute if data storage cryptid:sacrifice {craving:{warden:1}} run data modify storage cryptid:sacrifice craving.display set value "THE WARDEN"
execute if data storage cryptid:sacrifice {craving:{wither:1}} run data modify storage cryptid:sacrifice craving.display set value "THE WITHER"
