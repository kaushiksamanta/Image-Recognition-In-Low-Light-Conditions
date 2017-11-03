%% Taking an image
clc;
clear all;
close all;
[fname path] = uigetfile('.jpg','Open a face as input for Training');
fname = strcat(path,fname);
im=imread(fname);

%% Pre Processing of image starts here
Processed_image = Pre_Processing(im);

%% Facial Features Extraction
[Bounding_Box_Face,Bounding_Box_Nose,Bounding_Box_Mouth,Bounding_Box_Eyes] = Feature_Extraction(Processed_image);
Bounding_Box_Face;
Bounding_Box_Nose;
Bounding_Box_Mouth;
Bounding_Box_Eyes;
% title('Input face');
% c=input('Enter the Class (Number from 1-10) ');

% %% Feature Extraction
% F = FeatureStatistical(im);
% try
%     load db;
%     F = [F c];
%     db = [db;F];
%     save db.mat db
% catch
%    db = [F c];
%    save db.mat db 
% end
