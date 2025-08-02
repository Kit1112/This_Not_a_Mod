#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_statue.bone8,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,45f,-180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.996 ^-4.809 ^-0.996 ~ ~
execute if score #this.aj.anim aj.i matches 1..5 run tp @s ^-0.996 ^-4.808 ^-0.996 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-0.996 ^-4.807 ^-0.996 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_statue.bone8,distance=..10.09] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with amethyst_shard{CustomModelData:27}