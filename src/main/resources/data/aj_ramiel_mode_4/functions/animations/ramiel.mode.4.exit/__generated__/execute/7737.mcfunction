#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.008 ^2.635 ^-4.519 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.008 ^2.624 ^-4.508 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.008 ^2.613 ^-4.496 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.008 ^2.601 ^-4.484 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.008 ^2.589 ^-4.473 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0.008 ^2.577 ^-4.461 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0.008 ^2.565 ^-4.448 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0.008 ^2.553 ^-4.437 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}