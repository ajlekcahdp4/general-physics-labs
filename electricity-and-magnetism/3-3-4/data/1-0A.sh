#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/1-0A.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "Im, mA" font "Times, 20"
set ylabel "U34, mV" font "Times, 20"
set xrange [0.094 : 2.206]
set yrange [0.05 : 0.41]
plot 0.183829 * x +0.0296347 linestyle 1, "data/1-0A.txt" with points linestyle 2 notitle