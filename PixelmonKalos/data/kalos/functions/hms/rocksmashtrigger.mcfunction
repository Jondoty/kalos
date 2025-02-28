#/tedit add INTERACT /tellraw @pl {"text":"It's a cracked boulder. Would you like to break it?","italic":true,"color":"gray"}
#/tedit add INTERACT /tellraw @pl ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger RockTrigger set 1"}},{"text":"]"}]
#/tedit add INTERACT /scoreboard players enable @pl RockTrigger

#Broken data modify entity
#{ForgeData:{trainercommands:{interact:["/tellraw @pl {\"text\":\"It's a crushed rock!\",\"italic\":true,\"color\":\"gray\"}"]}}}

#Full rock data modify entity
#{ForgeData:{trainercommands:{interact:["/tellraw @pl {\"text\":\"It's a cracked boulder. Would you like to break it?\",\"italic\":true,\"color\":\"gray\"}","/tellraw @pl [\"\",{\"text\":\"[\"},{\"text\":\"Yes\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger RockTrigger set 1\"}},{\"text\":\"]\"}]","/scoreboard players enable @pl RockTrigger"]}}}

#If player can't use Rock Smash yet
tellraw @a[tag=!RockSmash,scores={RockTrigger=1..}] {"text":"You don't know Rock Smash yet!","italic":true,"color":"gray"}
scoreboard players set @a[tag=!RockSmash,scores={RockTrigger=1..}] RockTrigger 0

#------------------------------------------------------------------------------------------------------------------

#General Odds
#50% - Pokemon
#31% - Items
#20% - Nothing


#Glittering Cave Odds
#50% - Fossils post-Elite Four
#50% - Nothing



#------------------------------------------------------------------------------------------------------------------



#Rolls rng score
scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 1
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 2
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 4
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 8
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 16
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 32
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 64

scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng








#------------------------------------------------------------------------------------------------------------------


#1 (Test block)
tellraw @a[scores={RockTrigger=1}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=1}] run tp @e[x=-507,y=100,z=1046,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=1}] run data modify entity @e[limit=1,x=-507,y=100,z=1046,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=1}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=1}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=1,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=1,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=1,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=1,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=1,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=1,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=1,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=1,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=1,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=1,rng=101..104}] pixelmon:star_piece
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=1,rng=65..104}] ~ ~ ~ 100 1 1

execute as @s[scores={RockTrigger=1,rng=0..21}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=1,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=1}] run execute as @e[x=-507,y=100,z=1046,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=1}] run setblock -500 100 1055 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=1}] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=2..6,rng=65..104}] ~ ~ ~ 100 1 1

#Cyllage City #1
tellraw @a[scores={RockTrigger=2}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=2}] run tp @e[x=-2168,y=99,z=-193,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=2}] run data modify entity @e[limit=1,x=-2168,y=99,z=-193,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=2}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=2}] ~ ~ ~ 10 1 1

give @a[scoreD={RockTrigger=2,rng=65..68}] pixelmon:big_pearl
give @a[scoreD={RockTrigger=2,rng=69..72}] pixelmon:ether
give @a[scoreD={RockTrigger=2,rng=73..76}] pixelmon:hard_stone
give @a[scoreD={RockTrigger=2,rng=77..80}] pixelmon:heart_scale
give @a[scoreD={RockTrigger=2,rng=81..84}] pixelmon:max_ether
give @a[scoreD={RockTrigger=2,rng=85..88}] pixelmon:max_revive
give @a[scoreD={RockTrigger=2,rng=89..92}] pixelmon:pearl
give @a[scoreD={RockTrigger=2,rng=93..96}] pixelmon:revive
give @a[scoreD={RockTrigger=2,rng=97..100}] pixelmon:soft_sand
give @a[scoreD={RockTrigger=2,rng=101..104}] pixelmon:star_piece

execute as @s[scoreD={RockTrigger=2,rng=0..21}] run pokebattle @s Dwebble,lvl:14
execute as @s[scoreD={RockTrigger=2,rng=22..44}] run pokebattle @s Binacle,lvl:14
execute as @s[scoreD={RockTrigger=2,rng=45..64}] run pokebattle @s Onix,lvl:14

execute as @a[scores={RockTrigger=2}] run execute as @e[x=-2168,y=99,z=-193,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=2}] run setblock -687 100 1290 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=2}] RockTrigger 0



#Cyllage City #2
tellraw @a[scores={RockTrigger=3}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=3}] run tp @e[x=-2179,y=99,z=-170,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=3}] run data modify entity @e[limit=1,x=-2179,y=99,z=-170,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=3}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=3}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=3,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=3,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=3,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=3,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=3,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=3,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=3,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=3,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=3,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=3,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=3,rng=0..21}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=3,rng=22..44}] run pokebattle @s Binacle,lvl:14
execute as @s[scores={RockTrigger=3,rng=45..64}] run pokebattle @s Onix,lvl:14

execute as @a[scores={RockTrigger=3}] run execute as @e[x=-2179,y=99,z=-170,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=3}] run setblock -687 100 1291 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=3}] RockTrigger 0



