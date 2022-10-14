#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/3-d.png"
set font "Times, 30"

set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4
set style line 3 lc rgb "black" lw 4

set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3

set xlabel "x, cell" font "Times, 20"
set ylabel "y, cell" font "Times, 20"

set xrange [0.35 : 4.7]
set yrange [0.35 : 3.7]

plot "3.dat" with points linestyle 2 notitle, "3.dat" smooth csplines linestyle 1 notitle