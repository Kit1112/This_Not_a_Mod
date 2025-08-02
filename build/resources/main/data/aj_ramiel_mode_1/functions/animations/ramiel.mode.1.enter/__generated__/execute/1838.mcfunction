#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.011 ^1.803 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.011 ^1.822 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-0.011 ^1.842 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-0.011 ^1.863 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-0.011 ^1.885 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-0.011 ^1.908 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.011 ^1.933 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.011 ^1.957 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-0.011 ^1.982 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}