::THIS FILE HAS BEEN DISCONTINUED
::dta fighting board display
mode 1000
@echo off
color 0f
cls

:map
set nred= 5
set nblu= 5
set ynterr= No
set specials= Normal
set gametype= 1v1
echo  ..a b c d e f g h i j k l m n o   :   UNIT
echo  ... . . . . . . . . . . . . . .   :  LOADOUT
echo  1.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   red foot soldier = %nred%
echo  2.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   blue foot soldier = %nblu%
echo  3.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   %ynterr% Terrain
echo  4.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   %specials%
echo  5.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   %gametype%
echo  6.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   
echo  7.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   
echo  8.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   
echo  9.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   
echo 10.%a1% %a2% %a3% %a4% %a5% %a6% %a7% %a8% %a9% %a10%   :   
pause
::a whole lot of variables
:resetvalues
set a1= 0
set a2= 0
set a3= 0
set a4= 0
set a5= 0
set a6= 0
set a7= 0
set a8= 0
set a9= 0
set a10= 0
set b1= 0
set b2= 0
set b3= 0
set b4= 0
set b5= 0
set b6= 0
set b7= 0
set b8= 0
set b9= 0
set b10= 0
set c1= 0
set c2= 0
set c3= 0
set c4= 0
set c5= 0
set c6= 0
set c7= 0
set c8= 0
set c9= 0
set c10= 0
set d1= 0
set d2= 0
set d3= 0
set d4= 0
set d5= 0
set d6= 0
set d7= 0
set d8= 0
set d9= 0
set d10=
set e1= 0
set e2= 0
set e3= 0
set e4= 0
set e5= 0
set e6= 0
set e7= 0
set e8= 0
set e9= 0
set e10= 0
set f1= 0
set f2= 0
set f3= 0
set f4= 0
set f5= 0
set f6= 0
set f7= 0
set f8= 0
set f9= 0
set f10= 0
set g1= 0
set g2= 0
set g3= 0
set g4= 0
set g5= 0
set g6= 0
set g7= 0
set g8= 0
set g9= 0
set g10= 0
set h1= 0
set h2= 0
set h3= 0
set h4= 0
set h5= 0
set h6= 0
set h7= 0
set h8= 0
set h9= 0
set h10= 0
set i1= 0
set i2= 0
set i3= 0
set i4= 0
set i5= 0
set i6= 0
set i7= 0
set i8= 0
set i9= 0
set i10= 0
set j1= 0
set j2= 0
set j3= 0
set j4= 0
set j5= 0
set j6= 0
set j7= 0
set j8= 0
set j9= 0
set j10= 0
set k1= 0
set k2= 0
set k3= 0
set k4= 0
set k5= 0
set k6= 0
set k7= 0
set k8= 0
set k9= 0
set k10= 0
set l1= 0
set l2= 0
set l3= 0
set l4= 0
set l5= 0
set l6= 0
set l7= 0
set l8= 0
set l9= 0
set l10= 0
set m1= 0
set m2= 0
set m3= 0
set m4= 0
set m5= 0
set m6= 0
set m7= 0
set m8= 0
set m9= 0
set m10= 0
set n1= 0
set n2= 0
set n3= 0
set n4= 0
set n5= 0
set n6= 0
set n7= 0
set n8= 0
set n9= 0
set n10= 0
set o1= 0
set o2= 0
set o3= 0
set o4= 0
set o5= 0
set o6= 0
set o7= 0
set o8= 0
set o9= 0
set o10= 0
cls
goto map
:soldier
echo 10 hp
echo 5 attack
