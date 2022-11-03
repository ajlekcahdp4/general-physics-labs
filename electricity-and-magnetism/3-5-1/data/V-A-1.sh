#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/V-A-1.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set style line 4 lc rgb "green" lw 4
set style line 5 lc rgb "purple" ps 3
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "Vd, V" font "Times, 20"
set ylabel "Id, mA" font "Times, 20"
set xrange [23.64 : 32.76]
set yrange [1.06 : 5.14]
plot 46.0976 -2.67402 * x**1 +0.0400944 * x**2 linestyle 1 title "decreasing current", "data/V-A-1-down.txt" with points linestyle 2 title "decreasing current" ,\
    24.121 -1.12853 * x**1 +0.0131071 * x**2 linestyle 4 title "increasing current", "data/V-A-1-up.txt" with points linestyle 5 title "increasing current"
