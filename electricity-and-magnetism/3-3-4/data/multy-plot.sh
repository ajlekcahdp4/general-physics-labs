#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "images/multy-plot.png"
set font "Times, 30"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4
set style line 3 lc rgb "green" lw 4
set style line 4 lc rgb "pink" lw 4
set style line 5 lc rgb "purple" lw 4
set style line 6 lc rgb "orange" lw 4
set style line 7 lc rgb "brown" lw 4
set style line 8 lc rgb "gray" lw 4
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "Im, mA" font "Times, 20"
set ylabel "U34, mV" font "Times, 20"
set xrange [0.094 : 2.206]
set yrange [0.00 : 0.41]
plot 0.183829 * x +0.0296347 linestyle 1 title "I = 1.0 mA",\
0.162696 * x +0.0324678 linestyle 2 title "I = 0.9 mA",\
0.141804 * x +0.0298357 linestyle 3 title "I = 0.8 mA",\
0.131163 * x +0.0188543 linestyle 4 title "I = 0.7 mA",\
0.109238 * x +0.0198912 linestyle 5 title "I = 0.6 mA",\
0.0892615 * x +0.0175515 linestyle 6 title "I = 0.5 mA",\
0.0736232 * x +0.011284 linestyle 7 title "I = 0.4 mA",\
0.0696038 * x +0.0246165 linestyle 8 title "I = 0,3 mA"