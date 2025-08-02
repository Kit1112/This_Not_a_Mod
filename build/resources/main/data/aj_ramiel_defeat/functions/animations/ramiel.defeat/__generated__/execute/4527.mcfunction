#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.699f,8.411f,-104.528f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.851 ^-2.104 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-4.083 ^-2.104 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-4.27 ^-2.104 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-4.347 ^-2.088 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-4.367 ^-2.039 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-4.362 ^-1.972 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-4.346 ^-1.901 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-4.337 ^-1.843 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-4.352 ^-1.815 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:576}