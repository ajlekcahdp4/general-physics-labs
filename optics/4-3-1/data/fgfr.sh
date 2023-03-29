#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/fgfr.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "n" font "Times, 20"
set ylabel "x_n, mm" font "Times, 20"
set xrange [0.6 : 5.4]
set yrange [-0.06 : 0.66]
plot 0.152 * x -0.168 linestyle 1, "data/fgfr.txt" with points linestyle 2 notitle
