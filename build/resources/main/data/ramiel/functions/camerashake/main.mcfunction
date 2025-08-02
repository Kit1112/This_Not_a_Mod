#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players remove @s cs.shakeTimer 1
scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation cs.rng cs.value = temp0 rng
scoreboard players operation cs.rng cs.value /= #100000 rng
scoreboard players operation cs.rng cs.value %= #4 rng
scoreboard players add cs.rng cs.value 1
scoreboard players operation cs.temp cs.shakeViolence = @s cs.shakeViolence
function ramiel:camerashake/__generated__/while/0