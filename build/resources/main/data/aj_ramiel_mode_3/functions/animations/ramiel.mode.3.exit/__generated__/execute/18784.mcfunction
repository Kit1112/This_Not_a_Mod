#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-45f,180f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0 ^-1.918 ^-4.771 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0 ^-1.918 ^-4.705 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0 ^-1.918 ^-4.669 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0 ^-1.918 ^-4.634 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0 ^-1.918 ^-4.598 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^-1.918 ^-4.564 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^-1.918 ^-4.529 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^-1.918 ^-4.493 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^-1.918 ^-4.458 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^-1.918 ^-4.423 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3685}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3826}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3683}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3823}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3821}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3680}