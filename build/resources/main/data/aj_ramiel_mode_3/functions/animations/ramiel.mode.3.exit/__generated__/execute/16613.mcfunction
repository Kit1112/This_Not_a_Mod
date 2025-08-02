#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,180f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-1.751 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-1.471 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-1.202 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-0.927 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-0.642 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 126..130 run tp @s ^-0.609 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2417}