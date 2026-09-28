
execute if stopwatch adbar 1.. run scoreboard players remove adbar timer 1
execute if stopwatch adbar 1.. run stopwatch restart adbar

execute store result bossbar adbar value run scoreboard players get adbar timer
execute if score adbar timer matches ..-1 run bossbar set adbar visible false