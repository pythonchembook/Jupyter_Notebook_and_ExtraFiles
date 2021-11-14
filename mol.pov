#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White transmit 1.0}
camera {orthographic
  right -19.25*x up 5.74*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}


light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}
// no fog
#declare simple = finish {phong 0.7}
#declare pale = finish {ambient 0.5 diffuse 0.85 roughness 0.001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.1 roughness 0.04}
#declare vmd = finish {ambient 0.0 diffuse 0.65 phong 0.1 phong_size 40.0 specular 0.5 }
#declare jmol = finish {ambient 0.2 diffuse 0.6 specular 1 roughness 0.001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.7 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient 0.15 brilliance 2 diffuse 0.6 metallic specular 1.0 roughness 0.001 reflection 0.0}
#declare glass = finish {ambient 0.05 diffuse 0.3 specular 1.0 roughness 0.001}
#declare glass2 = finish {ambient 0.01 diffuse 0.3 specular 1.0 reflection 0.25 roughness 0.001}
#declare Rcell = 0.050;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     translate LOC}
#end

// no cell vertices
atom(< -8.17,   1.73,   0.00>, 0.17, rgb <1.00, 1.00, 1.00>, 0.0, ase3) // #0
atom(<  8.83,   1.73,   0.00>, 0.22, rgb <0.85, 1.00, 1.00>, 0.0, ase3) // #1
atom(< -8.17,   0.73,   0.00>, 0.28, rgb <0.80, 0.50, 1.00>, 0.0, ase3) // #2
atom(< -7.17,   0.73,   0.00>, 0.24, rgb <0.76, 1.00, 0.00>, 0.0, ase3) // #3
atom(<  3.83,   0.73,   0.00>, 0.30, rgb <1.00, 0.71, 0.71>, 0.0, ase3) // #4
atom(<  4.83,   0.73,   0.00>, 0.26, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #5
atom(<  5.83,   0.73,   0.00>, 0.24, rgb <0.19, 0.31, 0.97>, 0.0, ase3) // #6
atom(<  6.83,   0.73,   0.00>, 0.23, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #7
atom(<  7.83,   0.73,   0.00>, 0.23, rgb <0.56, 0.88, 0.31>, 0.0, ase3) // #8
atom(<  8.83,   0.73,   0.00>, 0.24, rgb <0.70, 0.89, 0.96>, 0.0, ase3) // #9
atom(< -8.17,  -0.27,   0.00>, 0.35, rgb <0.67, 0.36, 0.95>, 0.0, ase3) // #10
atom(< -7.17,  -0.27,   0.00>, 0.27, rgb <0.54, 1.00, 0.00>, 0.0, ase3) // #11
atom(<  3.83,  -0.27,   0.00>, 0.28, rgb <0.75, 0.65, 0.65>, 0.0, ase3) // #12
atom(<  4.83,  -0.27,   0.00>, 0.32, rgb <0.94, 0.78, 0.63>, 0.0, ase3) // #13
atom(<  5.83,  -0.27,   0.00>, 0.28, rgb <1.00, 0.50, 0.00>, 0.0, ase3) // #14
atom(<  6.83,  -0.27,   0.00>, 0.28, rgb <1.00, 1.00, 0.19>, 0.0, ase3) // #15
atom(<  7.83,  -0.27,   0.00>, 0.27, rgb <0.12, 0.94, 0.12>, 0.0, ase3) // #16
atom(<  8.83,  -0.27,   0.00>, 0.29, rgb <0.50, 0.82, 0.89>, 0.0, ase3) // #17
atom(< -8.17,  -1.27,   0.00>, 0.42, rgb <0.56, 0.25, 0.83>, 0.0, ase3) // #18
atom(< -7.17,  -1.27,   0.00>, 0.36, rgb <0.24, 1.00, 0.00>, 0.0, ase3) // #19
atom(< -6.17,  -1.27,   0.00>, 0.33, rgb <0.90, 0.90, 0.90>, 0.0, ase3) // #20
atom(< -5.17,  -1.27,   0.00>, 0.32, rgb <0.75, 0.76, 0.78>, 0.0, ase3) // #21
atom(< -4.17,  -1.27,   0.00>, 0.32, rgb <0.65, 0.65, 0.67>, 0.0, ase3) // #22
atom(< -3.17,  -1.27,   0.00>, 0.32, rgb <0.54, 0.60, 0.78>, 0.0, ase3) // #23
atom(< -2.17,  -1.27,   0.00>, 0.32, rgb <0.61, 0.48, 0.78>, 0.0, ase3) // #24
atom(< -1.17,  -1.27,   0.00>, 0.31, rgb <0.88, 0.40, 0.20>, 0.0, ase3) // #25
atom(< -0.17,  -1.27,   0.00>, 0.31, rgb <0.94, 0.56, 0.63>, 0.0, ase3) // #26
atom(<  0.83,  -1.27,   0.00>, 0.30, rgb <0.31, 0.82, 0.31>, 0.0, ase3) // #27
atom(<  1.83,  -1.27,   0.00>, 0.30, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #28
atom(<  2.83,  -1.27,   0.00>, 0.31, rgb <0.49, 0.50, 0.69>, 0.0, ase3) // #29
atom(<  3.83,  -1.27,   0.00>, 0.29, rgb <0.76, 0.56, 0.56>, 0.0, ase3) // #30
atom(<  4.83,  -1.27,   0.00>, 0.32, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #31
atom(<  5.83,  -1.27,   0.00>, 0.28, rgb <0.74, 0.50, 0.89>, 0.0, ase3) // #32
atom(<  6.83,  -1.27,   0.00>, 0.29, rgb <1.00, 0.63, 0.00>, 0.0, ase3) // #33
atom(<  7.83,  -1.27,   0.00>, 0.28, rgb <0.65, 0.16, 0.16>, 0.0, ase3) // #34
atom(<  8.83,  -1.27,   0.00>, 0.31, rgb <0.36, 0.72, 0.82>, 0.0, ase3) // #35
atom(< -8.17,  -2.27,   0.00>, 0.47, rgb <0.44, 0.18, 0.69>, 0.0, ase3) // #36
atom(< -7.17,  -2.27,   0.00>, 0.38, rgb <0.00, 1.00, 0.00>, 0.0, ase3) // #37
atom(< -6.17,  -2.27,   0.00>, 0.36, rgb <0.58, 1.00, 1.00>, 0.0, ase3) // #38
atom(< -5.17,  -2.27,   0.00>, 0.34, rgb <0.58, 0.88, 0.88>, 0.0, ase3) // #39
atom(< -4.17,  -2.27,   0.00>, 0.34, rgb <0.45, 0.76, 0.79>, 0.0, ase3) // #40
atom(< -3.17,  -2.27,   0.00>, 0.33, rgb <0.33, 0.71, 0.71>, 0.0, ase3) // #41
atom(< -2.17,  -2.27,   0.00>, 0.33, rgb <0.23, 0.62, 0.62>, 0.0, ase3) // #42
atom(< -1.17,  -2.27,   0.00>, 0.33, rgb <0.14, 0.56, 0.56>, 0.0, ase3) // #43
atom(< -0.17,  -2.27,   0.00>, 0.32, rgb <0.04, 0.49, 0.55>, 0.0, ase3) // #44
atom(<  0.83,  -2.27,   0.00>, 0.32, rgb <0.00, 0.41, 0.52>, 0.0, ase3) // #45
atom(<  1.83,  -2.27,   0.00>, 0.32, rgb <0.75, 0.75, 0.75>, 0.0, ase3) // #46
atom(<  2.83,  -2.27,   0.00>, 0.34, rgb <1.00, 0.85, 0.56>, 0.0, ase3) // #47
atom(<  3.83,  -2.27,   0.00>, 0.30, rgb <0.65, 0.46, 0.45>, 0.0, ase3) // #48
atom(<  4.83,  -2.27,   0.00>, 0.33, rgb <0.40, 0.50, 0.50>, 0.0, ase3) // #49
atom(<  5.83,  -2.27,   0.00>, 0.32, rgb <0.62, 0.39, 0.71>, 0.0, ase3) // #50
atom(<  6.83,  -2.27,   0.00>, 0.32, rgb <0.83, 0.48, 0.00>, 0.0, ase3) // #51
atom(<  7.83,  -2.27,   0.00>, 0.30, rgb <0.58, 0.00, 0.58>, 0.0, ase3) // #52
atom(<  8.83,  -2.27,   0.00>, 0.33, rgb <0.26, 0.62, 0.69>, 0.0, ase3) // #53

// no constraints
