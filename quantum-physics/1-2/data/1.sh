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
set xlabel "1-cos\theta" font "Times, 20"
set ylabel "1/N" font "Times, 20"
set xrange [-0.15 : 1.65]
set yrange [-0.0005257 : 0.0039347]
plot 0.00243862 * x +2.35952e-05 linestyle 1, "data/1.txt" with points linestyle 2 notitle
