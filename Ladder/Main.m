clc;clear;close all;
addpath([pwd '\Functions']);

%% parameters
In.xmin=0;
In.xmax=100;
In.ymin=0;
In.ymax=100;

In.nx=20;
In.ny=20;

In.Mean=0.0002;
In.Stdev=0;

%% generate the DFN
segments=generate_lg_dfn_ladder(In);
save('segments.txt',"segments","-ascii");
%% plot the DFN
figure (1)
cla
axis equal
for i=1:size(segments,1)
    plot([segments(i,1);segments(i,3)],[segments(i,2);segments(i,4)],'k');
    hold on;
end