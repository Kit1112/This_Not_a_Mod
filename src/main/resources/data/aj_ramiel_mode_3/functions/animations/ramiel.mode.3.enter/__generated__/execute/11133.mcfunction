#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-60f,0f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^4.839 ^-1.918 ^2.794 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^5.073 ^-1.918 ^2.929 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^5.297 ^-1.918 ^3.058 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^5.526 ^-1.918 ^3.191 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^5.71 ^-1.918 ^3.296 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^4.564 ^-1.918 ^2.635 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^4.573 ^-1.918 ^2.64 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^4.793 ^-1.918 ^2.767 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^4.855 ^-1.918 ^2.803 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^4.887 ^-1.918 ^2.821 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^4.917 ^-1.918 ^2.839 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5179}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5203}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5204}