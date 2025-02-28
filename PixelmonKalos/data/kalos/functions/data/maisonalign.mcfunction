#Stage coords
#x=1209,y=74,z=1537,dx=22,dy=10,dz=14



#Doubles

#function data:maisonalign if @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic]
#function data:maisonalign if @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic]

#Adds Skip tags if a Pokemon is already standing on that spot

#Player's positions
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3..4}] at @e[x=1223,y=74,z=1542,dy=3,type=armor_stand] as @e[type=pixelmon:pixelmon,distance=..2] run tag @e[x=1223,y=74,z=1542,dy=3,type=armor_stand] add Skip
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3..4}] at @e[x=1223,y=74,z=1548,dy=3,type=armor_stand] as @e[type=pixelmon:pixelmon,distance=..2] run tag @e[x=1223,y=74,z=1548,dy=3,type=armor_stand] add Skip

#NPC positions
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3..4}] at @e[x=1217,y=74,z=1542,dy=3,type=armor_stand] as @e[type=pixelmon:pixelmon,distance=..2] run tag @e[x=1217,y=74,z=1542,dy=3,type=armor_stand] add Skip
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3..4}] at @e[x=1217,y=74,z=1548,dy=3,type=armor_stand] as @e[type=pixelmon:pixelmon,distance=..2] run tag @e[x=1217,y=74,z=1548,dy=3,type=armor_stand] add Skip




#Rotates the Pokemon



#Tps the trainer's Pokemon
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3..4}] at @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer] run tp @e[distance=..2,type=pixelmon:pixelmon] @e[x=1217,y=74,z=1548,dy=3,type=armor_stand,tag=!Skip,limit=1]
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3..4}] at @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer] run tp @e[distance=..2,type=pixelmon:pixelmon] @e[x=1217,y=74,z=1542,dy=3,type=armor_stand,tag=!Skip,limit=1]

execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,scores={BattleMaison=3..4}] at @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer] run tp @e[distance=..2,type=pixelmon:pixelmon] @e[x=1217,y=74,z=1548,dy=3,type=armor_stand,tag=!Skip,limit=1]
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,scores={BattleMaison=3..4}] at @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer] run tp @e[distance=..2,type=pixelmon:pixelmon] @e[x=1217,y=74,z=1542,dy=3,type=armor_stand,tag=!Skip,limit=1]




#Tps the player's Pokemon
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3=4}] run tp @e[distance=..2,type=pixelmon:pixelmon,limit=1] @e[x=1223,y=74,z=1548,dy=3,type=armor_stand,tag=!Skip,limit=1]
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,scores={BattleMaison=3=4}] run tp @e[distance=..2,type=pixelmon:pixelmon,limit=1] @e[x=1223,y=74,z=1542,dy=3,type=armor_stand,tag=!Skip,limit=1]

execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,scores={BattleMaison=3..4}] run tp @e[distance=..2,type=pixelmon:pixelmon,limit=1] @e[x=1223,y=74,z=1548,dy=3,type=armor_stand,tag=!Skip,limit=1]
execute if entity @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,scores={BattleMaison=3..4}] run tp @e[distance=..2,type=pixelmon:pixelmon,limit=1] @e[x=1223,y=74,z=1542,dy=3,type=armor_stand,tag=!Skip,limit=1]





#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Singles
#Issues with the armor stand blocking the player from battling


#Adds Skips if Pokemon is near

#Player's Side
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ execute @e[x=1223,y=74,z=1545,dy=3,type=armor_stand] ~ ~ ~ execute @e[type=pixelmon:pixelmon,r=2] ~ ~ ~ scoreboard players tag @e[x=1223,y=74,z=1545,dy=3,type=armor_stand] add Skip
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~  execute @e[x=1223,y=74,z=1545,dy=3,type=armor_stand] ~ ~ ~ execute @e[type=pixelmon:pixelmon,r=2] ~ ~ ~ scoreboard players tag @e[x=1223,y=74,z=1545,dy=3,type=armor_stand] add Skip

#NPC's Side
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ execute @e[x=1217,y=74,z=1545,dy=3,type=armor_stand] ~ ~ ~ execute @e[type=pixelmon:pixelmon,r=2] ~ ~ ~ scoreboard players tag @e[x=1217,y=74,z=1545,dy=3,type=armor_stand] add Skip
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ execute @e[x=1217,y=74,z=1545,dy=3,type=armor_stand] ~ ~ ~ execute @e[type=pixelmon:pixelmon,r=2] ~ ~ ~ scoreboard players tag @e[x=1217,y=74,z=1545,dy=3,type=armor_stand] add Skip




#Tps Player's Pokemon
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ tp @e[r=2,type=pixelmon:pixelmon,c=1] @e[x=1223,y=74,z=1545,dy=3,type=armor_stand,tag=!Skip]
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ tp @e[r=2,type=pixelmon:pixelmon,c=1] @e[x=1223,y=74,z=1545,dy=3,type=armor_stand,tag=!Skip]


#Tps NPC's Pokemon
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ execute @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ tp @e[r=2,type=pixelmon:pixelmon,c=1] @e[x=1217,y=74,z=1545,dy=3,type=armor_stand,tag=!Skip]
#execute @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic,score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ execute @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ tp @e[r=2,type=pixelmon:pixelmon,c=1] @e[x=1217,y=74,z=1545,dy=3,type=armor_stand,tag=!Skip]


#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





#Tps the player
tp @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic] 1225 75 1545 90 -12
tp @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic] 1225 75 1545 90 -12




#Removes the Skip tags
tag @e[x=1220,y=75,z=1545,distance=..10,type=armor_stand,tag=Skip] remove Skip

#
