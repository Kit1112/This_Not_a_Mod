#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-3.722 ^-4.143 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-3.711 ^-4.132 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-3.699 ^-4.12 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-3.688 ^-4.108 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-3.676 ^-4.096 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-3.664 ^-4.084 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-3.652 ^-4.072 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-3.64 ^-4.06 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}