#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.076f,18.011f,107.965f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.212f,18.525f,105.678f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.305f,18.986f,103.447f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.362f,19.421f,101.138f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.383f,19.812f,98.844f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.371f,20.179f,96.426f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.329f,20.492f,94.073f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.255f,20.774f,91.596f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.151f,21.014f,89.043f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-6.697 ^-2.391 ^-0.505 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-6.803 ^-2.692 ^-0.503 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-6.902 ^-2.986 ^-0.498 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-6.999 ^-3.292 ^-0.492 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-7.089 ^-3.597 ^-0.484 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-7.179 ^-3.917 ^-0.474 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-7.259 ^-4.227 ^-0.463 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-7.337 ^-4.552 ^-0.451 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-7.41 ^-4.884 ^-0.437 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:537}