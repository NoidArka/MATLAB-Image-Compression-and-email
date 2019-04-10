clc
clear all;
close all;

imgpath = input('Image Path (Put it in single quotes): ');
original = imread(imgpath);
c = input('Percent Compression: ');
compressed = imresize(imresize(original,(100-c)/100),100/(100-c));
imwrite(compressed,'Compressed.jpg','quality',100);
email = input('E-mail (Put it in single quotes): ');
sendmail(email,'Compressed', 'Please open the Attachment provided.', 'INSERT OUTPUT FILE (Compressed.jpg) PATH');
