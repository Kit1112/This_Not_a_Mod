#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_statue.bone3,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-45f,-180f]
execute if score #this.aj.anim aj.i matches 0..2 run tp @s ^1.178 ^0.747 ^-1.178 ~ ~
execute if score #this.aj.anim aj.i matches 3..4 run tp @s ^1.177 ^0.747 ^-1.177 ~ ~
execute if score #this.aj.anim aj.i matches 5..6 run tp @s ^1.177 ^0.746 ^-1.177 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_statue.bone3,distance=..10.09] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with amethyst_shard{CustomModelData:15}