#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^1.765 ^-0.316 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^1.997 ^-0.316 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^2.184 ^-0.316 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^2.261 ^-0.301 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^2.281 ^-0.251 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^2.275 ^-0.184 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^2.26 ^-0.113 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^2.251 ^-0.056 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^2.266 ^-0.027 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:198}