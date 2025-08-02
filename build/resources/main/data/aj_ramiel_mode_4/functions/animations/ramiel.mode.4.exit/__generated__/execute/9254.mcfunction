#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-3.854 ^-4.274 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 47..48 run tp @s ^-3.853 ^-4.274 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-3.852 ^-4.273 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-3.852 ^-4.272 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-3.851 ^-4.272 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-3.85 ^-4.271 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-3.849 ^-4.27 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}