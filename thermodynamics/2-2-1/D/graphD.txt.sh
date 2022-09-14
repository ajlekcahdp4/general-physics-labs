#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "D/graphD.txt.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "1/P, 1/Па" font "Times, 20"
set ylabel "D, м^2/c" font "Times, 20"
set xrange [0.000033 : 0.000202]
set yrange [0.000256 : 0.001319]
plot 6.293630 * x +0.000054 linestyle 1, "D.dat" with points linestyle 2 notitle
