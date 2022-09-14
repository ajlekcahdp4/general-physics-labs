#! /usr/bin/gnuplot
set terminal png size 1200,1000
set output "2.png"
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
set ylabel "f_{k+n}-f_n, kHz" font "Times, 20"
set xrange [-0.4 : 4.4]
set yrange [-0.101 : 1.111]

set label 1 "297 K" at 0.55,1.09 tc ls 1
set label 2 "308 K" at 0.55,1.05 tc ls 4
set label 3 "315 K" at 0.55,1.0  tc ls 5
set label 4 "323 K" at 0.55,0.95 tc ls 6

plot 0.247 * x +0.002 linestyle 1, "../2/1.dat" with points linestyle 2 notitle,          \
     0.252 * x -0.002 linestyle 4, "../2/2.dat" with points linestyle 2 notitle,          \
     0.253 * x +1.77636e-16 linestyle 5, "../2/3.dat" with points linestyle 2 notitle,    \
     0.256 * x +0.001 linestyle 6, "../2/4.dat" with points linestyle 2 notitle