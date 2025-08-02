#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^2.896 ^-3.944 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^2.894 ^-3.942 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^2.892 ^-3.939 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^2.889 ^-3.937 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^2.887 ^-3.934 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^2.885 ^-3.931 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^2.882 ^-3.929 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^2.875 ^-3.92 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:980}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:936}
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:987}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:935}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:934}