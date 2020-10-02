[top]
components : Rust10
in : input1 input2 
link : input1 input1@Rust10
link : input2 input2@Rust10
[Rust10]
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
initialrowvalue :  0      99229999922999992299
initialrowvalue :  1      99229999922999992299
initialrowvalue :  2      99229999922999992299
initialrowvalue :  3      77777777777777777777
initialrowvalue :  4      77777777777777777777
initialrowvalue :  5      77000000000000000077
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
link : input1 in@Rust10(0,2)
link : input2 in@Rust10(0,3)
link : input1 in@Rust10(0,9)
link : input2 in@Rust10(0,10)
link : input1 in@Rust10(0,16)
link : input2 in@Rust10(0,17)
localtransition : Rust-rule
zone : insulation { (3,0)..(4,19) } 
zone : insulation { (5,0)..(17,2) } 
zone : insulation { (18,0)..(19,19) } 
zone : insulation { (5,18)..(17,19) }

[Rust-rule]
rule : {(-1,0)} 300 {(0,0)=2 and (-1,0)=-5}
rule : {(0,0)} 600 { t }

[insulation]
rule : {(0,0)} 600 {undefCount >= 1}
rule : {(0,0)} 600 {t}