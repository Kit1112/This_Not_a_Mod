#built using mc-build (https://github.com/mc-build/mc-build)

function aj_ramiel_defeat:summon_model
execute as @e[tag=RAMIEL,tag=defeat] run function aj_ramiel_defeat:animations/ramiel.defeat/start
function aj_ramiel_statue:remove/all_models