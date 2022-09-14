#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "1-res.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "k" font "Times, 20"
set ylabel "f_{k+n} - f_n, kHz" font "Times, 20"
set xrange [-0.4 : 4.4]
set yrange [-0.099 : 1.089]
plot 0.247 * x +0.002 linestyle 1, "../2/1.dat" with points linestyle 2 notitle
