#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-167.175f,48.714f,100.779f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.358 ^-4.811 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.59 ^-4.811 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.777 ^-4.811 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.854 ^-4.795 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.874 ^-4.746 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.868 ^-4.679 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.853 ^-4.608 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.844 ^-4.551 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.859 ^-4.522 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:596}