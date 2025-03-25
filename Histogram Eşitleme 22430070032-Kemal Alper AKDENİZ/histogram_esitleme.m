% histogram_esitleme.m

img = imread('kemalalper.jpg');
gray = rgb2gray(img);

[M, N] = size(gray);
total_pixels = M * N;

histogram = zeros(1, 256);
for i = 1:M
    for j = 1:N
        intensity = gray(i,j);
        histogram(intensity + 1) = histogram(intensity + 1) + 1;
    end
end

cdf = cumsum(histogram);
cdf_norm = cdf / total_pixels;

equalized = uint8(zeros(size(gray)));
for i = 1:M
    for j = 1:N
        equalized(i,j) = uint8(255 * cdf_norm(gray(i,j) + 1));
    end
end

equalized_builtin = histeq(gray);

figure;
subplot(1,3,1); imshow(gray); title('Orijinal Gri Görüntü');
subplot(1,3,2); imshow(equalized); title('Kendi Kodun');
subplot(1,3,3); imshow(equalized_builtin); title('histeq');

figure;
subplot(1,3,1); imhist(gray); title('Orijinal Histogram');
subplot(1,3,2); imhist(equalized); title('Kendi Histogram');
subplot(1,3,3); imhist(equalized_builtin); title('histeq Histogram');
