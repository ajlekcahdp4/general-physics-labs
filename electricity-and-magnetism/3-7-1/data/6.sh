#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/6.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "\nu, Hz" font "Times, 20"
set ylabel "L, \muH" font "Times, 20"
set xrange [190 : 2710]
set yrange [2925 : 4425]
plot 4885.31 -2.13234 * x**1 +0.000574913 * x**2 linestyle 1, "data/6.txt" with points linestyle 2 notitle
