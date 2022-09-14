#! /usr/bin/gnuplot
set terminal png size 1200,1000
set output "air.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 4 lc rgb "green" lw 4
set style line 5 lc rgb "purple" lw 4
set style line 6 lc rgb "orange" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "k" font "Times, 20"
set ylabel "L_{k+n}-L_n, мм" font "Times, 20"
set xrange [-0.4 : 4.4]
set yrange [-19.3 : 242.3]

set label 1 "3.0 kHz" at 3,180 rotate by 40 center tc ls 1
set label 2 "3.58 kHz" at 3.5 ,175 rotate by 40 center tc ls 4
set label 3 "4.0 kHz" at 3.5,156 rotate by 35 center tc ls 5
set label 4 "5.0 kHz" at 3,90 rotate by 34 center tc ls 6

plot 48.2 * x +0.4 linestyle 4, "air2.dat" with points linestyle 2 notitle,      \
     42.7 * x +0 linestyle 5, "air3.dat" with points linestyle 2 notitle,        \
     34.7 * x +0.2 linestyle 6, "air4.dat" with points linestyle 2 notitle,      \
     56.5 * x -0.166667 linestyle 1, "air.dat"  with points linestyle 2 notitle