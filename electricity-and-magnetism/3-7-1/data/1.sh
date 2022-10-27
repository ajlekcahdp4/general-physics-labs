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
set xlabel "\nu, Hz" font "Times, 20"
set ylabel "\xi" font "Times, 20"
set xrange [13.5 : 121.5]
set yrange [0.0155 : 0.0191]
plot -3.37374e-05 * x +0.0197773 linestyle 1, "data/1.dat" with points linestyle 2 notitle
