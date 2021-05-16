v = VideoReader('dataset/v_Biking_g04_c02.avi');
vid_frames = read(v);  %read all frames
clear v   %release it
save('v_Biking_g04_c02.mat', 'vid_frames');

%%%
v = VideoWriter('dataset/v_Biking_g04_c02.avi','MPEG-4'); %uses h264 encoding
v.Quality = 80; %video quality
open(v);
writeVideo(v,myDataMatrix);
close(v);

imshow(I)
%%

for j = 10:10:50;
    meas=zeros(512,512,28);
    for i = 1:60;
        image = imread("Hammer/"+j+"/compress_frame"+i+".jpg");
        image=rgb2gray(image);
        meas(:,:,i) = image;    
    end
    save("2cr_"+j+".mat",'meas')
end
%%

