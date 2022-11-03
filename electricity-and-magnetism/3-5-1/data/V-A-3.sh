#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/V-A-3.png"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "V3, V" font "Times, 20"
set ylabel "I3, V" font "Times, 20"
plot "V-A-3.txt" with points linestyle 2 notitle, "V-A-3.txt" smooth acsplines linestyle 1 notitle
