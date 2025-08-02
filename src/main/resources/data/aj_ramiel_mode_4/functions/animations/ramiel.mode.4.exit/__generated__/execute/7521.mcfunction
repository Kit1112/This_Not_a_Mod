#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 46..47 run tp @s ^0.01 ^1.473 ^-3.408 ~ ~
execute if score #this.aj.anim aj.i matches 48..49 run tp @s ^0.01 ^1.472 ^-3.407 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.01 ^1.471 ^-3.406 ~ ~
execute if score #this.aj.anim aj.i matches 51..52 run tp @s ^0.01 ^1.47 ^-3.405 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0.01 ^1.469 ^-3.404 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:456}