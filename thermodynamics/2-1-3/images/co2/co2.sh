#! /usr/bin/gnuplot
set terminal png size 1200,1000
set output "co2.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 4 lc rgb "green" lw 4
set style line 5 lc rgb "purple" lw 4
set style line 6 lc rgb "orange" lw 4
set style line 7 lc rgb "grey" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "k" font "Times, 20"
set ylabel "L_{k+n}-L_n, мм" font "Times, 20"
set xrange [-0.4 : 4.4]
set yrange [-19.3 : 242.3]

set label 1 "1.0 kHz" at 1.2,180 rotate by 70 center tc ls 1
set label 2 "2.0 kHz" at 2.5 ,190 rotate by 55 center tc ls 4
set label 3 "2.5 kHz" at 3.4,205 rotate by 40 center tc ls 5
set label 4 "3.1 kHz" at 3.5,180 rotate by 36 center tc ls 6
set label 5 "3.5 kHz" at 3.5,140 rotate by 30 center tc ls 7

plot 135 * x +0 linestyle 1, "co2-1.dat" with points linestyle 2 notitle,      \
     70 * x +0 linestyle 4, "co2-2.dat" with points linestyle 2 notitle,        \
     58.2 * x -0.8 linestyle 5, "co2-3.dat" with points linestyle 2 notitle,      \
     49.3 * x -3 linestyle 6, "co2-4.dat" with points linestyle 2 notitle,        \
     41.8 * x -0.6 linestyle 7, "co2-5.dat" with points linestyle 2 notitle