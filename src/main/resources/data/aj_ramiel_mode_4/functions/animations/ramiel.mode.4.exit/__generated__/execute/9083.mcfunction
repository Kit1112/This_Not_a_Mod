#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 46..47 run tp @s ^-2.972 ^-3.994 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 48..49 run tp @s ^-2.971 ^-3.993 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-2.97 ^-3.992 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-2.969 ^-3.992 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-2.969 ^-3.991 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-2.968 ^-3.99 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:718}