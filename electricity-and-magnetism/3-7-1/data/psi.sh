#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/psi.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "nu, Hz" font "Times, 20"
set ylabel "psi, rad" font "Times, 20"
set xrange [20.25 : 1127.25]
set yrange [3.599 : 4.811]
plot 0.000910355 * x +3.86482 linestyle 1, "data/psi.txt" with points linestyle 2 notitle
