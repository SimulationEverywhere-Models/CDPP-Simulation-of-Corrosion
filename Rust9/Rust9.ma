[top]
components : Rust9
in : input1 input2 input3
link : input1 input1@Rust9
link : input2 input2@Rust9
link : input3 input3@Rust9
[Rust9]
type : cell
width : 20
height : 20
delay : transport
defaultDelayTime : 1000
border : nowrapped 
neighbors : Rust(0,-1)   Rust(0,0)   Rust(0,1)
neighbors : Rust(-1,-1)  Rust(-1,0)  Rust(-1,1)
initialvalue : 0.0
initialvalue : 0.0
initialrowvalue :  0      99922299999999222999
initialrowvalue :  1      99922299999999222999
initialrowvalue :  2      99922299999999222999
initialrowvalue :  3      00011100000000111000
StateVariables: water active 
StateValues: 2 0.0
in : input1 input2 input3
link : input1 in@Rust9(0,3)
link : input2 in@Rust9(0,4)
link : input3 in@Rust9(0,5)
link : input1 in@Rust9(0,14)
link : input2 in@Rust9(0,15)
link : input3 in@Rust9(0,16)
localtransition : Rust-rule

[Rust-rule]
rule : {(-1,0)} 600 {(0,0)=2 and (-1,0)=-5}
rule : { (-1,0) + 719 } 71973 { (0,0) = $active and (-1,0) != ? and 0 < (-1,0) }
rule : { (-1,-1) + 1790 } 179049 { (0,0) = $active and (-1,-1) != ? and 0 < (-1,-1) }
rule : { (-1,1) + 2025 } 202534 { (0,0) = $active and (-1,1) != ? and 0 < (-1,1) }
rule : { (0,-1) + 2532 } 253213 { (0,0) = $active and (0,-1) != ? and 0 < (0,-1) }
rule : { (0,1)+  2767 } 276711 { (0,0) = $active and (0,1) != ? and 0 < (0,1) }
rule : {(0,0)} 0 { t }