#Cyllage City #3
tellraw @a[scores={RockTrigger=4}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=4}] run tp @e[x=-2132,y=99,z=-163,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=4}] run data modify entity @e[limit=1,x=-2132,y=99,z=-163,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=4}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=4}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=4,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=4,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=4,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=4,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=4,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=4,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=4,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=4,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=4,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=4,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=4,rng=0..21}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=4,rng=22..44}] run pokebattle @s Binacle,lvl:14
execute as @s[scores={RockTrigger=4,rng=45..64}] run pokebattle @s Onix,lvl:14

execute as @a[scores={RockTrigger=4}] run execute as @e[x=-2132,y=99,z=-163,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=4}] run setblock -687 100 1292 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=4}] RockTrigger 0



#Cyllage City #4
tellraw @a[scores={RockTrigger=5}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=5}] run tp @e[x=-2109,y=99,z=-101,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=5}] run data modify entity @e[limit=1,x=-2109,y=99,z=-101,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=5}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=5}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=5,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=5,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=5,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=5,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=5,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=5,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=5,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=5,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=5,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=5,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=5,rng=0..21}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=5,rng=22..44}] run pokebattle @s Binacle,lvl:14
execute as @s[scores={RockTrigger=5,rng=45..64}] run pokebattle @s Onix,lvl:14

execute as @a[scores={RockTrigger=5}] run execute as @e[x=-2109,y=99,z=-101,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=5}] run setblock -687 100 1293 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=5}] RockTrigger 0



#Cyllage City #5
tellraw @a[scores={RockTrigger=6}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=6}] run tp @e[x=-2106,y=99,z=-43,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=6}] run data modify entity @e[limit=1,x=-2106,y=99,z=-43,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=6}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=6}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=6,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=6,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=6,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=6,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=6,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=6,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=6,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=6,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=6,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=6,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=6,rng=0..21}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=6,rng=22..44}] run pokebattle @s Binacle,lvl:14
execute as @s[scores={RockTrigger=6,rng=45..64}] run pokebattle @s Onix,lvl:14

execute as @a[scores={RockTrigger=6}] run execute as @e[x=-2106,y=99,z=-43,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=6}] run setblock -687 100 1294 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=6}] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=7..9,rng=65..104}] ~ ~ ~ 100 1 1


#Route 8 #1
tellraw @a[scores={RockTrigger=7}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=7}] run tp @e[x=-1983,y=99,z=151,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=7}] run data modify entity @e[limit=1,x=-1983,y=99,z=151,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=7}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=7}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=7,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=7,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=7,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=7,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=7,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=7,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=7,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=7,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=7,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=7,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=7,rng=0..31}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=7,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=7}] run execute as @e[x=-1983,y=99,z=151,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=7}] run setblock -687 100 1295 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=7}] RockTrigger 0



#Route 8 #2
tellraw @a[scores={RockTrigger=8}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=8}] run tp @e[x=-2025,y=99,z=396,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=8}] run data modify entity @e[limit=1,x=-2025,y=99,z=396,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=8}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=8}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=8,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=8,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=8,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=8,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=8,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=8,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=8,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=8,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=8,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=8,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=8,rng=0..31}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=8,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=8}] run execute as @e[x=-2025,y=99,z=396,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=8}] run setblock -687 100 1296 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=8}] RockTrigger 0



#Route 8 #3
tellraw @a[scores={RockTrigger=9}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=9}] run tp @e[x=-1994,y=99,z=427,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=9}] run data modify entity @e[limit=1,x=-1994,y=99,z=427,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=9}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=9}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=9,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=9,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=9,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=9,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=9,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=9,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=9,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=9,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=9,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=9,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=9,rng=0..31}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=9,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=9}] run execute as @e[x=-1994,y=99,z=427,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=9}] run setblock -687 100 1297 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=9}] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=10..13,rng=65..104}] ~ ~ ~ 100 1 1

#Ambrette Town #1
tellraw @a[scores={RockTrigger=10}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=10}] run tp @e[x=-2040,y=99,z=599,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=10}] run data modify entity @e[limit=1,x=-2040,y=99,z=599,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=10}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=10}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=10,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=10,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=10,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=10,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=10,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=10,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=10,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=10,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=10,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=10,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=10,rng=0..31}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=10,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=10}] run execute as @e[x=-2040,y=99,z=599,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=10}] run setblock -687 100 1298 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=10}] RockTrigger 0



#Ambrette Town #2
tellraw @a[scores={RockTrigger=11}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=11}] run tp @e[x=-2032,y=99,z=620,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=11}] run data modify entity @e[limit=1,x=-2032,y=99,z=620,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=11}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=11}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=11,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=11,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=11,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=11,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=11,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=11,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=11,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=11,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=11,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=11,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=11,rng=0..31}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=11,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=11}] run execute as @e[x=-2032,y=99,z=620,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=11}] run setblock -687 100 1299 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=11}] RockTrigger 0



#Ambrette Town #3
tellraw @a[scores={RockTrigger=12}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=12}] run tp @e[x=-2032,y=99,z=644,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=12}] run data modify entity @e[limit=1,x=-2032,y=99,z=644,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=12}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=12}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=12,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=12,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=12,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=12,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=12,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=12,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=12,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=12,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=12,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=12,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=12,rng=0..31}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=12,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=12}] run execute as @e[x=-2032,y=99,z=644,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=12}] run setblock -687 100 1300 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=12}] RockTrigger 0



