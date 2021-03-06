data = "4pms.dat"
figure = "4pms.eps"

set terminal postscript eps enhanced solid color
#set terminal png
#set terminal postscript eps enhanced solid color
#set terminal hp500c 300 tiff
set output figure 
set   autoscale                        # scale axes automatically

unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically

#set xtic rotate by -45 scale 0

set tmargin 1;
#set multiplot;
#set size 0.7,0.7;
#set size 1,1;
#set origin 0.0,0.5;

# first plot
set title "concurrency"
set xlabel "time (sec)"
set ylabel "number of evacuated VMs"
#set y2label "individual migration time (sec)"
#set y2tic auto
set ytics nomirror
#set y2tics
set tics out
set autoscale y
#set autoscale y2;
#set key title "migration speed 40MB/s"
#set key 20,1900
#set key left
set key right bottom
#set key right center
#set label "Yield Point" at 0.003,260
#set arrow from 0.0028,250 to 0.003,280
#set xr [0.0:(/nfs/vmanage/log/180/genscriptconcurrencyall+1).022]
set yr [0:]
#set y2r [0:]

#set xdata time
#set timefmt "%H:%M:%S"

#data using 2:($0+1) title '1VM' with linespoints, \
#data using 3:($0+1) title '2VMs' with linespoints, \
#data using 4:($0+1) title '4VMs' with linespoints, \
#data using 5:($0+1) title '6VMs' with linespoints, \
#data using 6:($0+1) title '8VMs' with linespoints, \

#plot data using 1:($0+1) title 'controller' with linespoints, \

plot data using 1:($0+1) title 'controller' with linespoints, \
data using 2:($0+1) title '1VM' with linespoints, \
data using 3:($0+1) title '2VMs' with linespoints, \
data using 4:($0+1) title '4VMs' with linespoints, \
data using 5:($0+1) title '8VMs' with lines lc rgb "black"

#data using 1:3 axis x1y2 title '20ms indiv' with linespoints lc rgb "black"

# second plot
#unset multiplot;

