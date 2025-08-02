#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 39..40 run tp @s ^-3.858 ^-4.278 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-3.857 ^-4.277 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-3.856 ^-4.277 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-3.855 ^-4.276 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-3.855 ^-4.275 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-3.854 ^-4.275 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}