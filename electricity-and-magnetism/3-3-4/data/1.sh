#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/calibr_line.png"
set font "Times, 20"

set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2

set grids xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3

set xlabel "I, A" font "Times, 20"
set ylabel "B, T" font "Times, 20"

plot 0.516595 * x +0.162649 linestyle 1, "data/calibr_line.txt" with points linestyle 2 notitle