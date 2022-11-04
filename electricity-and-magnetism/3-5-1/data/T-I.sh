#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/T-I.png"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "Id, mA" font "Times, 20"
set ylabel "Te, K" font "Times, 20"
plot "T-I.txt" with points linestyle 2 notitle, "T-I.txt" smooth csplines linestyle 1 notitle
