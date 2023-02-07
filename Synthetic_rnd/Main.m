clear;clc;close all;
addpath([pwd '\functions']);
%% parameters
ca=1;
In.Mean=1e-04;
In.Stdev=0;
%definition of the buffer
In.xmax=50;
In.xmin=-50;
In.ymax=50;
In.ymin=-50;

%densities
connect_x=0.85;
connect_y=0.6;

%discretization
In.nx=50;
In.ny=50;

%% generate DFN
addpath([pwd '\functions']);

cum_length=(In.nx*In.ny)*((In.xmax-In.xmin)+(In.ymax-In.ymin));
In.p21=cum_length/(In.xmax-In.xmin)/(In.ymax-In.ymin);
In.cum_length=cum_length;

In.connect_x=connect_x;
In.connect_y=connect_y;


In.num=floor(cum_length/((In.ny*(In.xmax-In.xmin)+In.nx*(In.ymax-In.ymin))/(2*In.nx*In.ny)))+1;

% fracturenetwork=generate_lg_dfn_P21_connectivity(In);
fracturenetwork=generate_lg_dfn_anisotropy(In);
% fracturenetwork=generate_lg_dfn(In);

segments=fracturenetwork;
save('segments.txt',"segments","-ascii");

%% plot DFN
figure (1)
cla

for i=1:size(segments,1)
    plot([segments(i,1);segments(i,3)],[segments(i,2);segments(i,4)],'k');
    hold on;
end
axis equal
save([pwd '\segments.mat'],'segments');
