#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/1-d.png"
set font "Times, 30"

set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4
set style line 3 lc rgb "black" lw 4

set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3

set xlabel "x, cell" font "Times, 20"
set ylabel "y, cell" font "Times, 20"

set xrange [0 : 3.5]
set yrange [0 : 2]

plot "1.dat" with points linestyle 2 notitle, "1.dat" smooth acsplines linestyle 1 notitle