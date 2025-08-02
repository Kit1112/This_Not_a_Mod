#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-2.966 ^-3.989 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-2.965 ^-3.987 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-2.963 ^-3.986 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-2.961 ^-3.984 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-2.959 ^-3.981 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-2.956 ^-3.979 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-2.953 ^-3.976 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:718}