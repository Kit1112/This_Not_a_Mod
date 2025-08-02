#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75f,-180f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75.034f,-180f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,76.852f,-180f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,78.799f,180f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,80.748f,180f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,82.893f,-180f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-0.562 ^2.604 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-0.562 ^2.588 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-0.562 ^2.574 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-0.562 ^2.56 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-0.562 ^2.549 ^-0.15 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-0.566 ^2.541 ^-0.132 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-0.571 ^2.534 ^-0.113 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-0.574 ^2.529 ^-0.094 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-0.577 ^2.524 ^-0.072 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}