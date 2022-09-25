#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/mod.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "m" font "Times, 20"
set ylabel "k" font "Times, 20"
set xrange [0.01 : 1.09]
set yrange [0.0075 : 0.5175]
plot 0.473726 * x +0.00149315 linestyle 1, "data/mod.txt" with points linestyle 2 notitle
