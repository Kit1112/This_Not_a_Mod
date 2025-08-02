#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.699f,8.411f,-104.528f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^-3.297 ^-2.104 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-3.414 ^-2.104 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-3.616 ^-2.104 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:576}