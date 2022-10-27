#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/5.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "\nu" font "Times, 20"
set ylabel "\psi" font "Times, 20"
set xrange [-1962 : 35082]
set yrange [4.259 : 9.671]
plot 0.000131709 * x +4.55402 linestyle 1, "data/5.txt" with points linestyle 2 notitle
