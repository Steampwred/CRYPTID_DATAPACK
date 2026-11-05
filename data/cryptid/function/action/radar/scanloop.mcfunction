execute as @n[tag=radar.scanpending] run tag @s add radar.activelookcheck

execute anchored eyes facing entity @n[tag=radar.activelookcheck] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.15] as @n[tag=radar.activelookcheck] at @s run tag @s add radar.scanhit
tag @n[tag=radar.activelookcheck] remove radar.scanpending
tag @n[tag=radar.activelookcheck] remove radar.activelookcheck

execute if entity @n[tag=radar.scanpending,distance=1..150] run return run function cryptid:action/radar/scanloop

## pass final elimination scan
execute as @e[tag=radar.scanhit,sort=random,limit=1] run tag @s add radar.target
tag @e[tag=radar.scanhit] remove radar.scanhit