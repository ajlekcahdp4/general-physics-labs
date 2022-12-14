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
set xlabel "nu^2, Hz^2" font "Times, 20"
set ylabel "1/\xi^2" font "Times, 20"
set xrange [-2480.62 : 179162]
set yrange [2544.87 : 19691.1]
plot 0.0943847 * x +2769.02 linestyle 1, "data/2.txt" with points linestyle 2 notitle
