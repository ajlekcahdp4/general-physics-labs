#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/L.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "nu^2, Hz^2" font "Times, 20"
set ylabel "(Lmax - Lmin)/(L - Lmin)" font "Times, 20"
set xrange [-0.625 : 6.875]
set yrange [-0.1004 : 1.1044]
plot 0.0888353 * x +0.603109 linestyle 1, "data/L.txt" with points linestyle 2 notitle
