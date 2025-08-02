#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.754f,27.248f,-167.471f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.826f,27.322f,-167.479f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.886f,27.383f,-167.486f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.932f,27.431f,-167.492f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.968f,27.468f,-167.496f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.991f,27.491f,-167.499f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-3.857 ^-4.297 ^-5.465 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-3.857 ^-4.291 ^-5.463 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-3.857 ^-4.287 ^-5.461 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-3.857 ^-4.284 ^-5.46 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-3.858 ^-4.281 ^-5.459 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-3.858 ^-4.279 ^-5.459 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-3.858 ^-4.278 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}