#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,180f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-4.771 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-4.705 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-4.669 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-4.634 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-4.598 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-4.564 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-4.529 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-4.493 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-4.458 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-4.423 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2422}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2563}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2420}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2560}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2558}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2417}