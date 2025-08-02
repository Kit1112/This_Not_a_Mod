#built using mc-build (https://github.com/mc-build/mc-build)

execute if score RamielPower value matches 1 run summon fireball ~ ~ ~ {ExplosionPower:30b,power:[0.0,-10.0,0.0],Item:{id:"minecraft:air",Count:1b}}
execute unless score RamielPower value matches 1.. run summon tnt ~ ~ ~
scoreboard players set Ramiel range 1000