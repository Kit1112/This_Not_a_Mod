#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players reset Attacker UUID0
scoreboard players reset Attacker UUID1
scoreboard players reset Attacker UUID2
scoreboard players reset Attacker UUID3
scoreboard players set r.attacking value 1
scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation shootmode value = temp0 rng
scoreboard players operation shootmode value /= #100000 rng
scoreboard players operation shootmode value %= #4 rng
scoreboard players add shootmode value 1
execute if score r.retaliate value matches 1 run scoreboard players set shootmode value 2
scoreboard players set #execute LANG_MC_INTERNAL 0
execute if score shootmode value matches 1 run schedule function ramiel:__generated__/conditional/0 5s
execute if score #execute LANG_MC_INTERNAL matches 0 if score shootmode value matches 2 run function ramiel:__generated__/conditional/1
execute if score #execute LANG_MC_INTERNAL matches 0 if score shootmode value matches 3 run function ramiel:__generated__/conditional/2
execute if score #execute LANG_MC_INTERNAL matches 0 if score shootmode value matches 4 run function ramiel:__generated__/conditional/3
scoreboard players reset r.retaliate value
