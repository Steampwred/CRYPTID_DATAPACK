particle block_marker{block_state:{Name:nether_wart_block}} ~ ~2 ~ 0.5 1 0.5 0 100
function cryptid:events/cryptid/jelly1
tp @n[tag=cryptid.jelly,limit=1,distance=..100,type=vindicator] ~ ~ ~

function cryptid:events/cryptid/dopple1
function cryptid:events/cryptid/jellyswarm
execute as @e[type=armor_stand, tag=cryptid.jellyswarm] run tag @s add nomouth

tag @a[distance=..15] add cryptid.fakescreen