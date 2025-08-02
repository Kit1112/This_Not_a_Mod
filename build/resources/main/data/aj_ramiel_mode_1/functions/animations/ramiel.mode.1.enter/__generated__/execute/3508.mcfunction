#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.011 ^-5.639 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.011 ^-5.658 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.011 ^-5.678 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.011 ^-5.699 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.011 ^-5.721 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.011 ^-5.744 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.011 ^-5.769 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.011 ^-5.793 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.011 ^-5.818 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}