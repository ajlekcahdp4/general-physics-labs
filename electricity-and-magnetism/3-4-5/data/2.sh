#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/2-d.png"
set font "Times, 30"

set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4
set style line 3 lc rgb "black" lw 4

set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3

set xlabel "x, cell" font "Times, 20"
set ylabel "y, cell" font "Times, 20"

set xrange [0.5 : 2.4]
set yrange [1 : 2]

plot "2.dat" with points linestyle 2 notitle, "2.dat" smooth mcsplines linestyle 1 notitle