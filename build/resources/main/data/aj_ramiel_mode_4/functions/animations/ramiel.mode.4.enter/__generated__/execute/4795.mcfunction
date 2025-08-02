#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.696f,22.07f,-166.869f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.891f,22.269f,-166.892f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.084f,22.467f,-166.915f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.28f,22.668f,-166.938f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.478f,22.87f,-166.962f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.677f,23.075f,-166.985f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.878f,23.28f,-167.009f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-3.822 ^-4.672 ^-5.581 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-3.823 ^-4.658 ^-5.577 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-3.825 ^-4.644 ^-5.574 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-3.827 ^-4.63 ^-5.57 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-3.828 ^-4.615 ^-5.566 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-3.83 ^-4.601 ^-5.562 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-3.832 ^-4.586 ^-5.558 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:772}
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:769}