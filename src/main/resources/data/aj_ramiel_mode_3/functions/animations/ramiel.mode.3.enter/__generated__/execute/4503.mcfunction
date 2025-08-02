#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,30f,0f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-2.794 ^-1.918 ^4.839 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-2.929 ^-1.918 ^5.073 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-3.058 ^-1.918 ^5.297 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-3.191 ^-1.918 ^5.526 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-3.296 ^-1.918 ^5.71 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-2.635 ^-1.918 ^4.564 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-2.64 ^-1.918 ^4.573 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-2.767 ^-1.918 ^4.793 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-2.803 ^-1.918 ^4.855 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-2.821 ^-1.918 ^4.887 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-2.839 ^-1.918 ^4.917 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1390}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1414}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1415}