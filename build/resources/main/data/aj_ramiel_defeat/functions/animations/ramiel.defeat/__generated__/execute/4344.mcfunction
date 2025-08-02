#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-59.985f,-54.32f,-44.985f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^-2.728 ^1.558 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-2.844 ^1.558 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-3.046 ^1.558 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:558}