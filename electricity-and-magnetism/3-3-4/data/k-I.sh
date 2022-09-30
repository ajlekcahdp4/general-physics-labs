#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/k-I.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "I, mA" font "Times, 20"
set ylabel "k, mV/T" font "Times, 20"
set xrange [0.23 : 1.07]
set yrange [0.1145 : 0.3605]
plot 0.306905 * x +0.0250119 linestyle 1, "data/k-I.txt" with points linestyle 2 notitle
