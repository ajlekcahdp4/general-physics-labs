#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/dnu_frep.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "f_rep, kHz" font "Times, 20"
set ylabel "d nu, kHz" font "Times, 20"
set xrange [0.05 : 5.45]
set yrange [0.05 : 5.45]
plot 1 * x linestyle 1, "data/dnu_frep.txt" with points linestyle 2 notitle
