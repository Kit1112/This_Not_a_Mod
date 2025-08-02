#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.01 ^1.467 ^-3.402 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.01 ^1.466 ^-3.401 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.01 ^1.464 ^-3.399 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.01 ^1.462 ^-3.397 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.01 ^1.46 ^-3.395 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.01 ^1.457 ^-3.392 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.01 ^1.454 ^-3.389 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:456}