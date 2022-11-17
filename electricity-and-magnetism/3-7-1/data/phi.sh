#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/phi.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set style line 4 lc rgb "green" lw 1 
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "sqrt(nu)" font "Times, 20"
set ylabel "phi" font "Times, 20"
plot "phi.txt" smooth bezier linestyle 1 notitle, "phi.txt" with points linestyle 2 notitle, [0 : 15] 0.27 * x +0.00099 linestyle 4
