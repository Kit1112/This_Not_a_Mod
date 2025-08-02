#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,180f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-4.388 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-4.155 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-3.896 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-3.631 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-3.367 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-3.102 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-2.838 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-2.573 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-2.3 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-2.026 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2417}