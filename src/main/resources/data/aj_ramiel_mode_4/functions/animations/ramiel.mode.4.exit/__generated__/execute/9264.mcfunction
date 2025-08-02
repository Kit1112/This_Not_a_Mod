#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-3.848 ^-4.269 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-3.847 ^-4.267 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-3.845 ^-4.266 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-3.843 ^-4.264 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-3.841 ^-4.261 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-3.838 ^-4.259 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-3.835 ^-4.256 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}