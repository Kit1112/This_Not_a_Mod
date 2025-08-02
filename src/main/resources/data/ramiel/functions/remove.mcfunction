#built using mc-build (https://github.com/mc-build/mc-build)

function aj_ramiel_statue:remove/all_models
function aj_ramiel_mode_1:remove/all_models
function aj_ramiel_mode_2:remove/all_models
function aj_ramiel_mode_3:remove/all_models
function aj_ramiel_mode_4:remove/all_models
function aj_ramiel_defeat:remove/all_models
kill @e[tag=ramiel]
scoreboard players reset r.animating value
scoreboard players reset r.attacking value
scoreboard players reset r.firing_mode value
scoreboard players reset shootLength value
scoreboard players reset r.dying value
scoreboard players reset Ramiel r.health
bossbar set minecraft:ramiel players