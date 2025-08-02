#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-39.918f,57.203f,71.282f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.484 ^-2.828 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.716 ^-2.828 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.903 ^-2.828 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^3.98 ^-2.813 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^4 ^-2.763 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^3.994 ^-2.696 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.979 ^-2.626 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.97 ^-2.568 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^3.985 ^-2.539 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:298}