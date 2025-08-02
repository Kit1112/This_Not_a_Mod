#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-2.95 ^-3.972 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-2.946 ^-3.968 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-2.942 ^-3.964 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-2.937 ^-3.959 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-2.932 ^-3.954 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-2.926 ^-3.948 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-2.919 ^-3.941 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-2.913 ^-3.935 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:718}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:674}
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:725}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:673}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:672}