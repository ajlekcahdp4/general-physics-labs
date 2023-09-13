#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/1.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "1-cos theta" font "Times, 20"
set ylabel "1/N" font "Times, 20"
plot "data/1.txt" with xyerrorbars, 0.00244694 * x +0.00171507 linestyle 1
