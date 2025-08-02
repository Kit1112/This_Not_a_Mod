#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0.011 ^-5.844 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0.011 ^-5.87 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0.011 ^-5.896 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0.011 ^-5.923 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0.011 ^-5.949 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0.011 ^-5.976 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0.011 ^-6.003 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0.011 ^-6.03 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0.011 ^-6.056 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}