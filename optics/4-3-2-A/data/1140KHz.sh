#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/1140KHz.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "m" font "Times, 20"
set ylabel "x_m, \mu m" font "Times, 20"
set xrange [-0.6 : 6.6]
set yrange [90.6 : 1235.4]
plot 154.643 * x +164.357 linestyle 1, "data/1140KHz.txt" with points linestyle 2 notitle
