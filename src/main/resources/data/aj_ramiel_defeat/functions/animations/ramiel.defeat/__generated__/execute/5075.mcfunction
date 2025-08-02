#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.613f,-8.429f,102.841f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.753f,-7.776f,101.053f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.885f,-7.028f,98.905f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.981f,-6.315f,96.735f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.043f,-5.637f,94.543f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.073f,-5.01f,92.373f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.073f,-4.397f,90.091f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-2.047 ^-2.683 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-2.157 ^-2.761 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-2.345 ^-2.921 ^4.027 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-2.403 ^-2.983 ^4.039 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-2.435 ^-3.026 ^4.053 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-2.474 ^-3.079 ^4.065 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-2.519 ^-3.14 ^4.077 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-2.57 ^-3.209 ^4.087 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-2.628 ^-3.288 ^4.098 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:636}