#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/H-low.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 2
set style line 3 lc rgb "black" lw 2
set style line 4 lc rgb "purple" lw 4 ps 2
set style line 5 lc rgb "green" lw 4
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "nu, Hz" font "Times, 20"
set ylabel "H1/H0" font "Times, 20"
plot "H-low.txt" with points linestyle 2 title "measured", "H-low-th.txt" with points linestyle 4 title "theoretical",\
 "H-low.txt" smooth bezier linestyle 1 title "measured", "H-low-th.txt" smooth bezier linestyle 5 title "theoretical"
