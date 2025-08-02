#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.787 ^-4.208 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.78 ^-4.201 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.772 ^-4.192 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.763 ^-4.184 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-3.753 ^-4.174 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-3.743 ^-4.164 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-3.733 ^-4.154 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}