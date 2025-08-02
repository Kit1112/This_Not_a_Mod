#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.613f,-8.429f,102.841f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-1.492 ^-2.954 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-1.724 ^-2.954 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-1.911 ^-2.954 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-1.988 ^-2.939 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-2.008 ^-2.889 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-2.002 ^-2.823 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-1.987 ^-2.752 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-1.978 ^-2.694 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-1.993 ^-2.666 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:636}