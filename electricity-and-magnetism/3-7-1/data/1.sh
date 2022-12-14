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
set xlabel "\nu^2, Hz^2" font "Times, 20"
set ylabel "1/\Xi^2" font "Times, 20"
set xrange [-708.75 : 13871.2]
set yrange [2713.26 : 4107.15]
plot 0.0959457 * x +2783.71 linestyle 1, "data/1.txt" with points linestyle 2 notitle
