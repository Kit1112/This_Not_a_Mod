#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [118.256f,-49.793f,-64.005f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^2.39 ^-3.285 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^2.622 ^-3.285 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^2.809 ^-3.285 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^2.886 ^-3.27 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^2.906 ^-3.22 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^2.9 ^-3.154 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^2.885 ^-3.083 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^2.876 ^-3.025 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^2.891 ^-2.997 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:258}