#Ambrette Town #4
tellraw @a[scores={RockTrigger=13}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=13}] run tp @e[x=-2015,y=99,z=718,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=13}] run data modify entity @e[limit=1,x=-2015,y=99,z=718,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=13}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=13}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=13,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=13,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=13,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=13,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=13,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=13,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=13,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=13,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=13,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=13,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=13,rng=0..31}] run pokebattle @s Dwebble,lvl:14
execute as @s[scores={RockTrigger=13,rng=32..64}] run pokebattle @s Binacle,lvl:14

execute as @a[scores={RockTrigger=13}] run execute as @e[x=-2015,y=99,z=718,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=13}] run setblock -687 100 1301 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=13}] RockTrigger 0


#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=14..15,rng=65..104}] ~ ~ ~ 100 1 1


#Route 12 #1
tellraw @a[scores={RockTrigger=14}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=14}] run tp @e[x=-1379,y=75,z=-794,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=14}] run data modify entity @e[limit=1,x=-1379,y=75,z=-794,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=14}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=14}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=14,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=14,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=14,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=14,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=14,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=14,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=14,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=14,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=14,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=14,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=14,rng=0..31}] run pokebattle @s Dwebble,lvl:24
execute as @s[scores={RockTrigger=14,rng=32..64}] run pokebattle @s Binacle,lvl:24

execute as @a[scores={RockTrigger=14}] run execute as @e[x=-1379,y=75,z=-794,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=14}] run setblock -687 100 1302 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=14}] RockTrigger 0


#Route 12 #2
tellraw @a[scores={RockTrigger=15}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=15}] run tp @e[x=-1242,y=75,z=-793,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=15}] run data modify entity @e[limit=1,x=-1242,y=75,z=-793,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=15}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=15}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=15,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=15,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=15,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=15,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=15,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=15,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=15,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=15,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=15,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=15,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=15,rng=0..31}] run pokebattle @s Dwebble,lvl:24
execute as @s[scores={RockTrigger=15,rng=32..64}] run pokebattle @s Binacle,lvl:24

execute as @a[scores={RockTrigger=15}] run execute as @e[x=-1242,y=75,z=-793,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=15}] run setblock -687 100 1303 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=15}] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=16..18,rng=65..104}] ~ ~ ~ 100 1 1

#Azure Bay #1
tellraw @a[scores={RockTrigger=16}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=16}] run tp @e[x=-1446,y=75,z=-1142,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=16}] run data modify entity @e[limit=1,x=-1446,y=75,z=-1142,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=16}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=16}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=16,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=16,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=16,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=16,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=16,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=16,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=16,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=16,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=16,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=16,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=16,rng=0..31}] run pokebattle @s Dwebble,lvl:24
execute as @s[scores={RockTrigger=16,rng=32..64}] run pokebattle @s Binacle,lvl:24

execute as @a[scores={RockTrigger=16}] run execute as @e[x=-1446,y=75,z=-1142,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=16}] run setblock -687 100 1304 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=16}] RockTrigger 0



#Azure Bay #2
tellraw @a[scores={RockTrigger=17}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=17}] run tp @e[x=-1451,y=75,z=-1155,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=17}] run data modify entity @e[limit=1,x=-1451,y=75,z=-1155,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=17}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=17}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=17,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=17,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=17,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=17,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=17,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=17,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=17,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=17,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=17,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=17,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=17,rng=0..31}] run pokebattle @s Dwebble,lvl:24
execute as @s[scores={RockTrigger=17,rng=32..64}] run pokebattle @s Binacle,lvl:24

execute as @a[scores={RockTrigger=17}] run execute as @e[x=-1451,y=75,z=-1155,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=17}] run setblock -687 100 1305 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=17}] RockTrigger 0



#Azure Bay #3
tellraw @a[scores={RockTrigger=18}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=18}] run tp @e[x=-1450,y=75,z=-1231,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=18}] run data modify entity @e[limit=1,x=-1450,y=75,z=-1231,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=18}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=18}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=18,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=18,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=18,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=18,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=18,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=18,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=18,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=18,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=18,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=18,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=18,rng=0..31}] run pokebattle @s Dwebble,lvl:24
execute as @s[scores={RockTrigger=18,rng=32..64}] run pokebattle @s Binacle,lvl:24

execute as @a[scores={RockTrigger=18}] run execute as @e[x=-1450,y=75,z=-1231,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=18}] run setblock -687 100 1306 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=18}] RockTrigger 0




#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=19..22,rng=65..104}] ~ ~ ~ 100 1 1

#Route 13 #1
tellraw @a[scores={RockTrigger=19}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=19}] run tp @e[x=-788,y=103,z=-421,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=19}] run data modify entity @e[limit=1,x=-788,y=103,z=-421,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=19}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=19}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=19,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=19,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=19,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=19,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=19,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=19,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=19,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=19,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=19,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=19,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=19,rng=0..31}] run pokebattle @s Graveler,lvl:27
execute as @s[scores={RockTrigger=19,rng=32..64}] run pokebattle @s Slugma,lvl:27

