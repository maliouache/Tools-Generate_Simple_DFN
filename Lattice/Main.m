clc;clear;close all;
addpath([pwd '\Functions']);

%%parameters
In.xmin=-40;
In.xmax=40;
In.ymin=-40;
In.ymax=40;

In.nx=30;
In.ny=30;

In.Mean=0.0002;
In.Stdev=0;

%% generate the DFN
segments=generate_lg_dfn(In);
save('segments.txt',"segments","-ascii");
%% plot the DFN
figure (1)
cla
axis equal
for i=1:size(segments,1)
    plot([segments(i,1);segments(i,3)],[segments(i,2);segments(i,4)],'k');
    hold on;
end