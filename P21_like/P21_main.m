clear;clc;
close all;
addpath([pwd '\functions']);
%% parameters
In.Mean=0.0003;
In.Stdev=0;
%% read dfn example
segments=load('segments_bristol');
segments=segments.segments;
[ p21,gridx ] = get_p21( segments , 'x' , 60);
[ p22,gridy ] = get_p21( segments , 'y' , 60);

figure (1)
plot(gridx,p21);
hold on
figure (2)
plot(gridy,p22);
hold on

In.p21=p21;
In.p22=p22;

%definition of the buffer
In.xmax=max([segments(:,1);segments(:,3)]);
In.xmin=min([segments(:,1);segments(:,3)]);
In.ymax=max([segments(:,2);segments(:,4)]);
In.ymin=min([segments(:,2);segments(:,4)]);
%definition of the model
In.Xmax=max([segments(:,1);segments(:,3)]);
In.Xmin=min([segments(:,1);segments(:,3)]);
In.Ymax=max([segments(:,2);segments(:,4)]);
In.Ymin=min([segments(:,2);segments(:,4)]);

In.nx=length(p21);
In.ny=length(p22);
%% generate the new dfn
segments_new=generate_lg_dfn_P21(In);

[ p21,gridx ] = get_p21( segments_new , 'x' , 60);
[ p22,gridy ] = get_p21( segments_new , 'y' , 60);


%% plot DFN
segments=segments_new;
figure (3)
cla

for i=1:size(segments,1)
    plot([segments(i,1);segments(i,3)],[segments(i,2);segments(i,4)],'k');
    hold on;
end
axis equal
save([pwd '\segments.mat'],'segments');
save('segments.txt',"segments","-ascii");
figure (1)
plot(gridx,p21);
hold on
figure (2)
plot(gridy,p22);
hold on