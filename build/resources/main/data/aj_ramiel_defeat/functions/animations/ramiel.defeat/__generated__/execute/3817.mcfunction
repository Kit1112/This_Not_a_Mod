#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-9.918f,57.203f,71.282f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.835 ^0.623 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^4.067 ^0.623 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^4.255 ^0.623 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^4.331 ^0.638 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^4.351 ^0.688 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^4.346 ^0.755 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^4.33 ^0.826 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^4.322 ^0.883 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^4.336 ^0.912 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:337}