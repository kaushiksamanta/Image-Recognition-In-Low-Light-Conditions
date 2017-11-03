function [image] = Pre_Processing(im)
%% image changed to gray
gray_image = rgb2gray(im);
%% appplied gamma correction
gamma_corrected = imadjust(gray_image,[],[],0.4);
%% Enhancing the contrast of an intensity image using histogram equalization.
% histrogram_equilization = histeq(gamma_corrected);
%% Noise Removal By Adaptive Filtering
noise_removal = wiener2(gamma_corrected,[5 5]);
%% Image reduction using Gaussian Pyramid
image = impyramid(noise_removal, 'reduce');