execute as @a[scores={RockTrigger=19}] run execute as @e[x=-788,y=103,z=-421,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=19}] run setblock -687 100 1307 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=19}] RockTrigger 0



#Route 13 #2
tellraw @a[scores={RockTrigger=20}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=20}] run tp @e[x=-900,y=103,z=-404,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=20}] run data modify entity @e[limit=1,x=-900,y=103,z=-404,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=20}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=20}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=20,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=20,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=20,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=20,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=20,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=20,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=20,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=20,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=20,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=20,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=20,rng=0..31}] run pokebattle @s Graveler,lvl:27
execute as @s[scores={RockTrigger=20,rng=32..64}] run pokebattle @s Slugma,lvl:27

execute as @a[scores={RockTrigger=20}] run execute as @e[x=-900,y=103,z=-404,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=20}] run setblock -687 100 1308 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=20}] RockTrigger 0



#Route 13 #3
tellraw @a[scores={RockTrigger=21}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=21}] run tp @e[x=-682,y=99,z=-544,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=21}] run data modify entity @e[limit=1,x=-682,y=99,z=-544,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=21}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=21}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=21,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=21,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=21,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=21,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=21,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=21,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=21,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=21,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=21,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=21,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=21,rng=0..31}] run pokebattle @s Graveler,lvl:27
execute as @s[scores={RockTrigger=21,rng=32..64}] run pokebattle @s Slugma,lvl:27

execute as @a[scores={RockTrigger=21}] run execute as @e[x=-682,y=99,z=-544,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=21}] run setblock -687 100 1309 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=21}] RockTrigger 0


#Route 13 #4
tellraw @a[scores={RockTrigger=22}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=22}] run tp @e[x=-682,y=99,z=-523,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=22}] run data modify entity @e[limit=1,x=-682,y=99,z=-523,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=22}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=22}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=22,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=22,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=22,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=22,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=22,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=22,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=22,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=22,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=22,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=22,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=22,rng=0..31}] run pokebattle @s Graveler,lvl:27
execute as @s[scores={RockTrigger=22,rng=32..64}] run pokebattle @s Slugma,lvl:27

execute as @a[scores={RockTrigger=22}] run execute as @e[x=-682,y=99,z=-523,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=22}] run setblock -687 100 1310 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=22}] RockTrigger 0


#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=23..24,rng=65..104}] ~ ~ ~ 100 1 1

#Route 18 #1
tellraw @a[scores={RockTrigger=23}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=23}] run tp @e[x=1472,y=104,z=47,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=23}] run data modify entity @e[limit=1,x=1472,y=104,z=47,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=23}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=23}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=23,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=23,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=23,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=23,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=23,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=23,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=23,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=23,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=23,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=23,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=23,rng=0..31}] run pokebattle @s Graveler,lvl:45
execute as @s[scores={RockTrigger=23,rng=32..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=23}] run execute as @e[x=1472,y=104,z=47,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=23}] run setblock -687 100 1311 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=23}] RockTrigger 0



#Route 18 #2
tellraw @a[scores={RockTrigger=24}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=24}] run tp @e[x=1485,y=104,z=33,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=24}] run data modify entity @e[limit=1,x=1485,y=104,z=33,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=24}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=24}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=24,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=24,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=24,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=24,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=24,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=24,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=24,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=24,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=24,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=24,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=24,rng=0..31}] run pokebattle @s Graveler,lvl:45
execute as @s[scores={RockTrigger=24,rng=32..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=24}] run execute as @e[x=1485,y=104,z=33,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=24}] run setblock -687 100 1312 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=24}] RockTrigger 0


#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=25..44,rng=65..104}] ~ ~ ~ 100 1 1

#Terminus Cave #1
tellraw @a[scores={RockTrigger=25}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=25}] run tp @e[x=1761,y=77,z=-48,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=25}] run data modify entity @e[limit=1,x=1761,y=77,z=-48,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=25}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=25}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=25,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=25,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=25,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=25,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=25,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=25,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=25,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=25,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=25,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=25,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=25,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @s[scores={RockTrigger=25,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=25}] run execute as @e[x=1761,y=77,z=-48,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=25}] run setblock -687 100 1313 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=25}] RockTrigger 0



#Terminus Cave #2
tellraw @a[scores={RockTrigger=26}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=26}] run tp @e[x=1746,y=77,z=-50,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=26}] run data modify entity @e[limit=1,x=1746,y=77,z=-50,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=26}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=26}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=26,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=26,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=26,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=26,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=26,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=26,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=26,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=26,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=26,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=26,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=26,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @s[scores={RockTrigger=26,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=26}] run execute as @e[x=1746,y=77,z=-50,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=26}] run setblock -687 100 1314 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=26}] RockTrigger 0



#Terminus Cave #3
tellraw @a[scores={RockTrigger=27}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=27}] run tp @e[x=1740,y=77,z=-66,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=27}] run data modify entity @e[limit=1,x=1740,y=77,z=-66,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=27}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=27}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=27,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=27,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=27,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=27,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=27,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=27,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=27,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=27,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=27,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=27,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=27,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @s[scores={RockTrigger=27,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=27}] run execute as @e[x=1740,y=77,z=-66,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=27}] run setblock -687 100 1315 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=27}] RockTrigger 0



