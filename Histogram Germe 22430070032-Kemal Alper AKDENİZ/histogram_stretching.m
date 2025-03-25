
%% RGB Görüntü Üzerinde Histogram Stretching

clc; clear; close all;

% Görüntüyü oku
img = imread('kemalalper.jpg');
img = im2double(img); % 0-1 aralığına ölçekle

% R, G, B kanallarını ayır
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

% Stretching fonksiyonu (manuel)
stretch_channel = @(channel) (channel - min(channel(:))) / (max(channel(:)) - min(channel(:)));

% Her kanalı ger
R_stretched = stretch_channel(R);
G_stretched = stretch_channel(G);
B_stretched = stretch_channel(B);

% Yeni görüntüyü oluştur
stretched_img = cat(3, R_stretched, G_stretched, B_stretched);

% Karşılaştırma için MATLAB imadjust kullanalım (her kanal ayrı)
R_adj = imadjust(R);
G_adj = imadjust(G);
B_adj = imadjust(B);
adjusted_img = cat(3, R_adj, G_adj, B_adj);

% Sonuçları göster
figure;
subplot(1,3,1); imshow(img); title('Orijinal Görüntü');
subplot(1,3,2); imshow(stretched_img); title('Histogram Stretching (Kendi Kodun)');
subplot(1,3,3); imshow(adjusted_img); title('imadjust ile Gerilmiş');

% Histogramları da göster (isteğe bağlı)
figure;
subplot(3,2,1); imhist(R); title('R - Orijinal');
subplot(3,2,2); imhist(R_stretched); title('R - Stretched');
subplot(3,2,3); imhist(G); title('G - Orijinal');
subplot(3,2,4); imhist(G_stretched); title('G - Stretched');
subplot(3,2,5); imhist(B); title('B - Orijinal');
subplot(3,2,6); imhist(B_stretched); title('B - Stretched');
