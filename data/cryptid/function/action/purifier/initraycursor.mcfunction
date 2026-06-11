# Tag the raycaster
tag @s add raycaster

# Set the maximum distance
scoreboard players set @s cryptid.range 1000

# Begin the raycast function
execute at @s anchored eyes positioned ^ ^ ^.1 run function cryptid:action/purifier/raycursor

# Remove the tag from the raycaster
tag @s remove raycaster