#Terminus Cave #4
tellraw @a[scores={RockTrigger=28}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=28}] run tp @e[x=1746,y=77,z=-72,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=28}] run data modify entity @e[limit=1,x=1746,y=77,z=-72,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=28}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=28}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=28,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=28,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=28,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=28,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=28,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=28,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=28,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=28,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=28,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=28,rng=101..104}] pixelmon:star_piece

execute as @s[scores={RockTrigger=28,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @s[scores={RockTrigger=28,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=28}] run execute as @e[x=1746,y=77,z=-72,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=28}] run setblock -687 100 1316 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=28}] RockTrigger 0




#Terminus Cave #5
tellraw @a[scores={RockTrigger=29}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=29}] run tp @e[x=1765,y=77,z=-81,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=29}] run data modify entity @e[limit=1,x=1765,y=77,z=-81,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=29}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=29}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=29,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=29,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=29,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=29,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=29,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=29,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=29,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=29,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=29,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=29,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=29,rng=0..58}] runpokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=29,rng=59..64}] runpokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=29}] run execute as @e[x=1765,y=77,z=-81,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=29}] run setblock -687 100 1317 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=29}] RockTrigger 0



#Terminus Cave #6
tellraw @a[scores={RockTrigger=30}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=30}] run tp @e[x=1779,y=74,z=-94,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=30}] run data modify entity @e[limit=1,x=1779,y=74,z=-94,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=30}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=30}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=30,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=30,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=30,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=30,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=30,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=30,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=30,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=30,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=30,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=30,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=30,rng=0..58}] runpokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=30,rng=59..64}] runpokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=30}] run execute as @e[x=1779,y=74,z=-94,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=30}] run setblock -687 100 1318 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=30}] RockTrigger 0



#Terminus Cave #7
tellraw @a[scores={RockTrigger=31}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=31}] run tp @e[x=1870,y=48,z=-29,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=31}] run data modify entity @e[limit=1,x=1870,y=48,z=-29,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=31}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=31}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=31,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=31,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=31,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=31,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=31,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=31,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=31,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=31,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=31,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=31,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=31,rng=0..58}] runpokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=31,rng=59..64}] runpokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=31}] run execute as @e[x=1870,y=48,z=-29,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=31}] run setblock -687 100 1319 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=31}] RockTrigger 0



#Terminus Cave #8
tellraw @a[scores={RockTrigger=32}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=32}] run tp @e[x=1888,y=37,z=-70,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=32}] run data modify entity @e[limit=1,x=1888,y=37,z=-70,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=32}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=32}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=32,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=32,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=32,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=32,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=32,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=32,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=32,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=32,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=32,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=32,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=32,rng=0..58}] runpokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=32,rng=59..64}] runpokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=32}] run execute as @e[x=1888,y=37,z=-70,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=32}] run setblock -687 100 1320 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=32}] RockTrigger 0



#Terminus Cave #9
tellraw @a[scores={RockTrigger=33}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=33}] run tp @e[x=1798,y=47,z=-33,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=33}] run data modify entity @e[limit=1,x=1798,y=47,z=-33,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=33}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=33}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=33,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=33,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=33,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=33,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=33,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=33,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=33,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=33,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=33,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=33,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=33,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=33,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=33}] run execute as @e[x=1798,y=47,z=-33,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=33}] run setblock -687 100 1321 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=33}] RockTrigger 0




#Terminus Cave #10
tellraw @a[scores={RockTrigger=34}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=34}] run tp @e[x=1930,y=9,z=-73,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=34}] run data modify entity @e[limit=1,x=1930,y=9,z=-73,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=34}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=34}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=34,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=34,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=34,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=34,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=34,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=34,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=34,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=34,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=34,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=34,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=34,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=34,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=34}] run execute as @e[x=1930,y=9,z=-73,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=34}] run setblock -687 100 1322 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=34}] RockTrigger 0



#Terminus Cave #11
tellraw @a[scores={RockTrigger=35}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=35}] run tp @e[x=1904,y=9,z=-103,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=35}] run data modify entity @e[limit=1,x=1904,y=9,z=-103,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=35}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=35}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=35,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=35,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=35,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=35,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=35,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=35,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=35,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=35,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=35,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=35,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=35,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=35,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=35}] run execute as @e[x=1904,y=9,z=-103,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=35}] run setblock -687 100 1323 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=35}] RockTrigger 0



#Terminus Cave #12
tellraw @a[scores={RockTrigger=36}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=36}] run tp @e[x=1943,y=9,z=-107,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=36}] run data modify entity @e[limit=1,x=1943,y=9,z=-107,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=36}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=36}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=36,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=36,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=36,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=36,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=36,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=36,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=36,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=36,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=36,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=36,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=36,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=36,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=36}] run execute as @e[x=1943,y=9,z=-107,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=36}] run setblock -687 100 1324 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=36}] RockTrigger 0



