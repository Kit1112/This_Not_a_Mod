#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^2.912 ^-3.963 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^2.91 ^-3.96 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^2.908 ^-3.957 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^2.905 ^-3.955 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^2.903 ^-3.952 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^2.901 ^-3.95 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^2.898 ^-3.947 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:980}