#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "data/T-T-res.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "Tmes, 10^5 s" font "Times, 20"
set ylabel "Tth, 10^5 s" font "Times, 20"
set xrange [12.97 : 237.73]
set yrange [14.49 : 247.41]
plot 1.04867 * x -0.137263 linestyle 1, "data/T-T.txt" with points linestyle 2 notitle
