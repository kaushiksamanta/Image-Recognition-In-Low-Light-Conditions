function [Bounding_Box_Face,Bounding_Box_Nose,Bounding_Box_Mouth,Bounding_Box_Eyes] = Feature_Extraction(im)

%To detect Face
FaceDetect = vision.CascadeObjectDetector;

%Returns Bounding Box values based on number of objects
Bounding_Box_Face = step(FaceDetect,im);
figure,
imshow(im);
for i = 1:size(Bounding_Box_Face,1)
    rectangle('Position',Bounding_Box_Face(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
end
title('Face Detection');

%To detect Nose
NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',30);
Bounding_Box_Nose=step(NoseDetect,im);
figure,
imshow(im); 
for i = 1:size(Bounding_Box_Nose,1)
    rectangle('Position',Bounding_Box_Nose(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
end
title('Nose Detection');

%To detect Mouth
MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',300);
Bounding_Box_Mouth=step(MouthDetect,im);
figure,
imshow(im);
for i = 1:size(Bounding_Box_Mouth,1)
 rectangle('Position',Bounding_Box_Mouth(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','r');
end
title('Mouth Detection');

%To detect Eyes
EyeDetect = vision.CascadeObjectDetector('EyePairBig');
Bounding_Box_Eyes=step(EyeDetect,im);
figure,
imshow(im);
rectangle('Position',Bounding_Box_Eyes,'LineWidth',4,'LineStyle','-','EdgeColor','b');
title('Eyes Detection');
