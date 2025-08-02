#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_statue.bone5,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,45f,0f]
execute if score #this.aj.anim aj.i matches 7..11 run tp @s ^-1.122 ^-4.699 ^1.122 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-1.122 ^-4.701 ^1.122 ~ ~
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_statue.bone5,distance=..10.09] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with amethyst_shard{CustomModelData:21}