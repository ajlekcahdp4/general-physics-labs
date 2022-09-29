#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/0-7A.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "Im, mA" font "Times, 20"
set ylabel "U34, mV" font "Times, 20"
set xrange [0.093 : 2.217]
set yrange [0.028 : 0.292]
plot 0.131163 * x +0.0188543 linestyle 1, "data/0-7A.txt" with points linestyle 2 notitle