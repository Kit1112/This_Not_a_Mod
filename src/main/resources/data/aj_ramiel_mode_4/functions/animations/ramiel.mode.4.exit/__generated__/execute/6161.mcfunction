#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~