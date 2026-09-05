scoreboard players set @s cryptid.player.titlecooldown 40
execute at @s as @n[tag=cryptid.lessertotem] run title @p actionbar [{"color":"dark_red","translate":"chat.cryptid.totem.remaining_blood"},{"score":{"name":"@s","objective":"cryptid.totemblood"},"color": "red"}]
advancement revoke @s only cryptid:checkblood
