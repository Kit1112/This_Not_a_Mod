#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^2.931 ^-3.983 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^2.929 ^-3.981 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^2.926 ^-3.978 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^2.924 ^-3.976 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^2.922 ^-3.973 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^2.919 ^-3.97 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^2.917 ^-3.968 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^2.915 ^-3.965 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:980}