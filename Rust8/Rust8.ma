[top]
components : Rust8
in : input1 input2 
link : input1 input1@Rust8
link : input2 input2@Rust8
[Rust8]
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
initialrowvalue :  0      99999999922999999999
initialrowvalue :  1      99999999922999999999
initialrowvalue :  2      99999999922999999999
initialrowvalue :  3      77777777777777777777
initialrowvalue :  4      77777777777777777777
initialrowvalue :  5      77000000011000000077
initialrowvalue :  6      77000000000000000077
initialrowvalue :  7      77000000000000000077
initialrowvalue :  8      77000000000000000077
initialrowvalue :  9      77000000000000000077
initialrowvalue :  10     77000000000000000077
initialrowvalue :  11     77000000000000000077
initialrowvalue :  12     77000000000000000077
initialrowvalue :  13     77000000000000000077
initialrowvalue :  14     77000000000000000077
initialrowvalue :  15     77000000000000000077
initialrowvalue :  16     77000000000000000077
initialrowvalue :  17     77000000000000000077
initialrowvalue :  18     77777777777777777777
initialrowvalue :  19     77777777777777777777
StateVariables: water active 
StateValues: 2 0.0
in : input1 input2 
link : input1 in@Rust8(0,9)
link : input2 in@Rust8(0,10)
localtransition : Rust-rule
zone : insulation { (3,0)..(17,1) } 
zone : insulation { (3,2)..(4,8) }
zone : insulation { (3,11)..(4,17) } 
zone : insulation { (18,0)..(19,19) } 
zone : insulation { (3,18)..(17,19) }

[Rust-rule]
rule : {(-1,0)} 600 {(0,0)=2 and (-1,0)=-5}
rule : {(-1,0)} 600 {(0,0)=7 and (-1,0)=-5}
rule : { (-1,0) + 719 } 71973 { (0,0) = $active and (-1,0) != ? and 0 < (-1,0) }
rule : { (-1,-1) + 1790 } 179049 { (0,0) = $active and (-1,-1) != ? and 0 < (-1,-1) }
rule : { (-1,1) + 2025 } 202534 { (0,0) = $active and (-1,1) != ? and 0 < (-1,1) }
rule : { (0,-1) + 2532 } 253213 { (0,0) = $active and (0,-1) != ? and 0 < (0,-1) }
rule : { (0,1)+  2767 } 276711 { (0,0) = $active and (0,1) != ? and 0 < (0,1) }
rule : {(0,0)} 600 { t }

[insulation]
rule : {(0,0)} 600 {undefCount >= 1}
rule : {(0,0)} 600 {t}