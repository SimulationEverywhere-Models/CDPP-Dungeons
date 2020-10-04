[top]
components : dungeon_generation

[dungeon_generation]
type : cell
width : 30
height : 30
delay : inertial
defaultDelayTime : 100
border : wrapped 
neighbors : dungeon_generation(-1,1) dungeon_generation(0,1) dungeon_generation(1,1) 
neighbors : dungeon_generation(0,-1)  dungeon_generation(0,0)  dungeon_generation(0,1)
neighbors : dungeon_generation(-1,-1)  dungeon_generation(0,-1)  dungeon_generation(1,-1)
initialvalue : 0

initialrowvalue : 0     111111111111111111111111111111
initialrowvalue : 1     111111111111111111111111101001 
initialrowvalue : 2     111111111001111111111111000001
initialrowvalue : 3     111111111001111110011110001001
initialrowvalue : 4     111111111001111110000110011111
initialrowvalue : 5     111111111110111111000011001111
initialrowvalue : 6     111111111110011111100011100111
initialrowvalue : 7     111111111110010011110001110011
initialrowvalue : 8     111111111101100011111001110011
initialrowvalue : 9     110111111000111110011001100111
initialrowvalue : 10    100011100001111000000001100011
initialrowvalue : 11    100000000011111000000000100111
initialrowvalue : 12    100000000011111100000001000011
initialrowvalue : 13    110000000001111100001101100011
initialrowvalue : 14    111111111001111100001101100001
initialrowvalue : 15    111111111000111110000100110001
initialrowvalue : 16    111111110000011100000101110001
initialrowvalue : 17    111111110000001100001011111001
initialrowvalue : 18    111111110000001000001100111111
initialrowvalue : 19    111111110000000100011110011111
initialrowvalue : 20    111111110000001111101100011111
initialrowvalue : 21    111111100000011111000110001111
initialrowvalue : 22    110111000000011111001110000111
initialrowvalue : 23    100000100000000111111110000111
initialrowvalue : 24    110001100000000111111110000001
initialrowvalue : 25    111101000000001101111111110001
initialrowvalue : 26    111110011000010000111111111011
initialrowvalue : 27    111111111100111000111111111111
initialrowvalue : 28    111111111111111101111111111111
initialrowvalue : 29    111111111111111111111111111111
localtransition : dungeon_generation-rule


[dungeon_generation-rule]

rule : 0 100 { (0,0) = 1 and trueCount < 4 }
rule : 0 100 { (0,1) = 1 and trueCount = 3 }
rule : 1 100 { (0,0) = 1 and trueCount < 3 }
rule : 0 100 { (0,1) = 1 and trueCount < 4 }
rule : {(0,0)} 100 { t }

