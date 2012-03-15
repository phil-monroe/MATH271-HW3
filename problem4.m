% Problem 4: Using WaveLab compute a multiresolution approximation of
% the image \Lena" as in the fle wt07fig23.m. Repeat the computions for
% the Haar wavelet (no second parameter required when calling the function
% (MakeONFilter) and the Coifet wavelet (with second parameter equal to 2
% when calling the function MakeONFilter).
clear; close all; clc;

%% Read Image
img = ReadImage('Lenna');
[n,J] = quadlength(img);
figure(1)
image(img)
colormap(gray(256));
title('Lenna Original', 'FontSize', 14)

L = 3;

%% MRA - Daubechies
qmf = MakeONFilter('Daubechies',8);

wc = FWT2_PO(img,L,qmf);
figure(2);clf
Display2dProjV(wc,L,qmf);


figure(3);clf
image(wc)
colormap(pink(256));
title('Lenna Daubechies WT', 'FontSize', 14)

%% MRA - Haar
qmf = MakeONFilter('Haar');
wc = FWT2_PO(img,L,qmf);
figure(4);clf
Display2dProjV(wc,L,qmf);


figure(5);clf
image(wc)
colormap(pink(256));
title('Lenna Haar WT', 'FontSize', 14)

%% MRA - Coiflet
qmf = MakeONFilter('Coiflet',2);
wc = FWT2_PO(img,L,qmf);
figure(6);clf
Display2dProjV(wc,L,qmf);


figure(7);clf
image(wc)
colormap(pink(256));
title('Lenna Coiflet WT', 'FontSize', 14)