#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_statue.bone4,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,45f,-180f]
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_statue.bone4,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,45f,180f]
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_statue.bone4,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,45f,-180f]
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_statue.bone4,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,45f,180f]
execute if score #this.aj.anim aj.i matches 7..11 run tp @s ^-1.37 ^0.863 ^-1.37 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-1.371 ^0.865 ^-1.371 ~ ~
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_statue.bone4,distance=..10.09] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with amethyst_shard{CustomModelData:17}