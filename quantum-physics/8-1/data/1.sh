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
set xlabel "ln(T)" font "Times, 20"
set ylabel "ln(P)" font "Times, 20"
set xrange [6.7272 : 7.6248]
set yrange [2.0179 : 5.2831]
plot 3.58141 * x -21.9692 linestyle 1, "data/1.txt" with points linestyle 2 notitle
