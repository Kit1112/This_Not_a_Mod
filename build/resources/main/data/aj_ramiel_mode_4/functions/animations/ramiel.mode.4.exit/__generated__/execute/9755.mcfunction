#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 39..40 run tp @s ^3.826 ^-4.279 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^3.824 ^-4.276 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^3.821 ^-4.273 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^3.819 ^-4.271 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^3.817 ^-4.268 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^3.814 ^-4.265 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}