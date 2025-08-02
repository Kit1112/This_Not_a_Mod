#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-59.985f,-54.32f,-44.985f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.282 ^1.558 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.514 ^1.558 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.701 ^1.558 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.778 ^1.573 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.798 ^1.623 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.792 ^1.689 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.777 ^1.76 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.768 ^1.818 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.783 ^1.846 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:558}