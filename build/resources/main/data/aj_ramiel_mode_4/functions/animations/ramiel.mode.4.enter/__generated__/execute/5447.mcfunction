#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.754f,-27.248f,167.471f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.826f,-27.322f,167.479f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.886f,-27.383f,167.486f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.932f,-27.431f,167.492f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.968f,-27.468f,167.496f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.991f,-27.491f,167.499f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^2.935 ^-4.008 ^-3.929 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^2.938 ^-4.005 ^-3.927 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^2.94 ^-4.003 ^-3.925 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^2.942 ^-4.001 ^-3.923 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^2.943 ^-4 ^-3.922 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^2.944 ^-3.999 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^2.944 ^-3.998 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:980}