close all;
global WLVERBOSE;
WLVERBOSE='No';

%% Chirp Signal
clear; clc; figure(1);

% Load Signal -------------------------------------------------------------
N = 1024;
f = MakeSignal('Chirps',N);
x = 1:N;

% Plot Signal -------------------------------------------------------------
subplot(3, 1, 1), plot(x, f);
axis tight;
title('Chirp Signal', 'FontSize', 14),xlabel('Time', 'FontSize', 14), ylabel('Amplitude', 'FontSize', 14)

% Plot STFT ---------------------------------------------------------------
subplot(3, 1, 2), WindowFT(f,50,1,'Gaussian');
title('Short Time Fourier Transform', 'FontSize', 14),xlabel('Time', 'FontSize', 14), ylabel('Frequency', 'FontSize', 14)

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
