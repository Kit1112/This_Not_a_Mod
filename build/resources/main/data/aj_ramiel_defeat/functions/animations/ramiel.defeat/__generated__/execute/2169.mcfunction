#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,45f,-90f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,50.929f,-90f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,57.988f,-90f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^-2.891 ^-0.922 ^-0.996 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-3.007 ^-0.825 ^-0.888 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-3.209 ^-0.724 ^-0.747 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:464}