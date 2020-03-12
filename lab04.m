img = im2double(imread('lena.jpg'));
ratio = 0.2;
[low_pass_img, high_pass_img] = separate_frequency(img, ratio);
%imwrite(low_pass_img, 'lena_low_0.1.jpg');
%figure, imshow(low_pass_img);
%imwrite(high_pass_img + 0.5, 'lena_high_0.1.jpg');
%figure, imshow(high_pass_img);
imwrite(low_pass_img, 'lena_low_0.2.jpg');
figure, imshow(low_pass_img);
imwrite(high_pass_img + 0.5, 'lena_high_0.2.jpg');
figure, imshow(high_pass_img);

image1 = 'marilyn.jpg';
image2 = 'einstein.jpg';
img1 = im2double(imread(image1));
img2 = im2double(imread(image2));

%ratio = 0.15;
second_ratio = 0.2;
%hy_img1 = hybrid_image(img1, img2, ratio);
hy_img2 = hybrid_image(img1, img2, second_ratio);
%figure, imshow(hy_img1);
%imwrite(hy_img1, 'hybrid_1.jpg');
figure, imshow(hy_img2);
imwrite(hy_img2, 'hybrid_2.jpg');