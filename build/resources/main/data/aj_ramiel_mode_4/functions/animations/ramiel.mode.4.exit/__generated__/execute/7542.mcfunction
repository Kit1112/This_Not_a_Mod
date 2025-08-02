#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.01 ^1.451 ^-3.386 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.01 ^1.447 ^-3.382 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.01 ^1.443 ^-3.378 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.01 ^1.438 ^-3.373 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.01 ^1.433 ^-3.368 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.01 ^1.427 ^-3.362 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.01 ^1.42 ^-3.355 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.01 ^1.414 ^-3.349 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:456}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:412}
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:463}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:411}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:410}