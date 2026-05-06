## should be Executed by target of chains

summon block_display ~ ~ ~ {Tags:["cryptid.chainer","cryptid","cryptid.timer"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[-5.7010f,-2.2981f,0.0000f,3.6250f,5.7010f,-2.2981f,0.0000f,-1.8750f,0.0000f,0.0000f,3.2500f,-2.1250f,0.0000f,0.0000f,0.0000f,1.0000f],billboard:"center",Tags:["cryptid.chain"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[-5.7010f,2.2981f,0.0000f,1.9375f,-5.5068f,-2.2198f,-0.8412f,4.1250f,-1.4755f,-0.5948f,3.1393f,-1.1250f,0.0000f,0.0000f,0.0000f,1.0000f],billboard:"center",Tags:["cryptid.chain"]}]}
execute as @e[type=block_display, tag=cryptid.chainer, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickchaindebuff"}

ride @n[distance=..3,type=minecraft:block_display,tag=cryptid.chainer] mount @s
tag @s add chained