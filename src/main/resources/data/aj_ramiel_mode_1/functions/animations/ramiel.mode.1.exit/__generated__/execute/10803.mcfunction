#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0.011 ^-5.797 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0.011 ^-5.772 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0.011 ^-5.748 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0.011 ^-5.725 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0.011 ^-5.702 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.011 ^-5.681 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0.011 ^-5.66 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0.011 ^-5.641 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.011 ^-5.622 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}