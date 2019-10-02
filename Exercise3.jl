img = imread("el-capitan.png")
imshow(img)
size(img) #reveals its a 360x640x4 matrix, rgb alpha

function partb(str)
    img = imread(str)
    imshow(img)
    r = img[:,:,1]
    g = img[:,:,2]
    b = img[:,:,3]
    #println("BUG BUG BUG")
    println("reset with git reset --mixed")
    return r, g, b;
end

r, g, b = partb("el-capitan.png")
image2 = zeros(360, 640, 3)
image2[:,:,1] =g;
image2[:,:,2] =b;
image2[:,:,3] =r;
figure(figsize=[10, 3])
subplot(1, 2, 1);
imshow(img);
axis("off")
title("Original el-capitan")
subplot(1, 2, 2);
imshow(image2);
title("Revised el-captain")
axis("off")


function rotateChannel(channel, numberpixUp)
    numberofRows = length(channel[:,1])
    returnChannel = zeros(typeof(channel[1]), length(channel[:,1]), length(channel[1,:]))
    for index = 1:length(channel[:,1]) #For each row in channel
    var = index+numberpixUp
        while var > numberofRows #adjusts illegal indices
            var = var - numberofRows
        end
        returnChannel[index,:] = channel[var,:]#Thus, only indices within real bounds are added
    end
    return returnChannel;
end



figure(figsize=[10, 3])
subplot(1, 2, 1);
imshow(img);
axis("off")
title("Original el-capitan")
image3 = zeros(360, 640, 3)
image3[:,:,1] =rotateChannel(r,180);
image3[:,:,2] =g;
image3[:,:,3] =b;
subplot(1, 2, 2);
imshow(image3);
title("Revised el-captain by 180 pixels of r")
axis("off")
