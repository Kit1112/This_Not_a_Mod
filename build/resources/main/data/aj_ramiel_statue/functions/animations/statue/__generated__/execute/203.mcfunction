#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_statue.bone7,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-45f,180f]
execute if score #this.aj.anim aj.i matches 0..1 run tp @s ^0.957 ^-4.857 ^-0.957 ~ ~
execute if score #this.aj.anim aj.i matches 2..3 run tp @s ^0.957 ^-4.856 ^-0.957 ~ ~
execute if score #this.aj.anim aj.i matches 4..6 run tp @s ^0.956 ^-4.856 ^-0.956 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_statue.bone7,distance=..10.09] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with amethyst_shard{CustomModelData:25}