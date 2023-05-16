#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/sin.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "lambda" font "Times, 20"
set ylabel "sin(phi)" font "Times, 20"
set xrange [421.7 : 593.3]
set yrange [0.21 : 0.294]
plot 0.000490724 * x +0.00350881 linestyle 1, "data/sin.txt" with points linestyle 2 notitle
