close all;
global WLVERBOSE;
WLVERBOSE='No';

set(0, 'DefaultTextFontSize', 14)
set(0, 'DefaultTextFontWeight', 'bold')
%% Chirp Signal
clear; clc; figure(1);

% Load Signal -------------------------------------------------------------
N = 1024;
f = MakeSignal('Chirps',N);
x = 1:N;

% Plot Signal -------------------------------------------------------------
subplot(3, 1, 1), plot(x, f);
axis tight;
title('Chirp Signal'),xlabel('Time'), ylabel('Amplitude')

% Plot STFT ---------------------------------------------------------------
subplot(3, 1, 2), WindowFT(f,50,1,'Gaussian');
title('Short Time Fourier Transform'),xlabel('Time'), ylabel('Frequency')

% Plot CWT ----------------------------------------------------------------
subplot(3, 1, 3), cwt(f,1:32,'db8','plot'); 
title('Symlet CWT - sym8', 'FontSize', 14), xlabel('Time', 'FontSize', 14), ylabel('Scale', 'FontSize', 14)


%% Discontinuous Signal
clear; clc; figure(2);

% Load Signal -------------------------------------------------------------
f = ReadSignal('msignal');
x = 1:length(f);


% Compute STFT ------------------------------------------------------------

% Compute Continuous WT ---------------------------------------------------

% Plot --------------------------------------------------------------------
subplot(3, 1, 1), plot(x, f);
xlabel('Discontinuous Signal');
