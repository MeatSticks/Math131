img = im2double(imread('lena.jpg'));


sigma = 2.0;
hsize = 7;
scale = 5;

I = img;

for s = 1 : scale
    
    H = fspecial('gaussian', hsize, sigma);
    
    gauss_img = imfilter(I, H);

    imwrite(I, sprintf('Gaussian_scaled%d.jpg', s));
    
    %figure, imshow(gauss_img);
    
    % Down
   I = imresize(I,0.5);
    
    
end

I = img;

for s = 1 : scale
    
    H = fspecial('gaussian', hsize, sigma);
    
    lap_img = imfilter(I, H);
    
    
    I = lap_img - I + 0.5;
    
    imwrite(I, sprintf('Laplacian_scaled%d.jpg', s));
    
    %figure, imshow(lap_img);
   % Down
   I = imresize(I,0.5);

end

threshold = 25;

img = im2double(imread('einstein1.jpg'));
template = im2double(imread('template.jpg'));
[output, match] = template_matching_SSD(img, template, threshold);
imwrite(match, sprintf('ssd_1.jpg'));
%figure, imshow(match);

threshold = 36;
img = im2double(imread('einstein2.jpg'));
template = im2double(imread('template.jpg'));
[output, match] = template_matching_SSD(img, template, threshold);
imwrite(match, sprintf('ssd_2.jpg'));
%figure, imshow(match);

threshold = 0.5;

img = im2double(imread('einstein1.jpg'));
template = im2double(imread('template.jpg'));
[output, match] = template_matching_normcorr(img, template, threshold);
imwrite(match, sprintf('normcorr_1.jpg'));
%figure, imshow(match);

threshold = 0.5;

img = im2double(imread('einstein1.jpg'));
template = im2double(imread('template.jpg'));
[output, match] = template_matching_normcorr(img, template, threshold);
imwrite(match, sprintf('normcorr_2.jpg'));
figure, imshow(match);
