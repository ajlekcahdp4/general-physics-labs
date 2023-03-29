#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/frnl.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "n" font "Times, 20"
set ylabel "2xi_n, mu m" font "Times, 20"
plot "data/frnl.txt" smooth csplines linestyle 1, \
"data/frnl.txt" with points linestyle 2 notitle