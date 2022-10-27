#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/2.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "\nu" font "Times, 20"
set ylabel "\xi" font "Times, 20"
set xrange [20.25 : 1127.25]
set yrange [0.00182 : 0.01718]
plot 0.0213556 -5.63134e-05 * x**1 +6.43938e-08 * x**2 -2.62353e-11 * x**3 linestyle 1, "data/2.dat" with points linestyle 2 notitle
