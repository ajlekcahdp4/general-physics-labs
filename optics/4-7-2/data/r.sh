#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/r.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "m" font "Times, 20"
set ylabel "r^2" font "Times, 20"
set xrange [0.5 : 6.5]
set yrange [4.067 : 56.183]
plot 8.72771 * x +0.941333 linestyle 1, "data/r.txt" with points linestyle 2 notitle
