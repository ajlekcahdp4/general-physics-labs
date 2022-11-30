#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/d.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "X" font "Times, 20"
set ylabel "Y" font "Times, 20"
set xrange [4.17 : 14.13]
set yrange [0.41 : 5.09]
plot 0.485899 * x -1.93531 linestyle 1, "data/d.txt" with points linestyle 2 notitle
