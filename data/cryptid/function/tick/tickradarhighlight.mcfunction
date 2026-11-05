execute unless score @s cryptid.timer matches -2147483648..2147483647 run data merge entity @s {item:{components: {"minecraft:custom_model_data": 1419, "minecraft:custom_name": '{"color":"yellow","italic":false,"text":"cryptid/highlight"}', "minecraft:potion_contents": {potion: "minecraft:water"}}, count: 1, id: "minecraft:potion"}}
scoreboard players add @s cryptid.timer 1


execute if score @s cryptid.timer matches 100 run kill @s

## notes
# fix opacity of ourtline for stucture block
# fix translated names
# cryptid entity class may be bugged