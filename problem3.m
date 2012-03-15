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
rwt = RWT(f, 8, 'Sombrero', 1, 4);
rwt = fliplr(rwt);
subplot(3, 1, 3), ImageRWT(rwt,'Individual','gray','log'); 
title('Symlet CWT - sym8', 'FontSize', 14), xlabel('Time', 'FontSize', 14), ylabel('Scale', 'FontSize', 14)


%% Discontinuous Signal
clear; clc; figure(2);

% Load Signal -------------------------------------------------------------
f = ReadSignal('msignal');
N = length(f);
x = 1:N;


% Plot Signal -------------------------------------------------------------
subplot(3, 1, 1), plot(x, f);
axis tight;
title('Chirp Signal', 'FontSize', 14),xlabel('Time', 'FontSize', 14), ylabel('Amplitude', 'FontSize', 14)

% Plot STFT ---------------------------------------------------------------
subplot(3, 1, 2), WindowFT(f,50,1,'Gaussian');
title('Short Time Fourier Transform', 'FontSize', 14),xlabel('Time', 'FontSize', 14), ylabel('Frequency', 'FontSize', 14)

% Plot CWT ----------------------------------------------------------------
subplot(3, 1, 3), cwt(f,1:32,'sym8','plot'); 
title('Symlet CWT - sym8', 'FontSize', 14), xlabel('Time', 'FontSize', 14), ylabel('Scale', 'FontSize', 14)