#Terminus Cave #13
tellraw @a[scores={RockTrigger=37}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=37}] run tp @e[x=1963,y=14,z=-144,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=37}] run data modify entity @e[limit=1,x=1963,y=14,z=-144,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=37}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=37}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=37,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=37,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=37,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=37,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=37,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=37,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=37,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=37,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=37,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=37,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=37,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=37,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=37}] run execute as @e[x=1963,y=14,z=-144,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=37}] run setblock -687 100 1325 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=37}] RockTrigger 0


#Terminus Cave #14
tellraw @a[scores={RockTrigger=38}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=38}] run tp @e[x=1986,y=14,z=-143,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=38}] run data modify entity @e[limit=1,x=1986,y=14,z=-143,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=38}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=38}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=38,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=38,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=38,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=38,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=38,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=38,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=38,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=38,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=38,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=38,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=38,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=38,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=38}] run execute as @e[x=1986,y=14,z=-143,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=38}] run setblock -687 100 1326 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=38}] RockTrigger 0



#Terminus Cave #15
tellraw @a[scores={RockTrigger=39}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=39}] run tp @e[x=1993,y=9,z=-135,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=39}] run data modify entity @e[limit=1,x=1993,y=9,z=-135,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=39}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=39}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=39,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=39,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=39,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=39,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=39,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=39,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=39,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=39,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=39,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=39,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=39,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=39,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=39}] run execute as @e[x=1993,y=9,z=-135,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=39}] run setblock -687 100 1327 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=39}] RockTrigger 0



#Terminus Cave #16
tellraw @a[scores={RockTrigger=40}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=40}] run tp @e[x=1972,y=5,z=-119,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=40}] run data modify entity @e[limit=1,x=1972,y=5,z=-119,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=40}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=40}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=40,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=40,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=40,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=40,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=40,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=40,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=40,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=40,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=40,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=40,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=40,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=40,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=40}] run execute as @e[x=1972,y=5,z=-119,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=40}] run setblock -687 100 1328 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=40}] RockTrigger 0



#Terminus Cave #17
tellraw @a[scores={RockTrigger=41}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=41}] run tp @e[x=2078,y=30,z=-36,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=41}] run data modify entity @e[limit=1,x=2078,y=30,z=-36,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=41}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=41}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=41,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=41,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=41,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=41,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=41,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=41,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=41,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=41,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=41,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=41,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=41,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=41,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=41}] run execute as @e[x=2078,y=30,z=-36,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=41}] run setblock -687 100 1329 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=41}] RockTrigger 0



#Terminus Cave #18
tellraw @a[scores={RockTrigger=42}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=42}] run tp @e[x=2075,y=30,z=-34,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=42}] run data modify entity @e[limit=1,x=2075,y=30,z=-34,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=42}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=42}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=42,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=42,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=42,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=42,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=42,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=42,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=42,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=42,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=42,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=42,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=42,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=42,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=42}] run execute as @e[x=2075,y=30,z=-34,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=42}] run setblock -687 100 1330 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=42}] RockTrigger 0



#Terminus Cave #19
tellraw @a[scores={RockTrigger=43}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=43}] run tp @e[x=2075,y=32,z=-52,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=43}] run data modify entity @e[limit=1,x=2075,y=32,z=-52,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=43}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=43}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=43,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=43,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=43,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=43,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=43,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=43,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=43,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=43,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=43,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=43,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=43,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=43,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=43}] run execute as @e[x=2075,y=32,z=-52,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=43}] run setblock -687 100 1331 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=43}] RockTrigger 0



#Terminus Cave #20
tellraw @a[scores={RockTrigger=44}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=44}] run tp @e[x=2041,y=40,z=-106,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=44}] run data modify entity @e[limit=1,x=2041,y=40,z=-106,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=44}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=44}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=44,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=44,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=44,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=44,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=44,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=44,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=44,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=44,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=44,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=44,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=44,rng=0..58}] run pokebattle @s Graveler,lvl:45
execute as @a[scores={RockTrigger=44,rng=59..64}] run pokebattle @s Shuckle,lvl:45

execute as @a[scores={RockTrigger=44}] run execute as @e[x=2041,y=40,z=-106,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=44}] run setblock -687 100 1332 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=44}] RockTrigger 0

#------------------------------------------------------------------------------------------------------------------
#Playsound Item


playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[score_RockTrigger_min=45,score_RockTrigger=52,rng=65..104] ~ ~ ~ 100 1 1
give @a[scorea={RockTrigger=45..52,rng=65..86,PokemonLeague=0}] pixelmon:hard_stone
give @a[scorea={RockTrigger=45..52,rng=87..98,PokemonLeague=0}] pixelmon:revive
give @a[scorea={RockTrigger=45..52,rng=99..104,PokemonLeague=0}] pixelmon:old_amber

