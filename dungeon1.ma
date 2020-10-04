[top]
components : dungeon_generation

[dungeon_generation]
type : cell
width : 30
height : 30
delay : inertial
defaultDelayTime : 100
border : wrapped 
neighbors : dungeon_generation(-1,1) dungeon_generation(1,0) dungeon_generation(1,1) 
neighbors : dungeon_generation(0,-1)  dungeon_generation(0,0)  dungeon_generation(0,1)
neighbors : dungeon_generation(-1,-1)  dungeon_generation(-1,0)  dungeon_generation(1,-1)
initialvalue : 0

initialrowvalue : 0     111111111111111111111111111111
initialrowvalue : 1     100000001110111010110110101001 
initialrowvalue : 2     111101101001000010111111000001
initialrowvalue : 3     110110111001101110010010001001
initialrowvalue : 4     111100010001101100110110011111
initialrowvalue : 5     110111101110101111000011010111
initialrowvalue : 6     100111110110011011100101000101
initialrowvalue : 7     111110010110010011110101110101
initialrowvalue : 8     101111100101100011101001110011
initialrowvalue : 9     110100111100111110011001000111
initialrowvalue : 10    100111100001011001001011101001
initialrowvalue : 11    100000100111011001010000100111
initialrowvalue : 12    101000001011011110010001001001
initialrowvalue : 13    100000100001010001011101110111
initialrowvalue : 14    111110111001111100001101100001
initialrowvalue : 15    100111111100101011010100010001
initialrowvalue : 16    111101000011010101100101110001
initialrowvalue : 17    101101111010001100101011101101
initialrowvalue : 18    110101010001101000001100110011
initialrowvalue : 19    110101010011010110011110011011
initialrowvalue : 20    111011110010001001101100110101
initialrowvalue : 21    110110010010011111000010101111
initialrowvalue : 22    110111001001010011001110100011
initialrowvalue : 23    100000110000110111011010001111
initialrowvalue : 24    110001100001000100011110101001
initialrowvalue : 25    111101010110001101101100110001
initialrowvalue : 26    110110010010010010111011001011
initialrowvalue : 27    111111011100111000000100111111
initialrowvalue : 28    111110001101011101110010011101
initialrowvalue : 29    111111111111111111111111111111
localtransition : dungeon_generation-rule

[dungeon_generation-rule]
rule : 1 100 { (0,0) = 0 and trueCount > 5 }  
rule : 0 100 { (0,0) = 1 and trueCount < 4 }
rule : {(0,0)} 100 { t }