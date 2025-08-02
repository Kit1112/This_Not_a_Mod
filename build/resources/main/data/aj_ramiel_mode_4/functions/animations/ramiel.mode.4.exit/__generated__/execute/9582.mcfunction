#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 39..40 run tp @s ^2.944 ^-3.998 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^2.942 ^-3.996 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^2.94 ^-3.993 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^2.937 ^-3.991 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^2.935 ^-3.988 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^2.933 ^-3.985 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:980}