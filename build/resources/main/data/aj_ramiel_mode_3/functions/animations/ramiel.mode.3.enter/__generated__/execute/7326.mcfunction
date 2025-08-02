#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-140.768f,37.761f,116.565f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-4.542 ^-1.918 ^-2.622 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-3.95 ^-1.918 ^-2.28 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-3.381 ^-1.918 ^-1.952 ~ ~
execute if score #this.aj.anim aj.i matches 86..93 run tp @s ^-3.288 ^-1.918 ^-1.898 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3027}
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3028}
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3029}
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3030}
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3031}
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3032}
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3033}
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3034}