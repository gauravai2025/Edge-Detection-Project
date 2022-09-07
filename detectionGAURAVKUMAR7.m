G=webcam;% webcam access the camera of the system

while true
x=G.snapshot; % snapshots take image from camera
 imshow(x);

a=rgb2gray(x); % converting color image into gray
subplot(1,2,1);
imshow(x);

title('Original Image','color','b'); % giving title to image
w=edge(a,'canny',[],9);  %The edge function calculates the gradient 
subplot(1,2,2);         
% gradient of an image is calculated by using the derivative of a Gaussian filter

imshow(w);
title('Canny Operation','color','r');
end