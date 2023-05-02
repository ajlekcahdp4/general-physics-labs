#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/1840KHz.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "m" font "Times, 20"
set ylabel "x_m, \mu m" font "Times, 20"
set xrange [-0.4 : 4.4]
set yrange [77.6 : 1210.4]
plot 236.4 * x +168 linestyle 1, "data/1840KHz.txt" with points linestyle 2 notitle
