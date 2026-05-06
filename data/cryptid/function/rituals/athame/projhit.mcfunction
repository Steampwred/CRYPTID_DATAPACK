
say ive been hit

particle item{item:{id:red_concrete}} ~ ~ ~ 0.3 0.3 0.3 0.2 180
playsound minecraft:entity.wither.hurt ambient @a ~ ~ ~ 0.2 0.1

summon block_display ~ ~ ~ {Tags:["cryptid.chainer","cryptid"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[-5.7010f,-2.2981f,0.0000f,3.6250f,5.7010f,-2.2981f,0.0000f,-1.8750f,0.0000f,0.0000f,3.2500f,-2.1250f,0.0000f,0.0000f,0.0000f,1.0000f],billboard:"center",Tags:["cryptid.chain"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[-5.7010f,2.2981f,0.0000f,1.9375f,-5.5068f,-2.2198f,-0.8412f,4.1250f,-1.4755f,-0.5948f,3.1393f,-1.1250f,0.0000f,0.0000f,0.0000f,1.0000f],billboard:"center",Tags:["cryptid.chain"]}]}

execute as @e[type=block_display, tag=cryptid.chainer, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickchaindebuff"}


ride @n[distance=..3,type=minecraft:block_display,tag=cryptid.chainer] mount @s


execute as @n[tag=cryptid.athameproj,type=item_display] run kill @s 




damage @s 4 cryptid:chomp by @p


#or otherwise break sword function