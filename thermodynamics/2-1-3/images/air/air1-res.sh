#! /usr/bin/gnuplot
set terminal postscript eps enhanced color solid
set output "air1-res.ps"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "k" font "Times, 20"
set ylabel "L_{k+n}-L_n" font "Times, 20"
set xrange [-0.2 : 2.2]
set yrange [-11.3 : 124.3]
plot 56.5 * x -0.166667 linestyle 1, "../air.dat" with points linestyle 2 notitle
