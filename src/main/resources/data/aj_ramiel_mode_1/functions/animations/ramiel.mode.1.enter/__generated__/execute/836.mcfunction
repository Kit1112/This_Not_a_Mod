#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.505 ^2.626 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.505 ^2.645 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.505 ^2.665 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.505 ^2.687 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.505 ^2.708 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.505 ^2.731 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.505 ^2.756 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.505 ^2.78 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.505 ^2.805 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}