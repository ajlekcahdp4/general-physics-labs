#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/0-4A.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "Im, mA" font "Times, 20"
set ylabel "U34, mV" font "Times, 20"
set xrange [0.089 : 2.261]
set yrange [0.018 : 0.162]
plot 0.0736232 * x +0.011284 linestyle 1, "data/0-4A.txt" with points linestyle 2 notitle
