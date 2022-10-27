#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/4.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "\nu" font "Times, 20"
set ylabel "\xi" font "Times, 20"
set xrange [-1741.5 : 32656.5]
set yrange [-1.90473 : 31.1963]
plot 21.3629 -0.00225478 * x**1 +5.61621e-08 * x**2 linestyle 1, "data/4.dat" with points linestyle 2 notitle
