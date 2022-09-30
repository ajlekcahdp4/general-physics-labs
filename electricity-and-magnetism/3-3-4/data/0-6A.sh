#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/0-6A.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "B, T" font "Times, 20"
set ylabel "U34, mV" font "Times, 20"
set xrange [0.115 : 1.255]
set yrange [0.032 : 0.248]
plot 0.203969 * x -0.00988582 linestyle 1, "data/0-6A.txt" with points linestyle 2 notitle
