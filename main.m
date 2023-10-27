clear all
close all
clc;

%--------- Parameters Defination -----------

% ----- Serial Data Parameters ------
Data_BitRate = 200; % ----- Versus Hz -----

% ----- P.S. Parameters ------
Low_Freq = 1000; % ----- Versus Hz -----
High_Freq = Low_Freq * 5; % ----- Versus Hz -----
Sampling_Freq = 1000 * High_Freq; % ----- Versus Hz -----
Phase_Step = 2 * pi * High_Freq / Sampling_Freq; % ----- Versus Rad ----- % later initial on simulink

% ----- Sin Lookup Table Parameters ------
SamplePerDeg = 5; % ----- Versus num -----
global Sin_Signal_Samples;
Sin_Signal_Samples = 360 * SamplePerDeg; % ----- Versus num -----

% ----- Sin Lookup Table Value ------
Sin_Signal_Index = 0:Sin_Signal_Samples;
Sin_Signal_Time_Step = Sin_Signal_Index .* ((2 * pi) / Sin_Signal_Samples);
Sin_Signal = sin(Sin_Signal_Time_Step);
%plot(Sin_Signal_Time_Step, Sin_Signal);

