#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,180f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.377 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.421 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.453 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.479 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.492 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.504 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.515 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.526 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.537 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.545 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2417}