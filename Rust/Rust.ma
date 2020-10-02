[top]
components : Rust
in : input1 input2 
link : input1 input1@Rust
link : input2 input2@Rust
[Rust]
type : cell
width : 20
height : 20
delay : transport
defaultDelayTime : 1000
border : nowrapped 
neighbors : Rust(0,-1)   Rust(0,0)   Rust(0,1)
neighbors : Rust(-1,-1)  Rust(-1,0)  Rust(-1,1)
initialvalue : 0.0
initialrowvalue :  0      22222222222222222222
initialrowvalue :  1      22222222222222222222
initialrowvalue :  2      22222222222222222222
initialrowvalue :  3      11111111111111111111
statevariables: water active
StateValues: 2 0.0
in : input1 input2 
link : input1 in@Rust(0,0)
link : input2 in@Rust(0,1)
link : input1 in@Rust(0,2)
link : input2 in@Rust(0,3)
link : input1 in@Rust(0,4)
link : input2 in@Rust(0,5)
link : input1 in@Rust(0,6)
link : input2 in@Rust(0,7)
link : input1 in@Rust(0,8)
link : input2 in@Rust(0,9)
link : input1 in@Rust(0,10)
link : input2 in@Rust(0,11)
link : input1 in@Rust(0,12)
link : input2 in@Rust(0,13)
link : input1 in@Rust(0,14)
link : input2 in@Rust(0,15)
link : input1 in@Rust(0,16)
link : input2 in@Rust(0,17)
link : input1 in@Rust(0,18)
link : input2 in@Rust(0,19)
localtransition : Rust-rule
% When the  metal gets fully exposed to water molecules
[Rust-rule]
rule : {(-1,0)} 600 {(0,0)=2 and (-1,0)=-5}
rule : { (-1,0) + 719 } 71973 { (0,0) = $active and (-1,0) != ? and 0 < (-1,0) }
rule : { (-1,-1) + 1790 } 179049 { (0,0) = $active and (-1,-1) != ? and 0 < (-1,-1) }
rule : { (-1,1) + 2025 } 202534 { (0,0) = $active and (-1,1) != ? and 0 < (-1,1) }
rule : { (0,-1) + 2532 } 253213 { (0,0) = $active and (0,-1) != ? and 0 < (0,-1) }
rule : { (0,1)+  2767 } 276711 { (0,0) = $active and (0,1) != ? and 0 < (0,1) }
rule : {(0,0)} 0 { t }