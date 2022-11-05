#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/V-A-1.png"
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
plot -0.3978 * x +14.1089  linestyle 1 title "increasing current", "V-A-1-down.txt" with points linestyle 2 title "decreasing current" ,\
    -0.3405 * x +12.4518 linestyle 4 title "decreasing current", "V-A-1-up.txt" with points linestyle 5 title "increasing current"
