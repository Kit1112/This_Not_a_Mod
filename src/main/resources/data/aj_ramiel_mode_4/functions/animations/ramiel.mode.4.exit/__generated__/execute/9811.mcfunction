#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^3.683 ^-4.118 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^3.674 ^-4.108 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^3.665 ^-4.097 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.656 ^-4.087 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.647 ^-4.077 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^3.638 ^-4.067 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^3.628 ^-4.056 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^3.62 ^-4.046 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}