#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-5.151 ^-1.918 ^-2.974 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-5.109 ^-1.918 ^-2.95 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-5.078 ^-1.918 ^-2.932 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-5.048 ^-1.918 ^-2.914 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-5.017 ^-1.918 ^-2.896 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-4.987 ^-1.918 ^-2.879 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-4.957 ^-1.918 ^-2.862 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-4.926 ^-1.918 ^-2.844 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-4.895 ^-1.918 ^-2.826 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-4.865 ^-1.918 ^-2.809 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2678}