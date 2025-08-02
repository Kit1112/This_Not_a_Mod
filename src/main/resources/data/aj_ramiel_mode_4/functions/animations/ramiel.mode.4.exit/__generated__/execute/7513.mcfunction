#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 39..40 run tp @s ^0.01 ^1.477 ^-3.412 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.01 ^1.476 ^-3.411 ~ ~
execute if score #this.aj.anim aj.i matches 42..43 run tp @s ^0.01 ^1.475 ^-3.41 ~ ~
execute if score #this.aj.anim aj.i matches 44..45 run tp @s ^0.01 ^1.474 ^-3.409 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:456}