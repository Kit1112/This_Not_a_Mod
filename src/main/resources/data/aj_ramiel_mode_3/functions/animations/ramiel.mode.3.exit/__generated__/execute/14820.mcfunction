#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,30f,0f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-2.974 ^-1.918 ^5.151 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-2.95 ^-1.918 ^5.109 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-2.932 ^-1.918 ^5.078 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-2.914 ^-1.918 ^5.048 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-2.896 ^-1.918 ^5.017 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-2.879 ^-1.918 ^4.987 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-2.862 ^-1.918 ^4.957 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-2.844 ^-1.918 ^4.926 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-2.826 ^-1.918 ^4.895 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-2.809 ^-1.918 ^4.865 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1415}