give @a[scorea={RockTrigger=45..52,rng=65..68,PokemonLeague=1..}] pixelmon:armor_fossil
give @a[scorea={RockTrigger=45..52,rng=69..72,PokemonLeague=1..}] pixelmon:claw_fossil
give @a[scorea={RockTrigger=45..52,rng=73..76,PokemonLeague=1..}] pixelmon:cover_fossil
give @a[scorea={RockTrigger=45..52,rng=77..80,PokemonLeague=1..}] pixelmon:dome_fossil
give @a[scorea={RockTrigger=45..52,rng=81..84,PokemonLeague=1..}] pixelmon:helix_fossil
give @a[scorea={RockTrigger=45..52,rng=85..88,PokemonLeague=1..}] pixelmon:old_amber
give @a[scorea={RockTrigger=45..52,rng=89..92,PokemonLeague=1..}] pixelmon:plume_fossil
give @a[scorea={RockTrigger=45..52,rng=93..96,PokemonLeague=1..}] pixelmon:root_fossil
give @a[scorea={RockTrigger=45..52,rng=97..100,PokemonLeague=1..}] pixelmon:skull_fossil
give @a[scorea={RockTrigger=44..52,rng=101..104,PokemonLeague=1..}] pixelmon:heart_scale


#Glittering Cave #1
tellraw @a[scores={RockTrigger=45}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=45}] run tp @e[x=-1444,y=147,z=319,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=45}] run data modify entity @e[limit=1,x=-1444,y=147,z=319,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=45}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=45}] ~ ~ ~ 10 1 1

execute as @a[scores={RockTrigger=45}] run execute as @e[x=-1444,y=147,z=319,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=45}] run setblock -687 100 1333 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=45}] RockTrigger 0



#Glittering Cave #2
tellraw @a[scores={RockTrigger=46}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=46}] run tp @e[x=-1429,y=147,z=306,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=46}] run data modify entity @e[limit=1,x=-1429,y=147,z=306,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=46}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=46}] ~ ~ ~ 10 1 1


execute as @a[scores={RockTrigger=46}] run execute as @e[x=-1429,y=147,z=306,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=46}] run setblock -687 100 1334 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=46}] RockTrigger 0




#Glittering Cave #3
tellraw @a[scores={RockTrigger=47}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=47}] run tp @e[x=-1389,y=147,z=320,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=47}] run data modify entity @e[limit=1,x=-1389,y=147,z=320,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=47}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=47}] ~ ~ ~ 10 1 1


execute as @a[scores={RockTrigger=47}] run execute as @e[x=-1389,y=147,z=320,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=47}] run setblock -687 100 1335 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=47}] RockTrigger 0


#Glittering Cave #4
tellraw @a[scores={RockTrigger=48}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=48}] run tp @e[x=-1388,y=147,z=272,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=48}] run data modify entity @e[limit=1,x=-1388,y=147,z=272,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=48}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=48}] ~ ~ ~ 10 1 1


execute as @a[scores={RockTrigger=48}] run execute as @e[x=-1388,y=147,z=272,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=48}] run setblock -687 100 1336 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=48}] RockTrigger 0


#Glittering Cave #5
tellraw @a[scores={RockTrigger=49}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=49}] run tp @e[x=-1444,y=147,z=270,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=49}] run data modify entity @e[limit=1,x=-1444,y=147,z=270,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=49}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=49}] ~ ~ ~ 10 1 1


execute as @a[scores={RockTrigger=49}] run execute as @e[x=-1444,y=147,z=270,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=49}] run setblock -687 100 1337 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=49}] RockTrigger 0



#Glittering Cave #6
tellraw @a[scores={RockTrigger=50}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=50}] run tp @e[x=-1489,y=147,z=285,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=50}] run data modify entity @e[limit=1,x=-1489,y=147,z=285,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=50}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=50}] ~ ~ ~ 10 1 1


execute as @a[scores={RockTrigger=50}] run execute as @e[x=-1489,y=147,z=285,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=50}] run setblock -687 100 1338 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=50}] RockTrigger 0



#Glittering Cave #7
tellraw @a[scores={RockTrigger=51}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=51}] run tp @e[x=-1486,y=147,z=320,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=51}] run data modify entity @e[limit=1,x=-1486,y=147,z=320,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=51}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=51}] ~ ~ ~ 10 1 1


execute as @a[scores={RockTrigger=51}] run execute as @e[x=-1486,y=147,z=320,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=51}] run setblock -687 100 1339 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=51}] RockTrigger 0



#Glittering Cave #8
tellraw @a[scores={RockTrigger=52}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=52}] run tp @e[x=-1466,y=147,z=309,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=52}] run data modify entity @e[limit=1,x=-1466,y=147,z=309,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=52}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=52}] ~ ~ ~ 10 1 1


execute as @a[scores={RockTrigger=52}] run execute as @e[x=-1466,y=147,z=309,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=52}] run setblock -687 100 1340 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=52}] RockTrigger 0




#------------------------------------------------------------------------------------------------------------------

#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={RockTrigger=53..RockTrigger=56,rng=65..104}] ~ ~ ~ 100 1 1

#Victory Road #1
tellraw @a[scores={RockTrigger=53}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=53}] run tp @e[x=2381,y=54,z=1605,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=53}] run data modify entity @e[limit=1,x=2381,y=54,z=1605,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=53}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=53}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=53,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=53,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=53,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=53,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=53,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=53,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=53,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=53,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=53,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=53,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=53,rng=0..58}] run pokebattle @s Graveler,lvl:58
execute as @a[scores={RockTrigger=53,rng=59..64}] run pokebattle @s Shuckle,lvl:58

