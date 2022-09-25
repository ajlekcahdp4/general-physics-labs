#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/dnu_tau.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "1/t, 10^{3} 1/c" font "Times, 20"
set ylabel "d nu, kHz" font "Times, 20"
set xrange [3 : 27]
set yrange [3 : 27]
plot 0.998877 * x -0.0935245 linestyle 1, "data/dnu_tau.txt" with points linestyle 2 notitle
