#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-45f,180f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0 ^-1.918 ^-1.751 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0 ^-1.918 ^-1.471 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0 ^-1.918 ^-1.202 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^-1.918 ^-0.927 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^-1.918 ^-0.642 ~ ~
execute if score #this.aj.anim aj.i matches 126..130 run tp @s ^0 ^-1.918 ^-0.609 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3680}