execute as @a[scores={RockTrigger=53}] run execute as @e[x=2381,y=54,z=1605,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=53}] run setblock -687 100 1341 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=53}] RockTrigger 0



#Victory Road #2
tellraw @a[scores={RockTrigger=54}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=54}] run tp @e[x=2225,y=75,z=1469,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=54}] run data modify entity @e[limit=1,x=2225,y=75,z=1469,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=54}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=54}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=54,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=54,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=54,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=54,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=54,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=54,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=54,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=54,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=54,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=54,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=54,rng=0..58}] run pokebattle @s Graveler,lvl:58
execute as @a[scores={RockTrigger=54,rng=59..64}] run pokebattle @s Shuckle,lvl:58

execute as @a[scores={RockTrigger=54}] run execute as @e[x=2225,y=75,z=1469,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=54}] run setblock -687 100 1342 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=54}] RockTrigger 0




#Victory Road #3
tellraw @a[scores={RockTrigger=55}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=55}] run tp @e[x=2274,y=75,z=1521,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=55}] run data modify entity @e[limit=1,x=2274,y=75,z=1521,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=55}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=55}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=55,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=55,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=55,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=55,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=55,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=55,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=55,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=55,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=55,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=55,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=55,rng=0..58}] run pokebattle @s Graveler,lvl:58
execute as @a[scores={RockTrigger=55,rng=59..64}] run pokebattle @s Shuckle,lvl:58

execute as @a[scores={RockTrigger=55}] run execute as @e[x=2274,y=75,z=1521,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=55}] run setblock -687 100 1343 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=55}] RockTrigger 0



#Victory Road #4
tellraw @a[scores={RockTrigger=56}] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute as @a[scores={RockTrigger=56}] run tp @e[x=2139,y=90,z=1391,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={RockTrigger=56}] run data modify entity @e[limit=1,x=2139,y=90,z=1391,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute as @a[scores={RockTrigger=56}] run playsound minecraft:item.shield.block ambient @a[scores={RockTrigger=56}] ~ ~ ~ 10 1 1

give @a[scores={RockTrigger=56,rng=65..68}] pixelmon:big_pearl
give @a[scores={RockTrigger=56,rng=69..72}] pixelmon:ether
give @a[scores={RockTrigger=56,rng=73..76}] pixelmon:hard_stone
give @a[scores={RockTrigger=56,rng=77..80}] pixelmon:heart_scale
give @a[scores={RockTrigger=56,rng=81..84}] pixelmon:max_ether
give @a[scores={RockTrigger=56,rng=85..88}] pixelmon:max_revive
give @a[scores={RockTrigger=56,rng=89..92}] pixelmon:pearl
give @a[scores={RockTrigger=56,rng=93..96}] pixelmon:revive
give @a[scores={RockTrigger=56,rng=97..100}] pixelmon:soft_sand
give @a[scores={RockTrigger=56,rng=101..104}] pixelmon:star_piece

execute as @a[scores={RockTrigger=56,rng=0..58}] run pokebattle @s Graveler,lvl:58
execute as @a[scores={RockTrigger=56,rng=59..64}] run pokebattle @s Shuckle,lvl:58

execute as @a[scores={RockTrigger=56}] run execute as @e[x=2139,y=90,z=1391,distance=..3,type=armor_stand] run particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[distance=..30] 172
execute as @a[scores={RockTrigger=56}] run setblock -687 100 1344 minecraft:gold_block
scoreboard players set @a[scores={RockTrigger=56}] RockTrigger 0





















#Resets
#/execute as @e[,distance=..3,type=armor_stand] run summon pixelmon:statue ~ ~ ~ {ndex:101s,Growth:4b,CustomTexture:"invisible",ForgeData:{trainercommands:{interact:["/tellraw @pl {\"text\":\"It's a cracked boulder. Would you like to break it?\",\"italic\":true,\"color\":\"gray\"}","/tellraw @pl [\"\",{\"text\":\"[\"},{\"text\":\"Yes\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger RockTrigger set 1\"}},{\"text\":\"]\"}]","/scoreboard players enable @pl RockTrigger"]}}}

#data modify entity @e[limit=1,,distance=..3,type=armor_stand] {NoGravity:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2039327,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:45s}]}

#setblock -500 100 1055 minecraft:iron_block






#----------------------------------------Rock Walls---------------------------------------------------------------------------------
#/summon pixelmon:statue 2153.0 175 2221 {NoGravity:1b,Growth:7b,BoundingBoxMode:2b,Invulnerable:0b,statueTexture:0b,CustomTexture:"invisible",ndex:101s,StartingYaw:180.0f,statueModelType:1b}

#/tedit add INTERACT /tellraw @pl {"text":"It's a wall that can be broken. Would you like to break it?","italic":true,"color":"gray"}
#/tedit add INTERACT /tellraw @pl ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger RockTrigger set 100"}},{"text":"]"}]
#/tedit add INTERACT /scoreboard players enable @pl RockTrigger

#Victory Road, NS

#tell @a[score_RockTrigger_min=100,score_RockTrigger=100] success!
#scoreboard players set @a[score_RockTrigger_min=100,score_RockTrigger=100] RockTrigger 0
