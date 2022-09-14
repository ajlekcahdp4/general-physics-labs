#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "log/graph4.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "t" font "Times, 20"
set ylabel "ln(U)" font "Times, 20"
set xrange [-60.000000 : 660.000000]
set yrange [2.494092 : 2.902501]
plot -0.000574 * x +2.870013 linestyle 1, "4.dat" with points linestyle 2 notitle
